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
    public partial class WebForm6 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //user login button
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tblClient where client_id ='" + TextBox1.Text.Trim() + "' AND password ='" + TextBox2.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Successful, welcome back " + dr.GetValue(0).ToString() + "');</script>");
                        Session["client_id"] = dr.GetValue(0).ToString();
                        Session["email"] = dr.GetValue(2).ToString();
                        Session["first_name"] = dr.GetValue(3).ToString();
                        Session["surname"] = dr.GetValue(4).ToString();
                        Session["dob"] = dr.GetValue(5).ToString();
                        Session["journal_id"] = dr.GetValue(6).ToString();
                        Session["role"] = "client";
                    }
                    Response.Redirect("ClientHomePage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid username or password, please try again');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }

        //user defined funcitons
    }
}