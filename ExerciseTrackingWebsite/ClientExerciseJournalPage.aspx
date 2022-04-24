<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientExerciseJournalPage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm3" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable
                ();
            //$('table1').DataTable();
        });

    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-col-6 mx-auto">

                <div class="card">
                    <div class="card-card-body wid" >
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>
                                        Your Exercise Journal
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ExerciseTrackerDBConnectionString %>" SelectCommand="SELECT [exercise_name], [exercise_date], [muscle_group], [weight], [repetitions], [time_rested], [eccentric_time], [concentric_time] FROM [tblExercise] WHERE ([journal_id] = @journal_id) ORDER BY [exercise_date] DESC">
                                <SelectParameters>
                                    <asp:SessionParameter Name="journal_id" SessionField="journal_id" Type="String" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="grdJournal"
                                    runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="exercise_name" HeaderText="exercise_name" ReadOnly="false" SortExpression="exercise_name" />
                                        <asp:BoundField DataField="exercise_date" HeaderText="exercise_date" SortExpression="exercise_date" />
                                        <asp:BoundField DataField="muscle_group" HeaderText="muscle_group" SortExpression="muscle_group" />
                                        <asp:BoundField DataField="weight" HeaderText="weight" SortExpression="weight" />
                                        <asp:BoundField DataField="repetitions" HeaderText="repetitions" SortExpression="repetitions" />
                                        <asp:BoundField DataField="time_rested" HeaderText="time_rested" SortExpression="time_rested" />
                                        <asp:BoundField DataField="eccentric_time" HeaderText="eccentric_time" SortExpression="eccentric_time" />
                                        <asp:BoundField DataField="concentric_time" HeaderText="concentric_time" SortExpression="concentric_time" />
                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="ClientHomePage.aspx" class="mb-5"><< Back to Home</a>
            </div>
        </div>
    </div>

</asp:Content>
