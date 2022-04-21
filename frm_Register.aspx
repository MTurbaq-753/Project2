<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frm_Register.aspx.cs" Inherits="IS424_Project.frm_Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="assets/css/bootstrap.min.css" rel="stylesheet">
    <link href="Style/custom.css" rel="stylesheet" />
</head>
<body class="bg-dark">
    <div class="container">
        <div class="card card-register mx-auto mt-5">
            <div class="card-header">Register an Account</div>
            <div class="card-body">
                <form runat="server" id="formregister">
                    <asp:Panel ID="pnl_warning" runat="server" Visible="false">
                        <div class="form-group card-header text-center">
                            <div class="alert-danger">
                                <asp:Label ID="lbl_warning" runat="server" Text="Label" CssClass="col-form-label text-center"></asp:Label>
                            </div>
                        </div>
                    </asp:Panel>

                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputName">First name</label>
                                <asp:TextBox ID="txt_fname" runat="server" CssClass="form-control" placeholder="Enter first name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_name" runat="server" ErrorMessage="Enter first name" ControlToValidate="txt_fname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleInputLastName">Last name</label>
                                <asp:TextBox ID="txt_lname" runat="server" CssClass="form-control" placeholder="Enter last name"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_lname" runat="server" ErrorMessage="Enter last name" ControlToValidate="txt_lname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email address</label>
                        <asp:TextBox ID="txt_email" runat="server" CssClass="form-control" placeholder="Enter email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="txt_email" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="txt_pass" runat="server" CssClass="form-control" placeholder="Enter password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="txt_pass" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-6">
                                <label for="exampleConfirmPassword">Confirm password</label>
                                <asp:TextBox ID="txt_repass" runat="server" CssClass="form-control" placeholder="Re-type password" TextMode="Password"></asp:TextBox>
                                <asp:CompareValidator ID="rqrcopm_pass" runat="server" ErrorMessage="Password do not match" ControlToValidate="txt_repass" Display="Dynamic" ForeColor="Red" ControlToCompare="txt_pass"></asp:CompareValidator>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="input-group">
                            <span class="input-group-addon">
                                <i class="fa fa-users"></i>
                            </span>
                            <asp:DropDownList ID="DDL_Role" CssClass="form-control" runat="server">
                                <asp:ListItem Value="0" Text="Administrator"></asp:ListItem>
                                <asp:ListItem Value="1" Text="Student"></asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <asp:Label ID="Label2" CssClass="help-block" runat="server" Text="" ForeColor="White"></asp:Label>
                    </div>
                    <br />
                    <asp:Button ID="btn_register" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btn_register_Click" />
                    <div class="text-center">
                        <a class="d-block small mt-3" href="loginFrm.aspx">Login Page</a>
                    </div>
                </form>

            </div>
        </div>
    </div>

</body>

</html>
