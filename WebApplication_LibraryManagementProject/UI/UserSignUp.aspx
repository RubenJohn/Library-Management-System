<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="UserSignUp.aspx.cs" Inherits="WebApplication_LibraryManagementProject.UI.WebForm4" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("#body_DoBTextBox").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "1970:2010",
                dateFormat: 'dd-mm-yy'
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card" style="margin: 10px">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <img width="100px" src="../imgs/generaluser.png" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col text-center">
                                <h3>User Sign Up</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="body_FullNameTextBox">Full Name</label>
                                    <asp:TextBox class="form-control" placeholder="Full Name" ID="FullNameTextBox" runat="server"></asp:TextBox>
                                </div>
                            </div>
                           
                        </div>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="body_ContactNumberTextBox">Contact Number</label>
                                    <asp:TextBox class="form-control" placeholder="01xxxxxxxxx" ID="ContactNumberTextBox" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="body_EmailIdTextBox">Email ID</label>
                                    <asp:TextBox class="form-control" placeholder="example@mail.com" ID="EmailIdTextBox" runat="server" TextMode="Email"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="body_CountryTextBox">Country</label>
                                    <asp:TextBox class="form-control" placeholder="Country" ID="CountryTextBox" runat="server" ></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="body_CityTextBox">City</label>
                                    <asp:TextBox class="form-control" placeholder="City" ID="CityTextBox" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                    <label for="body_PincodeTextBox">Area code</label>
                                    <asp:TextBox class="form-control" placeholder="Code" ID="PincodeTextBox" runat="server" TextMode="Number"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label for="body_FullAddressTextBox">Full Address</label>
                                    <asp:TextBox class="form-control" placeholder="Full Address" ID="FullAddressTextBox" runat="server" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="body_UserIdTextBox">User ID</label>
                                    <asp:TextBox class="form-control" placeholder="User ID" ID="UserIdTextBox" runat="server"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <label for="body_PasswordTextBox">Password</label>
                                    <asp:TextBox class="form-control" placeholder="******" ID="PasswordTextBox" runat="server" TextMode="Password"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button class="btn btn-block btn-success" ID="SignUpButton" runat="server" Text="Sign Up" OnClick="SignUpButton_Click" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <a href="Homepage.aspx"><< Back to Home</a><br />
                <br />
            </div>
        </div>
    </div>
</asp:Content>
