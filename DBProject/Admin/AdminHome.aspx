<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="AdminHome.aspx.cs" Inherits="DBProject.AdminHome" %>



<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <form runat ="server">

       
        <p style="align-content:center;/*font-family:'Franklin Gothic Medium', 'Arial Narrow', Arial, sans-serif;*/font-size:50px;">Neema Care</p>
       <%-- <br />
        <h1 style="font-family: 'Times New Roman', Times, serif;border-radius:5px; text-decoration: underline; background-color: #CCCCCC"><strong style="margin:37%">Clinic Stats</strong></h1>
        <br /><br />--%>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-yellow">
                <div class="inner">
                    <h3></h3>

                    <p>Total Number of Doctors</p>
                </div>
                <div class="icon">
                    <i class="ion ion-person-add"></i>
                    <asp:Label ID="TotalPatients" runat="server" Font-Bold="true" Font-Size="Medium"></asp:Label>
             </div>
                </div>
        </div>
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-red">
                <div class="inner">
                    

                    <p>Total Number of Patients</p>
                </div>
                <div class="icon">
                    <i class="ion ion-pie-graph"></i>
                    <asp:Label ID="Total_Doctors" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
                    </div>
                </div>
        </div>
      <div class="row">
        <div class="col-lg-3 col-xs-6">
            <div class="small-box bg-aqua">
                <div class="inner">
                 

                    <p>Earnings </p>
                </div>
                <div class="icon">
                    <i class="ion ion-bag"></i>
              <asp:Label ID="TotalIncome" runat="server"  Font-Bold="true" Font-Size="Medium"></asp:Label>
                    
        </div>
    </div>
            </div>
          </div>

           <%--<div style="margin-left: 70px">

            <h4><strong>Total Number of Regstered Doctors: </strong></h4>
            
            <br /><br />
               
            <h4><strong>Total Registered Patients: </strong></h4>
            
            <br /><br />

            <h4><strong>Total Income: </strong></h4>
            
            <br /><br />--%>
        <h3><strong style="margin:20%">Current Appointments</strong></h3>
        
        <asp:gridview ID="Appointment_view" runat="server" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="50px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:gridview>
   
    <%--<div style="margin:20%">--%>

        <h2><strong style="margin:20%">Department Information</strong></h2>

        <asp:gridview ID="department_View" runat="server" CellPadding="4" ForeColor="Black" Height="50px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" GridLines="Vertical">
            <AlternatingRowStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#F7F7DE" />
            <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#FBFBF2" />
            <SortedAscendingHeaderStyle BackColor="#848384" />
            <SortedDescendingCellStyle BackColor="#EAEAD3" />
            <SortedDescendingHeaderStyle BackColor="#575357" />
        </asp:gridview>

 <%--       </div>--%>

        </form>
</asp:Content>
