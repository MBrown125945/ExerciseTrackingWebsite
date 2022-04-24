<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="TrainerSignUpPage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm11" %>
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
                                        Trainer Sign Up
                                    </h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <!-- trainer username and password -->
                        <div class="row">
                            <!-- trainer username label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox5" runat="server"
                                    placeholder="Username"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Trainer password label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox6" runat="server"
                                    placeholder="Password" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <!-- Trainer email address label and text box -->
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

                        
                        <!-- trainer first-name and surname -->
                        <div class="row">
                            <!-- Trainer first name label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">First Name:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox1" runat="server"
                                    placeholder="First Name"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Trainer surname label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">Surname:</label>
                                <div class="form-group">        
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox7" runat="server"
                                        placeholder="Surname"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Trainer specialty label and drop down menu -->
                            <center>
                                <div class="col-md-4">
                                    <label class="mb-1">Training Specialty:</label>
                                    <div class="form-group">        
                                        <asp:DropDownList class="form-control" ID="DropDownList1"
                                            runat="server">

                                            <asp:ListItem Text="Select" Value="Select" />
                                            <asp:ListItem Text="Strength and conditioning coach" Value="Strength and conditioning coach" />
                                            <asp:ListItem Text="Group exercise instructor" Value="Group exercise instructor" />
                                            <asp:ListItem Text="Fitness manager" Value="Fitness manager" />
                                            <asp:ListItem Text="Senior fitness specialist" Value="Senior fitness specialist" />
                                            <asp:ListItem Text="Youth fitness specialist" Value="Youth fitness specialist" />
                                            <asp:ListItem Text="Weight loss transformation specialist" Value="Weight loss transformation specialist" />
                                            <asp:ListItem Text="Bodybuilding specialist" Value="Bodybuilding specialist" />
                                            <asp:ListItem Text="Corrective exercise specialist" Value="Corrective exercise specialist" />
                                            <asp:ListItem Text="Health coaching" Value="Health coaching" />

                                        </asp:DropDownList>
                                    </div>
                                </div>
                            </center>

                            <!-- Trainer Description label and text box -->
                            <center>
                                <div class="col">
                                    <label class="mb-1">Training Description:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server"
                                        placeholder="max 200 characters" TextMode="MultiLine" Rows="3" Height="83px"></asp:TextBox>
                                    </div>
                                </div>
                            </center>
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
