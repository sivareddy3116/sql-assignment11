<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Articles.aspx.cs" Inherits="WebAppAssignment_11.Articles" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ArtId" DataSourceID="SqlDataSource1">
    <Columns>
        <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
        <asp:BoundField DataField="ArtId" HeaderText="ArtId" ReadOnly="True" SortExpression="ArtId" />
        <asp:BoundField DataField="Title" HeaderText="Title" SortExpression="Title" />
        <asp:BoundField DataField="Content" HeaderText="Content" SortExpression="Content" />
        <asp:BoundField DataField="PublishDate" HeaderText="PublishDate" SortExpression="PublishDate" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:Day12DbConnectionString %>" DeleteCommand="DELETE FROM [Articles] WHERE [ArtId] = @original_ArtId AND [Title] = @original_Title AND [Content] = @original_Content AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))" InsertCommand="INSERT INTO [Articles] ([ArtId], [Title], [Content], [PublishDate]) VALUES (@ArtId, @Title, @Content, @PublishDate)" OldValuesParameterFormatString="original_{0}" ProviderName="<%$ ConnectionStrings:Day12DbConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [Articles]" UpdateCommand="UPDATE [Articles] SET [Title] = @Title, [Content] = @Content, [PublishDate] = @PublishDate WHERE [ArtId] = @original_ArtId AND [Title] = @original_Title AND [Content] = @original_Content AND (([PublishDate] = @original_PublishDate) OR ([PublishDate] IS NULL AND @original_PublishDate IS NULL))">
    <DeleteParameters>
        <asp:Parameter Name="original_ArtId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
        <asp:Parameter Name="original_PublishDate" Type="DateTime" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="ArtId" Type="Int32" />
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
        <asp:Parameter Name="PublishDate" Type="DateTime" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Title" Type="String" />
        <asp:Parameter Name="Content" Type="String" />
        <asp:Parameter Name="PublishDate" Type="DateTime" />
        <asp:Parameter Name="original_ArtId" Type="Int32" />
        <asp:Parameter Name="original_Title" Type="String" />
        <asp:Parameter Name="original_Content" Type="String" />
        <asp:Parameter Name="original_PublishDate" Type="DateTime" />
    </UpdateParameters>
</asp:SqlDataSource>
</asp:Content>