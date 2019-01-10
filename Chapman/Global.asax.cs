using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;


namespace Chapman
{
    public class Global : HttpApplication
    {
   

        void Application_Start(object sender, EventArgs e)
        {


            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);


        }

        public void Session_Start(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["ChapmanSQL"].ConnectionString;
            SqlConnection myConnection = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("insertLogSessionStart", myConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@customerid", null);
            cmd.Parameters.AddWithValue("@authuser", Request.ServerVariables["AUTH_USER"]);
            cmd.Parameters.AddWithValue("@authpassword", Request.ServerVariables["AUTH_PASSWORD"]);
            cmd.Parameters.AddWithValue("@ipddress", Request.ServerVariables["REMOTE_ADDR"]);
            string sessionIDModified = HttpContext.Current.Session.SessionID + "";
            cmd.Parameters.AddWithValue("@sessionid", sessionIDModified);
            cmd.Parameters.AddWithValue("@datevisitbegin", DateTime.Now.ToString());
            cmd.Parameters.AddWithValue("@datevisitended", null);
            cmd.Parameters.AddWithValue("@browser", Request.Browser.Browser);
            cmd.Parameters.AddWithValue("@browserversion", Request.Browser.Version);
            cmd.Parameters.AddWithValue("@useragent", Request.ServerVariables["HTTP_USER_AGENT"]);
            cmd.Parameters.AddWithValue("@platformname", Request.Browser.Platform);
            cmd.Parameters.AddWithValue("@supportcookies", Request.Browser.Cookies.ToString());
            cmd.Parameters.AddWithValue("@inputtype", Request.Browser.InputType.ToString());
            cmd.Parameters.AddWithValue("@displayheight", Request.Browser.ScreenPixelsHeight.ToString());
            cmd.Parameters.AddWithValue("@displaywidth", Request.Browser.ScreenPixelsWidth.ToString());
            cmd.Parameters.AddWithValue("@displaybitsperpixel", Request.Browser.ScreenBitDepth.ToString());
            cmd.Parameters.AddWithValue("@mobiledevice", Request.Browser.IsMobileDevice.ToString());
            cmd.Parameters.AddWithValue("@mobilemanufacturer", Request.Browser.MobileDeviceManufacturer.ToString());
            cmd.Parameters.AddWithValue("@mobilemodel", Request.Browser.MobileDeviceModel.ToString());
            cmd.Parameters.AddWithValue("@pathinfo", Request.ServerVariables["PATH_INFO"]);
            cmd.Parameters.AddWithValue("@firstpage", Request.ServerVariables["SCRIPT_NAME"]);
            cmd.Parameters.AddWithValue("@querystring", Request.ServerVariables["QUERY_STRING"]);
            if (Request.Cookies == null)
            {
                cmd.Parameters.AddWithValue("@cookie", null);
            }
            else
            {
                HttpCookieCollection MyCookieColl = Request.Cookies;
                HttpCookie MyCookie;
                string mycookielist = "";
                String[] AllCookieKeys = MyCookieColl.AllKeys;
                for (int i = 0; i < AllCookieKeys.Length; i++)
                {
                    MyCookie = MyCookieColl[AllCookieKeys[i]];
                    mycookielist += "Cookie: " + MyCookie.Name + ";";
                    mycookielist += "Secure: " + MyCookie.Secure + ";";
                    String[] MyCookieValues = MyCookie.Values.AllKeys;
                    //Loop through cookie Value collection and print all values.
                    for (int j = 0; j < MyCookieValues.Length; j++)
                    {
                        mycookielist += "Value: " + j + ": " + Server.HtmlEncode(MyCookieValues[j]) + ";";
                    }
                }
                cmd.Parameters.AddWithValue("@cookie", mycookielist);
            }
            cmd.Parameters.AddWithValue("@httpcookie", Request.ServerVariables["HTTP_COOKIE"]);
            cmd.Parameters.AddWithValue("@supportjavascript", Request.ServerVariables["ALL_HTTP"]);
            if (Request.ServerVariables[" "] == null)
            {
                cmd.Parameters.AddWithValue("@referrer", null);
            }
            else
            {
                cmd.Parameters.AddWithValue("@referrer", Request.ServerVariables["HTTP_REFERER"]);
            }

            try
            {
                myConnection.Open();
                cmd.ExecuteNonQuery();
                myConnection.Close();
            }
            catch (Exception err)
            {
                Debug.WriteLine("Error with my connection open for session start: " + err.Message);
            }
            finally
            {
                myConnection.Close();
            }
        }

        public void Session_End(object sender, EventArgs e)
        {
            string connectionString = WebConfigurationManager.ConnectionStrings["ChapmanSQL"].ConnectionString;
            SqlConnection myConnection = new SqlConnection(connectionString);

            SqlCommand cmd = new SqlCommand("UpdateLogSessionEnd", myConnection);
            cmd.CommandType = System.Data.CommandType.StoredProcedure;

            cmd.Parameters.AddWithValue("@logid", Session["LogID"]);
            cmd.Parameters.AddWithValue("@customerid", Request.ServerVariables["AUTH_USER"]);
            cmd.Parameters.AddWithValue("@sessionid", Session.SessionID);
            cmd.Parameters.AddWithValue("@datevisitended", DateTime.Now.ToString());


            try
            {

                myConnection.Open();
                cmd.ExecuteNonQuery();
                myConnection.Close();
            }
            catch (Exception err)
            {
                 
            }
            finally
            {
                myConnection.Close();
            }
        }
    }
}