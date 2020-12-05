<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layaut.Master" AutoEventWireup="true" CodeBehind="Datos.aspx.cs" Inherits="aplicacionWeb.App.Datos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <h1 class="textoH1"> crud basico a una tabla html  </h1>

    <main class="estiloMain">

        <div class="contendeorApp"> 

        <div class="menuApp"> 
        <div class="contenedorBtnApp">
            <%--<a class="btnApp" href=""> Crear </a>
            <a class="btnApp" href=""> Buscar </a>
            <a class="btnApp" href=""> Editar </a>
            <a class="btnApp" href=""> Borar </a>--%>
            <div><asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Listar todo" class="btnApp" /></div>

            <div class="contenedorText"><asp:TextBox ID="InCodigoBuscar" runat="server" /></div>
            <div><asp:Button ID="BtbBuscarCodigo" runat="server" OnClick="BtbBuscarCodigo_Click" Text="buscar Empleado" class="btnApp" /></div>
            <div><asp:Label ID="lblrespuestaBuscar" runat="server" Font-Bold="True"></asp:Label>   </div>

        </div>
        </div>
        <div class="contenedorDatos">
            <asp:GridView ID="gvEmpleados" runat="server" AllowPaging="True" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" OnPageIndexChanging="gvEmpleados_PageIndexChanging" Width="883px" DataKeyNames="Codigo" OnRowCommand="gvEmpleados_RowCommand">
                <Columns>
                    <asp:ButtonField CommandName="Select" Text="Seleccionar" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
         </div>
    </main>

</asp:Content>
