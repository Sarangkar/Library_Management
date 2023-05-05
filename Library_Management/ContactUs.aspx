<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="Library_Management.AboutUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container mt-5  " >
        <div class="row mb-5">
            <div class=" col-md-6 col-sm-12 "  style="padding-right: calc(var(--bs-gutter-x) * 0); padding-left: calc(var(--bs-gutter-x) * 0);">
                <div style="background-image: linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,1)),url(slideimg/contact.jpg); height:100%; " class="text-white  " >

                    <h2 class="text-center">Contact Us</h2>
                    <div class="px-5 mt-5 mx-5">
                   
                    <h4> <i class="fa fa-location "> </i> Address</h4>
                    <p>Modern College of Arts, Science and Commerce, Sumukh Society, Shivajinagar, Pune, Maharashtra 411005</p>

                    <h4><i class="fa fa-phone  "></i> Call.</h4>
                        <p>+91 9080909070.</p>

                    <h4><i class="fa fa-envelope"></i> Email.</h4>
                        <p>modernlibrary@gmail.com</p>
                    </div>
                </div>
                </div>
            <div class=" col-md-6 col-sm-12 bg-dark-subtle ">
                        

                <div class="w-75 mx-auto mt-5   ">
                    <div >                    
                        
                       <label>Full Name</label>
                      <div class="form-group mb-2">
                          <asp:TextBox ID="txtFullName" runat="server" CssClass="form-control"  placeholder="Full Name"></asp:TextBox>
                          <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Enter Full Name" Display="Dynamic" ControlToValidate="txtFullName" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                      </div>
                
                    <label>Email </label>
                    <div  class="form-group mb-2">
                     <asp:TextBox ID="txtEmailid" runat="server" CssClass="form-control"  placeholder="Email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="* Enter Valid Email " Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ControlToValidate="txtEmailid"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter Valid Email Address" ForeColor="#FF6600" Display="Dynamic" ControlToValidate="txtEmailid" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                                                               
                    </div>
                    <label>Contact </label>
                    <div  class="form-group">
                     <asp:TextBox ID="txtContact" runat="server" CssClass="form-control"  placeholder="Mob. Number" ></asp:TextBox>
                     <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Enter Contact Number" Display="Dynamic" ControlToValidate="txtContact" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>

                    </div>
                    <label>Message </label>
                    <div  class="form-group mb-2">
                       
                        <asp:TextBox ID="txtMessage" CssClass="form-control" Rows="2" placeholder="Message" TextMode="MultiLine" runat="server" ></asp:TextBox>
                       
                    </div>
                    <asp:Button ID="contactbtn" CssClass="btn btn-primary btn-block w-100 mb-5" runat="server" Text="Send" OnClick="contactbtn_Click"  />
                                 </div>
                    </div>


            </div>

        </div>

    </div>

</asp:Content>
