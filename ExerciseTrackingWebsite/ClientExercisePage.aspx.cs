using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ExerciseTrackingWebsite
{

    /*
     * Most things currently hardcoded and do not follow the current desired funcitonality, for instance -
     *  -checkSessionExists currently checks for a hardcoded session_id
     *  -checking if the session exists currently does nothing even when applied to the add exercise event
     */

    public partial class WebForm2 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Add exercise click event
        protected void btnAddExercise_Click(object sender, EventArgs e)
        {
            addNewExercise();
        }

        // user defined functions
        void addNewExercise()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                

                SqlCommand cmd = new SqlCommand("INSERT INTO tblExercise (exercise_id,journal_id,exercise_date,exercise_name,muscle_group,weight,repetitions,time_rested,eccentric_time,concentric_time) " +
                    "VALUES (@exercise_id,@journal_id,@exercise_date,@exercise_name,@muscle_group,@weight,@repetitions,@time_rested,@eccentric_time,@concentric_time)", con);

                

                cmd.Parameters.AddWithValue("@exercise_id", generateExerciseID());
                cmd.Parameters.AddWithValue("@journal_id", Session["journal_id"]);
                cmd.Parameters.AddWithValue("exercise_date", DateTime.Now);
                cmd.Parameters.AddWithValue("@exercise_name", drpdwnChooseExercise.Text.Trim());
                cmd.Parameters.AddWithValue("@muscle_group", drpdwnMusceleGroup.Text.Trim());
                cmd.Parameters.AddWithValue("@weight", txtExerciseWeight.Text.Trim());
                cmd.Parameters.AddWithValue("@repetitions", txtExerciseRepetitions.Text.Trim());
                cmd.Parameters.AddWithValue("@time_rested", txtExerciseRestTime.Text.Trim());
                cmd.Parameters.AddWithValue("@eccentric_time", txtExerciseEccentricTime.Text.Trim());
                cmd.Parameters.AddWithValue("@concentric_time", txtExerciseConcentricTime.Text.Trim());
                

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Exercise addition successful');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex + "');</script>");
            }
        }

        String generateExerciseID()
        {
            Random rnd = new Random();
            int rndInt = rnd.Next(0, 1000) * rnd.Next(0,50);
            return (Session["client_id"] + rndInt.ToString());
        }

       
    }
}

                