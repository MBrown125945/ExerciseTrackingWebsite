<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientSignUpPage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-col-8 mx-auto">

                <div class="card" ID="loginCard">
                    <div class="card-card-body wid" >
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>
                                        Client Sign Up
                                    </h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">

                                <label class="mb-1">Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox5" runat="server"
                                    placeholder="Username"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-6">

                                <label class="mb-1">Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox6" runat="server"
                                    placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>

                            </div>

                        </div>


                       <div class="row">
                            <center>
                                <div class="col-md-6">

                                    <label class="mb-1">Email Address:</label>
                                    <div class="form-group">        
                                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox4" runat="server"
                                            placeholder="Email Address"></asp:TextBox>
                                    </div>

                                </div>
                            </center>
                        </div>

                        <div class="row">
                            <center>
                                <div class="col">
                                    <span class="badge badge-card-header-pills badge-info">User Information</span>
                                </div>
                            </center>
                        </div>

                        <div class="row">
                            <div class="col-md-4">

                                <label class="mb-1">First Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server"
                                    placeholder="First Name"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">Surname:</label>
                                <div class="form-group">        
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server"
                                        placeholder="Surname"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">Date Of Birth:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server"
                                    placeholder="dd-mm-yyyy" TextMode="Date"></asp:TextBox>
                                </div>

                            </div>

                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <center>
                                <div class="col">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-success btn-lg mb-3" ID="Button1" runat="server"
                                        Text="Sign Up" OnClick="Button1_Click" />
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
