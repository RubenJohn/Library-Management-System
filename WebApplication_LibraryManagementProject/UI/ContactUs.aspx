<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="ContactUs.aspx.cs" Inherits="WebApplication_LibraryManagementProject.UI.ContactUs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <link rel="stylesheet" type="text/css" href ="StyleSheet1.css">
     <link href="fontawseome/fontawesome/css/all.css" rel="stylesheet" />
     <div class="container-fluid">
        <div class="row">
            <div class="col-md-8 mx-auto">
               
                 <div class="card">
  <div class="card-body">
      <div class="row">
          <div class="col">
             

            </div>          
        </div>
      <br />
      <div class="row">
          <div class="col">
              <center>
                  <h3>Contact Us</h3>
              </center>

            </div>          
        </div>
      <div class="row">
          <div class="col">
              <center>
                  <hr />
              </center>

            </div>          
        </div>



       <div class="row">
          <div class="col-md-6">
               <label>Name</label>
              <div class="form-group">

                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" autocomplete="off" placeholder="Name"></asp:TextBox>
                  </div>

            </div> 
            <div class="row">
           <div class="col-md-8">
               <label>Mobile No</label>
              <div class="form-group">

                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" autocomplete="off" placeholder="Phone no"></asp:TextBox>
                  </div>

            </div> </div>
            <div class="col-md-6">
                <label>Email</label>
              <div class="form-group">

                  <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" autocomplete="off" placeholder="someone@gmail.com"></asp:TextBox>
                  </div>

                
              
              
            </div> 
           </div>
      
      <div class="form-group">
                      <label>Any Message for us?</label><br />

              <textarea id="TextArea11" cols="80" rows="3" runat="server"></textarea>
           </div>
                 <br />












              <div class="row">
          <div class="col">
               <center>
               <div class="form-group">
                   
              
                   
              <br />
          <asp:Button ID="Button1" class="btn btn-success btn-block  btn-lg" runat="server" Text="Submit" OnClick="Button1_Click1"></asp:Button>
                    <br />
              </div><br />
                  </center>
      
              
             
            </div>          
        </div>

      



      </div>   
     </div>  
               

 </div>
</div>
        <br /> 
</div>
   
</asp:Content>

