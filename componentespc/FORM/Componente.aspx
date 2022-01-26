<%@ Page Title="" Language="C#" MasterPageFile="~/FORM/master.Master" AutoEventWireup="true" CodeBehind="Componente.aspx.cs" Inherits="componentespc.FORM.Componente" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../Scripts/JS.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <dx:ASPxCallbackPanel ID="ASPxPanel1" runat="server">
        <ClientSideEvents EndCallback="function(s, e) {Endcallback(s, e);}" />

        <PanelCollection>

            <dx:PanelContent>

                <dx:ASPxFormLayout ID="formLayout" runat="server" Width="100%" UseDefaultPaddings="false">
                    <Items>
                        <dx:LayoutGroup Caption="Gridview" SettingsItemCaptions-Location="Top">
                            <Items>

                                <dx:LayoutItem ShowCaption="False">

                                    <LayoutItemNestedControlCollection>

                                        <dx:LayoutItemNestedControlContainer>

                                            <%-- Prueba de Toastr
                                <dx:ASPxButton ID="a1" AutoPostBack="false" runat="server" Text="success">
                                    <ClientSideEvents Click="function(s, e) {success()}"></ClientSideEvents>
                                </dx:ASPxButton>

                                <dx:ASPxButton ID="a2" AutoPostBack="false" runat="server" Text="Info">
                                    <ClientSideEvents Click="function(s, e) {Info()}"></ClientSideEvents>
                                </dx:ASPxButton>

                                <dx:ASPxButton ID="a3" AutoPostBack="false" runat="server" Text="Warning">
                                    <ClientSideEvents Click="function(s, e) {Warning()}"></ClientSideEvents>
                                </dx:ASPxButton>

                                <dx:ASPxButton ID="a4" AutoPostBack="false" runat="server" Text="error">
                                    <ClientSideEvents Click="function(s, e) {error()}"></ClientSideEvents>
                                </dx:ASPxButton>
                                <dx:ASPxButton ID="a5" AutoPostBack="false" runat="server" Text="Texto Editado">
                                    <ClientSideEvents Click="function(s, e) {myfunction()}"></ClientSideEvents>
                                </dx:ASPxButton>--%>

                                            <%--gridview--%>

                                            <dx:ASPxGridView ID="ASPxGridView1" ClientInstanceName="ASPxGridView1" Width="100%" runat="server" AutoGenerateColumns="False" DataSourceID="componenteDS" KeyFieldName="Idcomponente">
                                                <ClientSideEvents ToolbarItemClick="function(s, e) {toolbarclickdelete(s, e); }"  EndCallback="function(s, e) {Endcallback(s, e);}" />
                                                <SettingsBehavior AllowFocusedRow="true" />
                                                <EditFormLayoutProperties ColCount="2" ColumnCount="2">
                                                    <Items>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Nombrecomponente" Caption="Nombre" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Marca" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Cantidad" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Precio" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Detalle" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <dx:GridViewColumnLayoutItem ColumnName="Total" ColSpan="1"></dx:GridViewColumnLayoutItem>
                                                        <%--botones grid--%>
                                                        <dx:GridViewColumnLayoutItem HorizontalAlign="Right" ShowCaption="False" Paddings-PaddingLeft="1000px">

                                                            <Template>

                                                               <%-- <dx:ASPxButton ID="BtnAgvOrdenCompraActualizar" runat="server" Text="Guardar" AutoPostBack="false" UseSubmitBehavior="false">
                                                                    <ClientSideEvents Click="function(s, e) {
                                                                    if(confirm('Se dispone a guardar el registro. ¿Está seguro?')){
                                                                    ASPxGridView1.UpdateEdit();}
                                                                    }"></ClientSideEvents>
                                                                </dx:ASPxButton>
                                                                <dx:ASPxButton ID="BtnAgvOrdenCompraCancelar" runat="server" Text="Cancelar" AutoPostBack="false" UseSubmitBehavior="false" CssClass="Btn-Cancelar-Atr">
                                                                    <ClientSideEvents Click="function(s, e) {
                                                                    if(confirm('Se dispone a cancelar cambios del registro. ¿Está seguro?')){
                                                                    ASPxGridView1.CancelEdit();}
                                                                    }"></ClientSideEvents>
                                                                </dx:ASPxButto--%>
                                                                
                                                                <%-- boton confirmar --%>

                                                                <dx:ASPxButton ID="ASPxButton1" runat="server" Text="Aceptar" AutoPostBack="false" UseSubmitBehavior="false">
                                                                    <ClientSideEvents Click="function(s, e){Confirmacion('estas seguro insertar un dato ?');}"></ClientSideEvents>
                                                                </dx:ASPxButton>
                                                                
                                                            </Template>
                                                        </dx:GridViewColumnLayoutItem>
                                                    </Items>

                                                </EditFormLayoutProperties>

                                                <Columns>
                                                    <dx:GridViewDataTextColumn FieldName="Nombrecomponente" VisibleIndex="1"></dx:GridViewDataTextColumn>
                                                    <%--Cantidad--%>
                                                    <dx:GridViewDataSpinEditColumn FieldName="Cantidad" VisibleIndex="2">
                                                        <PropertiesSpinEdit ClientInstanceName="cantidadEdit" MaxLength="9" SpinButtons-ClientVisible="false" NumberType="Integer">
                                                            <ClientSideEvents NumberChanged="calcularTotal" />
                                                        </PropertiesSpinEdit>
                                                    </dx:GridViewDataSpinEditColumn>
                                                    <%--Cantidad--%>
                                                    <dx:GridViewDataTextColumn FieldName="Marca" VisibleIndex="3"></dx:GridViewDataTextColumn>
                                                    <%--Precio--%>
                                                    <dx:GridViewDataSpinEditColumn FieldName="Precio" VisibleIndex="4">
                                                        <PropertiesSpinEdit ClientInstanceName="precioEdit" MaxLength="9" SpinButtons-ClientVisible="false" NumberType="Integer">
                                                            <ClientSideEvents NumberChanged="calcularTotal" />
                                                        </PropertiesSpinEdit>
                                                    </dx:GridViewDataSpinEditColumn>
                                                    <%--Precio--%>
                                                    <dx:GridViewDataTextColumn FieldName="Detalle" VisibleIndex="5"></dx:GridViewDataTextColumn>
                                                    <%--Total--%>
                                                    <dx:GridViewDataTextColumn FieldName="Total" VisibleIndex="6" ReadOnly="True">
                                                        <PropertiesTextEdit ClientInstanceName="totalEdit" />
                                                    </dx:GridViewDataTextColumn>
                                                    <%--Total--%>
                                                    <dx:GridViewDataTextColumn FieldName="Idcomponente" Visible="False"></dx:GridViewDataTextColumn>
                                                    <dx:GridViewDataTextColumn FieldName="Numerorden" Visible="False" VisibleIndex="0"></dx:GridViewDataTextColumn>
                                                </Columns>
                                                <Toolbars>
                                                    <dx:GridViewToolbar>
                                                        <Items>

                                                            <dx:GridViewToolbarItem Name="Insert" Text="Insert" Command="New"></dx:GridViewToolbarItem>
                                                            <dx:GridViewToolbarItem Name="Delete" Text="Delete"></dx:GridViewToolbarItem>
                                                            <dx:GridViewToolbarItem Command="Edit" Name="Update" Text="Update"></dx:GridViewToolbarItem>
                                                        </Items>
                                                    </dx:GridViewToolbar>
                                                </Toolbars>
                                            </dx:ASPxGridView>


                                            <asp:ObjectDataSource runat="server" ID="componenteDS" SelectMethod="ListarComponente" TypeName="componentespcneg.componenteneg" OnUpdated="componenteDS_Delete" OnInserted="componenteDS_Delete" OnDeleted="componenteDS_Delete" DeleteMethod="EliminarComponente" InsertMethod="GuardarActualizar" UpdateMethod="GuardarActualizar">
                                                <DeleteParameters>
                                                    <asp:Parameter Name="idcomponente" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="codigo" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="mensaje" Type="String"></asp:Parameter>
                                                </DeleteParameters>
                                                <InsertParameters>
                                                    <asp:Parameter Name="Idcomponente" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Name="Nombrecomponente" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Cantidad" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Name="Marca" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Precio" Type="Single"></asp:Parameter>
                                                    <asp:Parameter Name="Detalle" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Total" Type="Single"></asp:Parameter>
                                                    <asp:Parameter Name="Numerorden" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="codigo" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="mensaje" Type="String"></asp:Parameter>
                                                </InsertParameters>
                                                <UpdateParameters>
                                                    <asp:Parameter Name="Idcomponente" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Name="Nombrecomponente" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Cantidad" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Name="Marca" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Precio" Type="Single"></asp:Parameter>
                                                    <asp:Parameter Name="Detalle" Type="String"></asp:Parameter>
                                                    <asp:Parameter Name="Total" Type="Single"></asp:Parameter>
                                                    <asp:Parameter Name="Numerorden" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="codigo" Type="Int32"></asp:Parameter>
                                                    <asp:Parameter Direction="Output" Name="mensaje" Type="String"></asp:Parameter>
                                                </UpdateParameters>
                                            </asp:ObjectDataSource>

                                        </dx:LayoutItemNestedControlContainer>
                                    </LayoutItemNestedControlCollection>
                                </dx:LayoutItem>

                            </Items>
                        </dx:LayoutGroup>
                    </Items>
                </dx:ASPxFormLayout>

            </dx:PanelContent>

        </PanelCollection>


    </dx:ASPxCallbackPanel>


</asp:Content>
