﻿<%--Author Jessica Terryberry--%>

<%@ Page Title="Positions" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ManagePositions.aspx.cs" Inherits="EmmaApp.Employee.ManagePositions" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2>Manage Positions</h2>
    <br />
    <div>
        <asp:GridView ID="gvPositions" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="odsPosition">
            <Columns>
                <asp:TemplateField ShowHeader="False">
                    <EditItemTemplate>
                        <asp:Button ID="btnUpdate" runat="server" CausesValidation="True" CommandName="Update" Text="Save" />
                        <asp:Button ID="btnCancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </EditItemTemplate>
                    <ItemTemplate>
                        <asp:Button ID="btnEdit" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
                        <asp:Button ID="btnDelete" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" OnClientClick='return confirm("Are you sure you want to delete this Employee?");' />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="id" HeaderText="Position ID" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="posName" HeaderText="Position Name" SortExpression="posName" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:Button ID="btnCreateNew" runat="server" OnClick="btnCreateNew_Click" Text="Add New Position" />
        <br />
        <asp:DetailsView ID="dvCreatePosition" runat="server" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="odsPosition" DefaultMode="Insert" Height="50px" Width="250px">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="posName" HeaderText="Position Name" SortExpression="posName" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <br />
        <asp:HyperLink ID="lnkBack1" runat="server" NavigateUrl="~/Employee"><big>Back to Employee Index</big></asp:HyperLink>
        <asp:ObjectDataSource ID="odsPosition" runat="server" DeleteMethod="Delete" InsertMethod="Insert" OldValuesParameterFormatString="original_{0}" SelectMethod="GetData" TypeName="EmmaLibrary.EmployeeSetTableAdapters.PositionTableAdapter" UpdateMethod="Update">
            <DeleteParameters>
                <asp:Parameter Name="Original_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="posName" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="posName" Type="String" />
                <asp:Parameter Name="Original_id" Type="Int32" />
            </UpdateParameters>
        </asp:ObjectDataSource>
        <br />

    </div>
</asp:Content>
