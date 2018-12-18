<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="togtoolTab1ModalInfo.aspx.cs" Inherits="LMWebApp.pg.togtoolTab1ModalInfo" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Шийдвэрийн дэлгэрэнүй</h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Шийдвэрийн төрөл</label>
        <div id="togtoolShowModalType" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тушаалын нэр</label>
        <div id="togtoolShowModalName" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Батлагдсан огноо</label>
        <div id="togtoolShowModalSuccessDate" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Дугаар</label>
        <div id="togtoolShowModalNo" runat="server" class="col-md-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах газар</label>
        <div id="togtoolShowModalHariutsahGazar" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хяналтанд авсан заалт</label>
        <div id="togtoolShowModalZaalt" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хүлээн авсан огноо</label>
        <div id="togtoolShowModalReceiveDate" runat="server" class="col-sm-4">
                                                                           
        </div>
        <label class="col-md-2 control-label">Биелүүлэх хугацаа</label>
        <div id="togtoolShowModalDoneDate" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хавсралт файл</label>
        <div class="col-sm-10">
            <a id="togtoolShowModalAttach" runat="server" class="btn btn-link btn-xs" style="padding:0px; border:none;" href="#" download></a>      
        </div>
    </div>
</div>
<div class="modal-footer">
    <div id="togtoolShowModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                    
    </div>
</div>
