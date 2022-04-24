<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientProfilePage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-5">

                <div class="card">
                    <div class="card-body" >
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>
                                        Your Profile
                                    </h4>
                                    <span>
                                        Account Status - 
                                    </span>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label1"
                                        runat="server" Text="Active"></asp:Label>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4">

                                <label class="mb-1">Username:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox5" runat="server"
                                    placeholder="Username" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">Old Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox6" runat="server"
                                    placeholder="Password" TextMode="Password" ReadOnly="True"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">New Password:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox7" runat="server"
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
                                            placeholder="Email Address" ReadOnly="True"></asp:TextBox>
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
                                    placeholder="First Name" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">Surname:</label>
                                <div class="form-group">        
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox2" runat="server"
                                        placeholder="Surname" ReadOnly="True"></asp:TextBox>
                                </div>

                            </div>

                            <div class="col-md-4">

                                <label class="mb-1">Date Of Birth:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="TextBox3" runat="server"
                                    placeholder="dd-mm-yyyy" TextMode="Date" ReadOnly="True"></asp:TextBox>
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
                                <div class="col-8 ">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-info btn-lg mb-3 btn-block" ID="Button1" runat="server"
                                        Text="Update" />
                                    </div>
                                </div>
                            </center>
                        </div>

                        

                    </div>
                </div>

                <a href="ClientHomePage.aspx" class="mb-5"><< Back to Home</a>
            </div>

            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>
                                        Your Latest Sessions
                                    </h4>
                                    <asp:Label class="badge badge-pill badge-info" ID="Label2"
                                        runat="server" Text="Active"></asp:Label>                      
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                                    runat="server" Height="243px"></asp:GridView>
                            </div>
                        </div>
                        

                        

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
