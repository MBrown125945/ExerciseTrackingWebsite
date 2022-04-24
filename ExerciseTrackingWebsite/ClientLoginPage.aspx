<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientLoginPage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm6" %>
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
                                        Client Login
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
                            <center>
                                <div class="col-md-10">
                                    <label class="mb-1">Client Username:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server"
                                        placeholder="Client Username"></asp:TextBox>
                                    </div>
                               
                                    <label class="mb-1">Password:</label>
                                    <div class="form-group">        
                                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server"
                                            placeholder="Password" TextMode="Password"></asp:TextBox>
                                    </div>

                                    <div class="row">
                                        <div class="col-md-12">
                                            <hr />
                                        </div>
                                    </div>

                                    <div class="form-group">   
                                        <center>
                                            <!-- login button --> 
                                            <asp:Button ID="btnLogin" runat="server" Text="Login" class="btn btn-success btn-lg mb-3" OnClick="btnLogin_Click"/>
                                        </center>
                                    </div>

                                    <div class="form-group">   
                                        <center>
                                            <!-- Sign up button --> 
                                            <a href="ClientSignUpPage.aspx">
                                                <input id="btnSignUp" type="button" value="Sign up" class="btn btn-info btn-lg mb-3"/>
                                            </a>
                                        </center>
                                    </div>

                                </div>
                            </center>

                        </div>
                    </div>
                </div>

                <a href="ClientHomePage.aspx" class="mb-5"><< Back to Home</a>
            </div>
        </div>
    </div>

</asp:Content>
