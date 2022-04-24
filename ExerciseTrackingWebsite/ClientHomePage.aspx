<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientHomePage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="wrapper" style="height: auto;">
        <div class="container">
            <h1 id="heading"> Welcome Back</h1>
            <div>
                <ul>
                    <li class="d-grid gap-3 col-20 mx-auto">
                       <asp:LinkButton class="btn btn-dark btn-lg" ID="btnStartExercise" runat="server" Text="Start Exercise" 
                            OnClick="btnStartExercise_Click"/>
                       <asp:LinkButton class="btn btn-dark btn-lg" ID="btnExerciseJournal" runat="server" Text="Exercise Journal" 
                           href="ClientExerciseJournalPage.aspx" OnClick="btnExerciseJournal_Click"/>
                       <asp:LinkButton class="btn btn-dark btn-lg disabled" ID="btnExerciseStats" runat="server" Text="Exercise Stastics/Projections" 
                           href="ClientStatsPage.aspx" OnClick="btnExerciseStats_Click"/>
                    </li>
                </ul>    
                
                <ul class="gap-3" style="text-align:center">
                    <asp:LinkButton class="btn btn-dark btn-lg disabled" ID="Button1" runat="server" Text="Choose Trainer" 
                        href="#"/>
                    <asp:LinkButton class="btn btn-dark btn-lg disabled" ID="Button2" runat="server" Text="ChangeTrainer" 
                        href="#"/>
                    <asp:LinkButton class="btn btn-dark btn-lg disabled" ID="Button3" runat="server" Text="Exercise Routine" 
                        href="#"/>
                </ul>
            </div>
        </div>
    </div>

</asp:Content>
