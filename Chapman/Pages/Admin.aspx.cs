using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Pages
{
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Application.Lock();

                int count = 0;
                int totalCount = 0;
                if (Application["OnlineUsers"] != null)
                {
                    count = (int)Application["OnlineUsers"];
                }

                count++;
                Application["OnlineUsers"] = count;

                Application["TotalVisitors"] = 0;
                if (Application["TotalVisitors"] != null)
                {
                    Application["TotalVisitors"] = (int)Application["TotalVisitors"] + count;
                    totalCount = (int)Application["TotalVisitors"];
                }

                onlineUsers.Text = " " + count.ToString();
                totalVisitors.Text = "" + totalCount.ToString();

                Application.UnLock();
            }
        }
    }
}