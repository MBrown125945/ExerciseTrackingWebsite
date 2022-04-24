<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="TrainerLoginPage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm10" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div class="container">
        <div class="row">
            <div class="col-md-col-6 mx-auto">

                <div class="card" ID="loginCard">
                    <div class="card-card-body wid" >
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>
                                        Trainer Login
                                    </h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <label class="mb-1">Trainer Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server"
                                    placeholder="Admin Username"></asp:TextBox>
                                </div>
                               
                                <label class="mb-1">Password:</label>
                                <div class="form-group">        
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server"
                                        placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">   
                                    <center>
                                        <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-success btn-lg mb-3"/>
                                    </center>
                                </div>
                                <div class="form-group">   
                                        <center>
                                            <!-- Sign up button --> 
                                            <a href="TrainerSignUpPage.aspx">
                                                <input id="btnSignUp" type="button" value="Sign up" class="btn btn-info btn-lg mb-3"/>
                                            </a>
                                        </center>
                                    </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="ClientHomePage.aspx" class="mb-5"><< Back to Home</a>
            </div>
        </div>
    </div>

</asp:Content>

