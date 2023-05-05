<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Library_Management._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div id="demo" class="carousel slide" data-ride="carousel">
                <%--indicator--%>
                <ul class="carousel-indicators"> 
                    <li data-target="#demo" data-slide-to="0" class="active"></li>
                    <li data-target="#demo" data-slide-to="1" ></li>
                    <li data-target="#demo" data-slide-to="2" ></li>

                </ul>
                <%--the slideshow--%>
                 <div id="carouselExampleControls" class="carousel slide" data-bs-ride="false">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="slideimg/lms-img-1.jpg" alt="los angeles" width="1000px" height="575px" >
                    </div>
                     <div class="carousel-item ">
                        <img src="slideimg/lms-img-2.jpg" alt="Chicago" width="1000px" height="575px" > 
                    </div>
                     <div class="carousel-item ">
                        <img src="slideimg/lms-img-3.jpg" alt="new york" width="1000px" height="575px" > 
                    </div>
                </div>
                <%--Left and right controls--%>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
                     </div>
            </div>

        </div>
        <div class="row m-5">
            <div class="col-sm-12">
                <h2 class="border-bottom border-info text-center shadow">Library Management System</h2>
              
            </div>
       </div>
        
        <div class="row mt-3  ">
            <div class=" d-flex">
              

                <div class="col-5 col-sm-5">
                    <img width="300" src="slideimg/about_lms.png"/>
                </div> 
                <div class=" col-7 col-sm-7">
                <p>
                    A library management system is software that is designed to manage all the functions of a library. It helps librarian to maintain the database of new books and the books that are borrowed by members along with their due dates.<br /><br />

This system completely automates all your library’s activities. The best way to maintain, organize, and handle countless books systematically is to implement a library management system software.<br /><br />

A library management system is used to maintain library records. It tracks the records of the number of books in the library, how many books are issued, or how many books have been returned or renewed or late fine charges, etc.<br /><br />

You can find books in an instant, issue/reissue books quickly, and manage all the data efficiently and orderly using this system. The purpose of a library management system is to provide instant and accurate data regarding any type of book, thereby saving a lot of time and effort.


                </p>
                     </div>

            </div>

        </div>
       </div>
    

</asp:Content>
