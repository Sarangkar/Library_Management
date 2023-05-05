<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="Library_Management.signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sign up</title>
    <link rel="shortcut icon" href="logoimg/title logo.jpg" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <%-- Bootstrap css--%>
    <link href="Bootstrap/css/bootstrap.min.css" rel="stylesheet" />


    <%-- Datatable css--%>
    <link href="datatable/css/jquery.dataTables.min.css" rel="stylesheet" />

    <%-- font awesome css--%>
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <%-- jquery css--%>
    <script src="Bootstrap/js/jquery-3.3.1.slim.min.js"></script>

    <%--   proper js--%>
    <script src="Bootstrap/js/popper.min.js"></script>
    <%--   bootstrap js--%>
    <script src="Bootstrap/js/bootstrap.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
                <a class="navbar-brand" href="default.aspx">
                    <img src="logoimg/logo.png" alt="logo" width="49" height="49" />LMS Apllication</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo02" aria-controls="navbarTogglerDemo02" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarTogglerDemo02">
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="default.aspx"><b>Home</b></a>
                        </li>
                        
                        
                        <li class="nav-item">
                            <a class="nav-link" href="ContactUs.aspx"><b>Contact</b></a>
                        </li>

                    </ul>
                </div>

                <%--navbar right--%>
                <div class="pmd-navbar-right-icon ml-auto">
                    <%--                    <a class="btn btn-sm btn-primary" href="#"> Sign up </a>--%>
                    <a class="btn btn-sm btn-primary" href="login.aspx">Sign In </a>

                </div>
            </nav>

            <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
                <h1>Library Management System</h1>
                <p>Buuilding community. Inspiring readers. Expanding book access! </p>

            </div>

            <div class="container">
                <div class="row">
                   
                    <div class="container col-sm-10 border border-info">
                        <%--Write your code here--%>

                        <%--login screen--%>

                        <div class="container mt-3">
                            <h2>Create New Account</h2>
                            <br />
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#signup">Sign Up</a>
                                </li>


                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="signup" class="container tab-pane active">
                                    <br>
                                    <h3>Sign Up</h3>
                                    <p></p>
                                    <%--design login form--%>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-12 mx-auto ">
                                                <div class="card">
                                                    <div class="card-body ">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150px" src="logoimg/signupp.jpg" />
                                                                </center>

                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>Member/User Sign Up</h3>
                                                                </center>

                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <hr />

                                                            </div>
                                                        </div>
                                                        <div class="row mb-3 ">
                                                            <div class="col-4 ">
                                                                <label>Member ID</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtmember" runat="server" CssClass="form-control" placeholder="Member ID"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password ID"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Valid Password" ForeColor="Red" ControlToValidate="txtpassword" Display="Dynamic" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>
                                                                <label>Full Name</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control" placeholder="Full Name"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Full Name" Display="Dynamic" ControlToValidate="txtFullName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                                                                </div>





                                                                <%--<div class="form-group">
                                        <a href="signup.aspx"><input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                    </div>--%>
                                                            </div>
                                                            <div class="col-4">
                                                                <label>Date Of Birth</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtdob" runat="server" CssClass="form-control" placeholder="Date Of Birth" TextMode="Date"></asp:TextBox>
                                                                </div>

                                                                <label>Contact No.</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtContactNo" runat="server" CssClass="form-control" placeholder="Contact No"></asp:TextBox>
                                                                </div>
                                                                <label>Email ID</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtEmailid" runat="server" CssClass="form-control" placeholder="Email" TextMode="Email"></asp:TextBox>
                                                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Valid Email " Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmailid"></asp:RequiredFieldValidator>
                                                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Address" ForeColor="#FF6600" Display="Dynamic" ControlToValidate="txtEmailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                                </div>
                                                            </div>
                                                            <div class="col-4">
                                                                <label>State</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:DropDownList ID="ddlState" CssClass="form-control" runat="server">
                                                                        <asp:ListItem Text="select" Value="select"></asp:ListItem>
                                                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                                                        <asp:ListItem Text="Arunachal pradesh" Value="Arunachal pradesh"></asp:ListItem>
                                                                        <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem>
                                                                        <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                                                                        <asp:ListItem Text="Chattisgarh" Value="Chattisgarh"></asp:ListItem>
                                                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                                                        <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                                                        <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                                                        <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                                                        <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>



                                                                    </asp:DropDownList>
                                                                </div>

                                                                <label>City</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtCity" runat="server" CssClass="form-control" placeholder="City"></asp:TextBox>
                                                                </div>
                                                                <label>PIN</label>
                                                                <div class="form-group mb-2">
                                                                    <asp:TextBox ID="txtPn" runat="server" CssClass="form-control" placeholder="PIN CODE"></asp:TextBox>
                                                                </div>
                                                            </div>

                                                        </div>
                                                        <div class="row mb-3">
                                                            <div class="col-12">
                                                                <label>Full Address mb-2</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtFullAddress" runat="server" CssClass="form-control" placeholder="Address"></asp:TextBox>
                                                                </div>


                                                            </div>
                                                        </div>

                                                        <div class="row">
                                                            <div class="col-3">
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnSignup" CssClass="btn btn-success btn-lg w-100 btn-block " runat="server" Text="Sign Up" OnClick="btnSignup_Click" />
                                                                </div>
                                                            </div>

                                                        </div>
                                                    </div>
                                                </div>
                                                <a href="default.aspx"><< Back to Home Page</a>
                                            </div>

                                        </div>

                                    </div>
                                    <%--design end--%>
                                </div>


                            </div>
                        </div>



                        <%--<!--- end login screen--->--%>
                    </div>

                </div>

            </div>

            <br />
            <div class="jumbotron text-center alert alert-danger " style="margin-bottom: 0; border: 2px solid red">
               
                <div class="container">
                   

                    <div class="row">
                        <div class="col-md-12 border-dark"><i class="fa fa-copyright"></i>
                            <p class="text-center">&copy; Copyrigth 2023 - Modern College. All right reserved.</p>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
