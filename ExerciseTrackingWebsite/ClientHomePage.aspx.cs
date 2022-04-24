using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseTrackingWebsite
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void Button5_Click(object sender, EventArgs e)
        {

        }

        protected void btnStartExercise_Click(object sender, EventArgs e)
        {
            if (Session["role"] == null)
            {
                Response.Write("<script>alert('Please login before Starting an exercise');</script>");
            }
            else if (Session["role"] == "trainer" || Session["role"] == "admin")
            {
                Response.Write("<script>alert('Please login as a client before Starting an exercise');</script>");
            }
            else
            {
                Response.Redirect("ClientExercisePage.aspx");
            }
        }

        protected void btnExerciseJournal_Click(object sender, EventArgs e)
        {
            if(Session["role"] == null)
            {
                Response.Write("<script>alert('Please login before viewing exercise journal');</script>");
            }
            else if (Session["role"] == "trainer" || Session["role"] == "admin")
            {
                Response.Write("<script>alert('Please login as a client before viewing exercise journal');</script>");
            }
            else
            {
                Response.Redirect("ClientExerciseJournalPage.aspx");
            }
            
        }

        protected void btnExerciseStats_Click(object sender, EventArgs e)
        {

        }
    }
}