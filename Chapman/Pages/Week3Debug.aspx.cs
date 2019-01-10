using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Pages
{
    public partial class Week3Debug : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int myResults;
            DoCount();
            myResults = DoCount();

            results.Text = "Your result was " + myResults;
        }

        public int DoCount()
        {
            int result = 0;

            for (int i = 0; i < 20; i++)
            {
                result++;
            }

            return result;
        }
    }
}

