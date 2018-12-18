<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tushaalsaidTab2ModalInfo.aspx.cs" Inherits="LMWebApp.pg.tushaalsaidTab2ModalInfo" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Тушаалын хяналтанд авсан заалтын дэлгэрэнүй</h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тушаалын төрөл</label>
        <div id="tushaalsaidShowModalType" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Батлагдсан огноо</label>
        <div id="tushaalsaidShowModalSuccessDate" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тушаалын дугаар</label>
        <div id="tushaalsaidShowModalTushaalNo" runat="server" class="col-md-2">
                                    
        </div>
        <label class="col-md-2 control-label">Тушаалын утга</label>
        <div id="tushaalsaidShowModalTushaalName" runat="server" class="col-md-6">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Төлөвлөгөө</label>
        <div id="tushaalsaidShowModalZaaltName" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Дуусах огноо</label>
        <div id="tushaalsaidShowModalEnddate" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Боловсруулсан газар</label>
        <div id="tushaalsaidShowModalBolovsruulsanGazar" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах газар</label>
        <div id="tushaalsaidShowModalHariutsahGazar" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
</div>
<div class="modal-footer">
    <div id="tushaalsaidShowModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                    
    </div>
</div>
