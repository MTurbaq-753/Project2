<%@ Page Title="" Language="C#" MasterPageFile="~/SAdmin.Master" AutoEventWireup="true" CodeBehind="question.aspx.cs" Inherits="IS424_Project.admin.question" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="maincontent" runat="server">
     <div class="col-md-12">
        <div class="card">
            <%--Button For select add question for exam--%>
            <div class="btn-group bg-danger">
                <asp:Button ID="btn_panelquestion" runat="server" Text="Add Question" CssClass="btn btn-info" BorderStyle="None" CausesValidation="False" BackColor="#343A40" />
            </div>
            <div class="card-body">
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Questions No</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txtQNo" runat="server" TextMode="Number"  required CssClass="form-control"></asp:TextBox>
                     </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Questions Name</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txt_questionname" runat="server" TextMode="MultiLine" CssClass="form-control" Height="150px" ValidationGroup="A"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="require_questionname" runat="server" ErrorMessage="Enter exam name" ControlToValidate="txt_questionname" ForeColor="red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Option A</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txt_optionone" runat="server" CssClass="form-control" ValidationGroup="A"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="require_op1" runat="server" ErrorMessage="Enter option one" ControlToValidate="txt_optionone" ForeColor="red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Option B</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txt_optiontwo" runat="server" CssClass="form-control" ValidationGroup="A"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="require_op2" runat="server" ErrorMessage="Enter option two" ControlToValidate="txt_optiontwo" ForeColor="red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Option C</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txt_optionthree" runat="server" CssClass="form-control" ValidationGroup="A"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="require_op3" runat="server" ErrorMessage="Enter option three" ControlToValidate="txt_optionthree" ForeColor="red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                <div class="row form-group">
                    <label class="col-md-2 col-form-label ">Option D</label>
                    <div class="col-md-9">
                        <asp:TextBox ID="txt_optionfour" runat="server" CssClass="form-control" ValidationGroup="A"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="require_op4" runat="server" ErrorMessage="Enter option four" ControlToValidate="txt_optionfour" ForeColor="red"></asp:RequiredFieldValidator>
                    </div>
                </div>
                
                <div class="card-footer">
                        <div class="offset-2">
                            <asp:Button ID="btn_addquestion" runat="server" Text="Add Question"  ValidationGroup="A" CssClass="btn" BackColor="#343A40" BorderStyle="None" ForeColor="White" OnClick="btn_addquestion_Click"  />
                        </div>
                        <asp:Panel ID="panel_addquestion_warning" runat="server" Visible="false">
                            <br />
                            <div class="alert alert-danger text-center">
                                <asp:Label ID="lbl_addquestionwarning" runat="server" />
                            </div>
                        </asp:Panel>
                    </div>
            </div>          
            
        </div>
    </div>

    <br />
    <br />
</asp:Content>
