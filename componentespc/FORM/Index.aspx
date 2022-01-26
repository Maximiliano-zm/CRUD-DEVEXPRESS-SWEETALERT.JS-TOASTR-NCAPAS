<%@ Page Title="" Language="C#" MasterPageFile="~/FORM/master.Master" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="componentespc.FORM.Index" %>

<%@ Register Assembly="DevExpress.Web.ASPxTreeList.v21.2, Version=21.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxTreeList" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.ASPxSpreadsheet.v21.2, Version=21.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web.ASPxSpreadsheet" TagPrefix="dx" %>

<%@ Register Assembly="DevExpress.Web.v21.2, Version=21.2.4.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    
    <dx:ASPxPanel ID="ASPxPanel1" runat="server" Border-BorderColor="Yellow">
 
        <PanelCollection>

            <dx:PanelContent>

     <dx:ASPxFormLayout ID="formLayout" runat="server" Width="100%" UseDefaultPaddings="false">
        <Items>
            <dx:LayoutGroup Caption="Gridview"  SettingsItemCaptions-Location="Top">
                <Items>

                    <dx:LayoutItem>

                        <LayoutItemNestedControlCollection>
                            <dx:LayoutItemNestedControlContainer>

                                <%-- maquetador excel --%>
                                <%--<dx:ASPxSpreadsheet runat="server" Width="100%" WorkDirectory="~/App_Data/WorkDirectory"></dx:ASPxSpreadsheet>--%>


                                


                            </dx:LayoutItemNestedControlContainer>

                        </LayoutItemNestedControlCollection>

                    </dx:LayoutItem>

                </Items>
            </dx:LayoutGroup>
        </Items>
    </dx:ASPxFormLayout>

            </dx:PanelContent>

        </PanelCollection>

    </dx:ASPxPanel>

   
</asp:Content>
