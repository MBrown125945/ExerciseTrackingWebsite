using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseTrackingWebsite
{
    public partial class ClientMaster : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                if (Session["role"].Equals(null))
                {
                    //setting appropriate visibilities of buttons based on the role of the user - in this case ("") where the role is empty, the client login button is set
                    //to visible and the client logout and client profile buttons are set to not visible.

                    navBtnClientLogin.Visible = true; //client login button

                    navBtnClientLogout.Visible = false; //client logout button
                    navBtnClientProfile.Visible = false; //client profile button
                    
                }
                else if (Session["role"].Equals("client"))
                {
                    navBtnClientLogin.Visible = false; //client login button

                    navBtnClientLogout.Visible = true; //client logout button
                    navBtnClientProfile.Visible = true; //client profile button
                    navBtnExerciseJournal.Visible = true; //client exercise journal button
                    navBtnStartExercise.Visible = true; //start exercise button

                    
                }
                else if (Session["role"].Equals("admin"))
                {
                    btnAdminLogin.Visible = false;
                    btnAdminTrainerList.Visible = true;
                    btnAdminAddExercise.Visible = true;
                    btnAdminVerifyTrainer.Visible = true;

                    navBtnClientLogin.Visible = false;
                    navBtnExerciseJournal.Visible = false;
                    navBtnStartExercise.Visible = false;

                    navBtnClientLogout.Visible = true;
                }
                else if (Session["role"].Equals("trainer"))
                {

                }
                
            }
            catch (Exception ex)
            {

            }

        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {

        }

        protected void LinkButton6_Click(object sender, EventArgs e)
        {

        }

        //Exercise navButton
        protected void NavBtnStartExercise_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientExercisePage.aspx");
        }

        //journal navButton
        protected void NavBtnJournal_Click(object sender, EventArgs e)
        {
            Response.Redirect("ClientExerciseJournalPage.aspx");
        }

        protected void navBtnClientLogout_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('Logout Successful, returning to home page');</script>");
            Session["client_id"] = "";
            Session["email"] = "";
            Session["first_name"] = "";
            Session["surname"] = "";
            Session["dob"] = "";
            Session["role"] = "";
            Session["journal_id"] = "";
            Response.Redirect("ClientHomePage.aspx");
        }

        /*
         * Trainer button click events
         */
        protected void btnTrainerLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("TrainerLoginPage.aspx");
        }

        protected void btnTrainerPrescribeRoutine_Click(object sender, EventArgs e)
        {

        }

        protected void btnTrainerClientList_Click(object sender, EventArgs e)
        {

        }

        /*
         * Admin button click events
         */
        protected void btnAdminLogin_CLick(object sender, EventArgs e)
        {
            Response.Redirect("AdminLoginPage.aspx");
        }

        protected void btnAdminVerifyTrainer_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdminAddExercise_Click(object sender, EventArgs e)
        {

        }

        protected void btnAdminTrainerList_CLick(object sender, EventArgs e)
        {

        }

        

        
    }
}
