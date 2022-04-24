<%@ Page Title="" Language="C#" MasterPageFile="~/ClientMaster.Master" AutoEventWireup="true" CodeBehind="ClientExercisePage.aspx.cs" Inherits="ExerciseTrackingWebsite.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container">
        <div class="row">
            <!-- Exercise Inputting form -->
            <div class="col">     
                <div class="card">
                    <div class="card-body" >
                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>
                                        Start An Exercise
                                    </h4>
                                    
                                    <!-- choose an exercise label and drop down list -->
                                    <div="row">
                                        <label>
                                            Choose An Exercise - 
                                        </label>
                                        <asp:DropDownList class="form-control col-md-4" ID="drpdwnChooseExercise" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Dumbell Bench Press" Value="Dumbell Chest Press"></asp:ListItem>
                                            <asp:ListItem Text="Barbell Bench Press" Value="Barbell Chest Press"></asp:ListItem>
                                            <asp:ListItem Text="Deadlift" Value="Deadlift"></asp:ListItem>
                                            <asp:ListItem Text="Barbell Squat" Value="Barbell Squat"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    
                                    <!-- Drop down menu for choosing main muscle group worked -->
                                    <div="row">
                                        <center>
                                            <label>
                                                Main Muscle Group - 
                                            </label>
                                        </center>
                                        <asp:DropDownList class="form-control col-md-4" ID="drpdwnMusceleGroup" runat="server">
                                            <asp:ListItem Text="Select" Value="Select"></asp:ListItem>
                                            <asp:ListItem Text="Chest" Value="Chest"></asp:ListItem>
                                            <asp:ListItem Text="Shoulders" Value="Shoulders"></asp:ListItem>
                                            <asp:ListItem Text="Triceps" Value="Triceps"></asp:ListItem>
                                            <asp:ListItem Text="Biceps" Value="Biceps"></asp:ListItem>
                                            <asp:ListItem Text="Rear Shoulders(Delts)" Value="Rear Shoulders(Delts)"></asp:ListItem>
                                            <asp:ListItem Text="Back" Value="Back"></asp:ListItem>
                                            <asp:ListItem Text="Lats" Value="Lats"></asp:ListItem>
                                            <asp:ListItem Text="Traps" Value="Traps"></asp:ListItem>
                                            <asp:ListItem Text="Rhomboids" Value="Rhomboids"></asp:ListItem>
                                            <asp:ListItem Text="Core" Value="Core"></asp:ListItem>
                                            <asp:ListItem Text="Legs" Value="Legs"></asp:ListItem>
                                            <asp:ListItem Text="Glutes" Value="Glutes"></asp:ListItem>
                                            <asp:ListItem Text="Quads" Value="Quads"></asp:ListItem>
                                            <asp:ListItem Text="Hamstrings" Value="Hamstrings"></asp:ListItem>
                                            <asp:ListItem Text="Calves" Value="Calves"></asp:ListItem>
                                        </asp:DropDownList>
                                    </div>
                                    
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <!-- Basic Exercise Data forms -->
                        <div class="row">
                            <center>
                                <h4>
                                    Enter Exercise Data
                                </h4>
                            </center>

                            <!-- Exercise set label and textBox -->
                            <center>
                                <div class="col-md-4">
                                    <label class="mb-1">Current Set:</label>
                                    <div class="form-group">
                                        <asp:TextBox CssClass="form-control mb-3" ID="txtCurrentSet" runat="server"
                                        placeholder="Set number" ReadOnly="False" TextMode="Number"></asp:TextBox>
                                    </div>
                                </div>
                            </center>

                            <!-- Exercise weight label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">Weight (in Kg):</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="txtExerciseWeight" runat="server"
                                    placeholder="Weight" ReadOnly="False" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Exercise repetitions label and text box -->
                            <div class="col-md-6">
                                <label class="mb-1">Repetitions:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="txtExerciseRepetitions" runat="server"
                                    placeholder="Repetitions" TextMode="Number" ReadOnly="False"></asp:TextBox>
                                </div>
                            </div>  

                        </div>
                        
                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>

                        <center>
                            <h5>
                                Advanced Exercise Data
                            </h5>
                        </center>
                        
                        <!-- Advanced exercise data forms -->
                        <div class="row">

                            <!-- Exercise rested time label and text box -->
                            <div class="col-md-4">
                                <label class="mb-1">Time Rested:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="txtExerciseRestTime" runat="server"
                                    placeholder="Time Rested (in Seconds)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Exercise eccentric time label and text box -->
                            <div class="col-md-4">
                                <label class="mb-1">Time Spent on Eccentric:</label>
                                <div class="form-group">        
                                    <asp:TextBox CssClass="form-control mb-3" ID="txtExerciseEccentricTime" runat="server"
                                        placeholder="Eccentric Time (in Seconds)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>

                            <!-- Exercise concentric time label and text box -->
                            <div class="col-md-4">
                                <label class="mb-1">Time Spent On Concentric:</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control mb-3" ID="txtExerciseConcentricTime" runat="server"
                                    placeholder="Concetnric Time (in Seconds)" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                    <hr />
                            </div>
                        </div>
 
                        
                        <div class="row">
                            <!-- Add Exercise button -->
                            <center>
                                <div class="d-grid col-8">
                                    <div class="form-group">
                                        <asp:Button class="btn btn-info btn-lg mb-3 btn-block" ID="btnAddExercise" runat="server"
                                        Text="Add Exercise" OnClick="btnAddExercise_Click"/>
                                    </div>
                                </div>
                            </center>
                        </div>

                    </div>
                </div>
                <a href="ClientHomePage.aspx" class="mb-5"><< Back to Home</a>
            </div>

            <!-- grid view showing current session -->
            <div class="col">

                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>
                                        Your Current Session (in development)
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
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1"
                                    runat="server" Height="24px"></asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
