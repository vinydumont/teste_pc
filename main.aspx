<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="Teste_PC.main" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
	<style type="text/css">
		.auto-style1 {
			margin-bottom: 0px;
		}
	</style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        	Cadastro de Clientes:<br />
			<br />
			ID:&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtID" runat="server" Width="59px"></asp:TextBox>
			<br />
			<br />
			Nome Fantasia:&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtNome" runat="server" Width="559px"></asp:TextBox>
			<br />
			<br />
			Razão Social:&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtRazao" runat="server" Width="565px"></asp:TextBox>
			<br />
			<br />
			Tipo de Inscrição:&nbsp;&nbsp;
			<asp:DropDownList ID="ddlTipo" runat="server" Height="18px" Width="206px">
				<asp:ListItem> </asp:ListItem>
				<asp:ListItem>CPF</asp:ListItem>
				<asp:ListItem>CNPJ</asp:ListItem>
			</asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp; Data de Nascimento:&nbsp;&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtDataIni" runat="server" CssClass="auto-style1" Width="173px"></asp:TextBox>
			<br />
			<br />
			Endereço:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtEndereco" runat="server" Width="425px"></asp:TextBox>
&nbsp;&nbsp; Número:&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtNroEnd" runat="server" Width="76px"></asp:TextBox>
			<br />
			<br />
			CEP:&nbsp;&nbsp;&nbsp; <asp:TextBox ID="txtCEP" runat="server" Width="293px"></asp:TextBox>
&nbsp;&nbsp;&nbsp; Telefone:&nbsp;&nbsp;
			<asp:TextBox ID="txtTelefone" runat="server" Width="235px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
			<br />
			<br />
			Email:&nEmail:&nbsp;&nbsp;&nbsp;
			<asp:TextBox ID="txtEmail" runat="server" Width="615px"></asp:TextBox>
			<br />
			<br />
			<asp:Button ID="btnAdicionar" runat="server" OnClick="btnAdicionar_Click" Text="Adicionar" />
&nbsp;
			<asp:Button ID="btnAlterar" runat="server" OnClick="btnAlterar_Click" Text="Alterar" />
&nbsp;<asp:Button ID="btnExcluir" runat="server" OnClick="btnExcluir_Click" Text="Excluir" />
			<br />
			<asp:GridView ID="dgvListaCliente" runat="server" Width="684px">
			</asp:GridView>
			<br />
			<br />
        </div>
    </form>
</body>
</html>
