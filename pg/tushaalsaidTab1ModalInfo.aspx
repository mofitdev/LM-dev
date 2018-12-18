<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tushaalsaidTab1ModalInfo.aspx.cs" Inherits="LMWebApp.pg.tushaalsaidTab1ModalInfo" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Сайдын тушаалын дэлгэрэнүй</h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тушаалын төрөл</label>
        <div id="tushaalsaidShowModalType" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тушаалын нэр</label>
        <div id="tushaalsaidShowModalTushaalName" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Батлагдсан огноо</label>
        <div id="tushaalsaidShowModalSuccessDate" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Дугаар</label>
        <div id="tushaalsaidShowModalNo" runat="server" class="col-md-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Боловсруулсан газар</label>
        <div id="tushaalsaidShowModalBolovsruulsanGazar" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Боловсруулсан ажилтан</label>
        <div id="tushaalsaidShowModalBolovsruulsanStaff" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах газар</label>
        <div id="tushaalsaidShowModalHariutsahGazar" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах ажилтан</label>
        <div id="tushaalsaidShowModalHariutsahStaff" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хяналтанд авсан заалт</label>
        <div id="tushaalsaidShowModalZaalt" runat="server" class="col-sm-10">
                                    
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хавсралт файл</label>
        <div class="col-sm-10">
            <a id="tushaalsaidShowModalAttach" runat="server" class="btn btn-link btn-xs" style="padding:0px; border:none;" href="#" download></a>      
        </div>
    </div>
</div>
<div class="modal-footer">
    <div id="tushaalsaidShowModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                    
    </div>
</div>
