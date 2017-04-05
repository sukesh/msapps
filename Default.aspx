<%@ Page Title="Home Page" Language="vb" MasterPageFile="~/Site.Master" AutoEventWireup="false"
    CodeBehind="Default.aspx.vb" Inherits="msapps._Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
    <h2>
        List of Schema Versions
    </h2>
    <p>
        <asp:GridView runat="server" ID="gv" Width="100%" AllowPaging="True" 
            AllowSorting="True" AutoGenerateColumns="False" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            DataKeyNames="Feature,CompatibleSchemaVersion" DataSourceID="edSchemaVersions">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowSelectButton="True" />
                <asp:BoundField DataField="Feature" HeaderText="Feature" ReadOnly="True" 
                    SortExpression="Feature" />
                <asp:BoundField DataField="CompatibleSchemaVersion" 
                    HeaderText="CompatibleSchemaVersion" ReadOnly="True" 
                    SortExpression="CompatibleSchemaVersion" />
                <asp:CheckBoxField DataField="IsCurrentVersion" HeaderText="IsCurrentVersion" 
                    SortExpression="IsCurrentVersion" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
        <asp:EntityDataSource ID="edSchemaVersions" runat="server" 
            ConnectionString="name=ASPNETDBEntities" 
            DefaultContainerName="ASPNETDBEntities" EnableDelete="True" 
            EnableFlattening="False" EnableInsert="True" EnableUpdate="True" 
            EntitySetName="aspnet_SchemaVersions">
        </asp:EntityDataSource>
    </p>
   
</asp:Content>
