<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Library_Management.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
    <link rel="shortcut icon" href="logoimg/title logo.jpg" />

    <meta charset="utf-8" />
    <meta name="viewport" content="width-device, initial-scale=1" />

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

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
                    <a class="btn btn-sm btn-primary" href="signup.aspx">Sign Up </a>
                    <%--                    <a class="btn btn-sm btn-primary" href="#"> Login </a>--%>
                </div>
            </nav>

            <div class="jumbotron text-center alert alert-primary" style="margin-bottom: 0">
                <h1>Library Management System</h1>
                <p>Buuilding community. Inspiring readers. Expanding book access! </p>

            </div>

            <div class="container">
                <div class="row">
                    <%-- <div class="col-sm-2 border border-info">
                        <h2>Filter</h2>
                        
                        <p>Top Search</p>
                        <ul class="nav nav-pills flex-column">
                            <li class="nav-item">
                                <a class="nav-link active"href="#">Active</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link "href="#">Link</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link "href="#">Link</a>
                            </li>
                             <li class="nav-item">
                                <a class="nav-link disabled "href="#">Disabled</a>
                            </li>

                        </ul>
                    </div>--%>
                    <div class="col-sm-10 border border-info">
                        <%--login screen--%>

                        <div class="container mt-3">
                            <h2>Login Panel</h2>
                            <br>
                            <!-- Nav tabs -->
                            <ul class="nav nav-tabs" role="tablist">
                                <li class="nav-item">
                                    <a class="nav-link active" data-bs-toggle="tab" href="#home">User Login</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" data-bs-toggle="tab" href="#menu1">Admin Login</a>
                                </li>

                            </ul>

                            <!-- Tab panes -->
                            <div class="tab-content">
                                <div id="home" class="container tab-pane active">
                                    <br>
                                    <h3>User Login</h3>
                                    <p></p>
                                    <%--design login form--%>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 mx-auto">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150px" src="logoimg/user.jpg" />
                                                                </center>

                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>Member/User Login</h3>
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
                                                                <label>Member ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtmember" runat="server" CssClass="form-control" placeholder="Member ID"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtpassword" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password ID"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnlogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Login" OnClick="btnlogin_Click" />
                                                                </div>
                                                                <div class="form-group">
                                                                    <a href="signup.aspx">
                                                                        <input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <a href="default.aspx" class="mx-3"><< Back to Home Pahe</a>
                                            </div>

                                        </div>

                                    </div>
                                    <%--design end--%>
                                </div>
                                <div id="menu1" class="container tab-pane fade">
                                    <br>
                                    <h3>Admin Login</h3>
                                    <p></p>
                                    <%--Admin design login form--%>
                                    <div class="container">
                                        <div class="row">
                                            <div class="col-md-6 mx-auto">
                                                <div class="card">
                                                    <div class="card-body">
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <img width="150px" src="logoimg/admin.jpg" />
                                                                </center>

                                                            </div>
                                                        </div>
                                                        <div class="row">
                                                            <div class="col">
                                                                <center>
                                                                    <h3>AdminLogin</h3>
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
                                                                <label>Admin ID</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtadminid" runat="server" CssClass="form-control" placeholder="Admin ID"></asp:TextBox>
                                                                </div>
                                                                <label>Password</label>
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="txtadminpass" runat="server" CssClass="form-control" TextMode="Password" placeholder="Password ID"></asp:TextBox>
                                                                </div>
                                                                <div class="form-group">
                                                                    <asp:Button ID="btnadminlogin" CssClass="btn btn-success btn-lg btn-block" runat="server" Text="Admin Login" OnClick="btnadminlogin_Click" />
                                                                </div>
                                                                <div class="form-group">
                                                                    <a href="signup.aspx">
                                                                        <input type="button" class="btn btn-info btn-lg btn-block" value="Sign Up" /></a>
                                                                </div>

                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>
                                                <a href="#"><< Back to Home Page</a>
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
                        <%--<div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Payment Center</a></li>
                                    <li><a href="#">News and updates</a></li>
                                </ul>

                            </div>

                        </div>--%>
                        <%--  <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Heading1</h4>
                                <ul class="list-unstyled">
                                    <li><a href="#"></a></li>
                                    <li><a href="#">Website</a></li>
                                    <li><a href="#">Desclaimer</a></li>
                                </ul>

                            </div>

                        </div>--%>
                        <%--   <div class="col-md-4">
                            <div class="footer-pad">
                                <h4>Follow Us</h4>
                                <ul class="social-network social-circle">
                                    <li><a href="#" title="Facebook"><i class="fa fa-facebook" > Facebook</i></a></li>
                                    
                                </ul>

                            </div>

                        </div>--%>
                    </div>

                    <div class="row">
                        <div class="col-md-12  border-dark">
                            <i class="fa fa-copyright"></i>
                            <p class="text-center">&copy; Copyrigth 2023 - Modern College. All right reserved.</p>
                        </div>

                    </div>
                </div>
            </div>

        </div>

    </form>
</body>
</html>
