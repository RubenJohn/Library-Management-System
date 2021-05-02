<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="BookEnquiry.aspx.cs" Inherits="WebApplication_LibraryManagementProject.UI.BookEnquiry" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">  

    <link rel="stylesheet" type="text/css" href ="StyleSheet1.css">
     <link href="fontawseome/fontawesome/css/all.css" rel="stylesheet" />
    <marquee scrollamount="7" bgcolor="yellow">Hello Readers!We hope that you are intrested in buying the books from our website after enquiring from our website our experts will soon get in touch with you via your given email or phone number also the payment details will be shared with you.</marquee>
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
                  <h3>BOOKS ENQUIRY</h3>
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
               <label>Email</label>
              <div class="form-group">

                  <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" autocomplete="off" placeholder="someone@gmail.com"></asp:TextBox>
                  </div>

            </div> 
            <div class="row">
           <div class="col-md-8">
               <label>Mobile</label>
              <div class="form-group">

                  <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" autocomplete="off" placeholder="Phone no"></asp:TextBox>
                  </div>

            </div> </div>
            <div class="col-md-6">
              
              
            </div> 
           </div>


      <br />
     


      
      

             


      <label>No. of Books You want to issue:</label><br />
              <asp:DropDownList ID="DropDownList1" runat="server" Width="186px">
                
                  <asp:ListItem>1</asp:ListItem>
                  <asp:ListItem>2</asp:ListItem>
                  <asp:ListItem>3</asp:ListItem>
                  <asp:ListItem>4</asp:ListItem>
                  <asp:ListItem>5</asp:ListItem>
                  <asp:ListItem>6</asp:ListItem>
                  <asp:ListItem>7</asp:ListItem>
          </asp:DropDownList>         
      <br />
     


      
      

             



              <br />
      

      
                  
     

      <br />
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
          <asp:Button ID="Button1" class="btn btn-success btn-block  btn-lg" runat="server" Text="Submit" OnClick="Button1_Click" ></asp:Button>
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