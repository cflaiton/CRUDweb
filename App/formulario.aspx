<%@ Page Title="" Language="C#" MasterPageFile="~/App/Layaut.Master" AutoEventWireup="true" CodeBehind="formulario.aspx.cs" Inherits="aplicacionWeb.App.formulario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

 <h1 class="textoH12">CRUD básico a una tabla HTML</h1>

    <main class="estiloMain">
        <div class="contendeorApp">
            <div class="menuApp">
                
                <div class="contenedorBtnApp">
                    <asp:Label ID="lblrespuesta" runat="server" Font-Bold="True"></asp:Label>
                </div>
              
            </div>
            <div class="contenedorDatos">
              
                <div class="contenedorTodoForm">
                   
                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel"><asp:label text="Codigo" runat="server" /></div>
                        <div class="contenedorText"><asp:TextBox ID="InCodigo" runat="server" /></div>
                        <div class="contenedorError"><asp:label  runat="server" Font-Size="Smaller" ForeColor="Red" ID="ErrorCodigo" /></div>
                        <%--<div class="contenedorText"><asp:TextBox ID="InCodigoBuscar" runat="server" /></div>--%>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Nombre" runat="server" />
                        </div>
                        <div class="contenedorText">
                            <asp:TextBox ID="InNombre" runat="server" />
                        </div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorNombre"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Apellido" runat="server" />
                        </div>
                        <div class="contenedorText">
                            <asp:TextBox ID="InApellido" runat="server" />
                        </div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorApellido"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Cargo" runat="server" />
                        </div>
                        <div class="contenedorText">
                            <asp:TextBox ID="InCargo" runat="server" />
                        </div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorCargo"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Salario" runat="server" />
                        </div>
                        <div class="contenedorText">
                            <asp:TextBox ID="InSalario" runat="server" />
                        </div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorSalario"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Area" runat="server" />
                        </div>
                        <div class="contenedorText"><asp:TextBox ID="InArea" runat="server" /></div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorArea"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <div class="contenedorDatosForm">
                        <div class="contenedorLabel">
                            <asp:label text="Ciudad" runat="server" />
                        </div>
                        <div class="contenedorText">
                            <asp:TextBox ID="InCiudad" runat="server" />
                        </div>
                        <div class="contenedorError">
                            <asp:label ID="ErrorCiudad"  runat="server" Font-Size="Smaller" ForeColor="Red" />
                        </div>
                    </div>

                    <%--final de contenedor datos--%>

                    <div class="contenedorBtnApp">   
                    <asp:Button Text="Enviar Datos" class="btnApp" ID="btnAgregarEmpleado" runat="server" OnClick="btnAgregarEmpleado_Click" />


                    <asp:Button Text="Guardar Cambios" class="btnApp" ID="btnEditarEmpleado" runat="server" OnClick="btnEditarEmpleado_Click" />


                    <asp:Button Text="Borrar Datos" class="btnApp" ID="btnBorrarEmpleado" runat="server" OnClick="btnBorrarEmpleado_Click" OnClientClick="if(!confirm('Desea borrar el registro?')) return false;"/>

                    </div>
                    <%--final formualrio--%>
                </div>
                                
               <%--final de contenedor datos--%>
                
            </div>

        </div>
    </main>
</asp:Content>