using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Database
{
    public partial class week8chart : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {

                Chart1.ChartAreas["ChartArea1"].AxisX.Title = "Products";
                Chart1.ChartAreas["ChartArea1"].AxisY.Title = "Price";

                Chart2.ChartAreas["ChartArea2"].AxisX.Title = "States";
                Chart2.ChartAreas["ChartArea2"].AxisY.Title = "Number of Customers";

                Chart3.ChartAreas["ChartArea3"].AxisX.Title = "Products Purchased";
                Chart3.ChartAreas["ChartArea3"].AxisY.Title = "Total Cost of Order";

                Chart4.ChartAreas["ChartArea4"].AxisX.Title = "Product";
                Chart4.ChartAreas["ChartArea4"].AxisY.Title = "Profit Amount";
            }
        }
    }
}