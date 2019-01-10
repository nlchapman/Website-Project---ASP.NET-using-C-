using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Chapman.Pages
{
    public partial class Week4Ajax : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                
            }
        }

        protected void register_Click(object sender, EventArgs e)
        {
            registerComplete.Text = "Your e-mail has been added to the list!  Thanks for registering!";
        }
    }
}