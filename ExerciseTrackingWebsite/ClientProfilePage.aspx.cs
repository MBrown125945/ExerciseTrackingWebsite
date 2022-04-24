using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseTrackingWebsite
{
    public partial class WebForm9 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals("client"))
                {
                    //populating profile textboxes with database data
                    TextBox5.Text = Session["username"].ToString();
                    TextBox4.Text = Session["email"].ToString();
                    TextBox1.Text = Session["first_name"].ToString();
                    TextBox2.Text = Session["surname"].ToString();
                    TextBox3.Text = Session["dob"].ToString();
                    
                }
            }
            catch (Exception ex)
            {
                
            }
            
        }
    }
}