<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="lwTab3ModalInfo.aspx.cs" Inherits="LMWebApp.pg.lwTab3ModalInfo" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Заалтын дэлгэрэнгүй</h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Төрөл</label>
        <div id="showModalType" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Эрх зүйн акт</label>
        <div id="showModalLaw" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Дугаар</label>
        <div id="showModalNo" runat="server" class="col-sm-10">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Нэр</label>
        <div id="showModalName" runat="server" class="col-sm-10">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Нэгж</label>
        <div id="showModalBranch" runat="server" class="col-sm-10">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хүн өдөр</label>
        <div id="showModalPersonday" runat="server" class="col-sm-2">
                                                                           
        </div>
        <label class="col-md-2 control-label">АБТ-д тусах эсэх</label>
        <div id="showModalIsjobdesc" runat="server" class="col-sm-2">
                                                                           
        </div>
        <label class="col-md-2 control-label">Жил/төлөвлөгөөнд тусах эсэх</label>
        <div id="showModalIsplanyr" runat="server" class="col-sm-2">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тайлбар</label>
        <div id="showModalDescription" runat="server" class="col-sm-10">
                                                                           
        </div>
    </div>
</div>
