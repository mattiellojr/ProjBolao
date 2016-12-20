<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Apostas.aspx.cs" Inherits="ProjBolao.Apostas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="col-md-12 text-center" style="margin-top:3%;">
        <button type="button"
                class="btn btn-success btn-lg center-block"
                data-toggle="modal"
                data-target="#apostaModal"
                runat="server">
            Nova aposta
        </button>
    </div>

    <!-- Lista de apostas -->
    <div class ="col-md-12" style="margin-top:3%;">
        <asp:ListView id="listApostas" runat="server">
            <LayoutTemplate>
                <ul>
                    <asp:PlaceHolder ID="itemPlaceholder" runat="server" />    
                </ul>   
            </LayoutTemplate>
            <ItemTemplate>
                <li>
                    <a href="#" class="list-group-item">
                        <asp:DynamicControl runat="server" DataField="Aposta" Mode="ReadOnly" />
                    </a>
                </li>
            </ItemTemplate>
            <EmptyDataTemplate>
                <a href="#" class="list-group-item">Sem apostas criadas! - Selecione "Nova aposta".</a>
            </EmptyDataTemplate>
        </asp:ListView>
    </div>


    <!-- Modal -->
    <div id="apostaModal" class="modal fade" role="dialog">
        <div class="modal-dialog" runat="server">

            <!-- Modal content-->
            <div class="modal-content" runat="server">
                <div class="modal-header" runat="server">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Criar aposta</h4>
                </div>
                <div class="modal-body">
                    <label for="resul1" runat="server" >
                        <asp:DynamicControl runat="server" DataField="Time" Mode="ReadOnly"/>
                    </label>
                    <input type="number" id="resul1" runat="server" />

                    <input type="number" id="resul2" runat="server" />
                    <label for="resul2" runat="server" >
                        <asp:DynamicControl runat="server" DataField="Time" Mode="ReadOnly"/>
                    </label>
                </div>
                <div class="modal-footer" runat="server">
                    <button type="button" class="btn btn-primary" onclick="btnSalvarClick" runat="server">Salvar</button>
                    <button type="button" class="btn btn-danger" data-dismiss="modal">Fechar</button>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
