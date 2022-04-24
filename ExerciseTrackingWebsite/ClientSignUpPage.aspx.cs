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
    public partial class WebForm7 : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //sign up button is clicked
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (checkClientExists())
            {
                Response.Write("<script>alert('Client already exists with this Username, please try another Username');</script>");
            }
            else if(checkClientEmailExists())
            {
                Response.Write("<script>alert('Client already exists with this Email, please try another Email');</script>");
            }
            else
            {
                createUserJournal();
                signUpNewUser();
            }
        }

        bool checkClientEmailExists()
        {
            try
            {
                //new Connection with database is made
                SqlConnection con = new SqlConnection(strcon);
                //opens connection with database if it is currently closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //New sql querry is created to select any client with the same email as the one input on the sign up page
                SqlCommand cmd = new SqlCommand("SELECT * from tblClient where email='" + TextBox4.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //filing local datatable with data found from database
                da.Fill(dt);

                //checking if datatable is populated (client with same email is found in the database)
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }

        bool checkClientExists()
        {
            try
            {
                //new Connection with database is made
                SqlConnection con = new SqlConnection(strcon);
                //opens connection with database if it is currently closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //New sql querry is created to select any client with the same username as the one input on the sign up page
                SqlCommand cmd = new SqlCommand("SELECT * from tblClient where client_id='"+TextBox5.Text.Trim()+"';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //filing local datatable with data found from database
                da.Fill(dt);

                //checking if datatable is populated (client with same username is found in the database)
                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }

            return false;
        }


        //method to sign up a guest user as a client
        void signUpNewUser()
        {
            try
            {
                //new Connection with database is made
                SqlConnection con = new SqlConnection(strcon);
                //opens connection with database if it is currently closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //New sql querry is created to insert values 
                SqlCommand cmd = new SqlCommand("INSERT INTO tblClient(client_id,password,email,first_name,surname,dob,journal_id) values(@client_id,@password,@email,@first_name,@surname,@dob,@journal_id)", con);
                

                if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "") //validation for empty textboxes
                {
                    Response.Write("<script>alert('Empty fields found, please fill all fields');</script>");
                }
                else if (TextBox5.Text.Length > 15) //username validation
                {
                    Response.Write("<script>alert('Username cannot be longer than 15 characters, please try another username');</script>");
                }
                else if (TextBox6.Text.Length > 20) //password validation
                {
                    Response.Write("<script>alert('Password cannot be longer than 20 characters, please try another password');</script>");
                }
                else if (TextBox4.Text.Length > 60) //email validation
                {
                    Response.Write("<script>alert('Email cannot be longer than 60 characters, please try another Email');</script>");
                }
                else if (!TextBox4.Text.Contains("@")) //more email valdation
                {
                    Response.Write("<script>alert('Invalid email, please try another Email');</script>");
                }
                else if (TextBox1.Text.Length > 30) //first name validation
                {
                    Response.Write("<script>alert('First name cannot be longer than 30 characters');</script>");
                }   
                else if (TextBox2.Text.Length > 30) //surname validation
                {
                    Response.Write("<script>alert('Surname cannot be longer than 30 characters');</script>");
                }
                else //succeeding case (user is signed up)
                {

                    cmd.Parameters.AddWithValue("@client_id", TextBox5.Text.Trim());
                    cmd.Parameters.AddWithValue("@password", TextBox6.Text.Trim());
                    cmd.Parameters.AddWithValue("@email", TextBox4.Text.Trim());
                    cmd.Parameters.AddWithValue("@first_name", TextBox1.Text.Trim());
                    cmd.Parameters.AddWithValue("@surname", TextBox2.Text.Trim());
                    cmd.Parameters.AddWithValue("@dob", TextBox3.Text.Trim());
                    cmd.Parameters.AddWithValue("@journal_id", generateUserJournal());
                    
                    Response.Write("<script>alert('Sign Up Successful. Please return to login page');</script>");
                    
                }

                cmd.ExecuteNonQuery();
                con.Close();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void createUserJournal()
        {
            try
            {
                //new Connection with database is made
                SqlConnection con = new SqlConnection(strcon);
                //opens connection with database if it is currently closed
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tblJournal(journal_id) values (@journal_id)", con);
                cmd.Parameters.AddWithValue("@journal_id", generateUserJournal());

                cmd.ExecuteNonQuery();
                con.Close ();
            }
            
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            
        }

        
        String generateUserJournal()
        {
            return (TextBox5.Text.Trim() + TextBox3.Text.Trim().ToString());
        }
        
    }
}