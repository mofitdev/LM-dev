<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planyrTab3ModalInfo.aspx.cs" Inherits="LMWebApp.pg.planyrTab3ModalInfo" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Жилийн төлөвлөгөөний арга хэмжээний дэлгэрэнгүй</h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Он</label>
        <div id="showModalYear" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Стратегийн зорилт</label>
        <div id="showModalStrat" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Үйл ажиллагааны зорилт</label>
        <div id="showModalAction" runat="server" class="col-sm-12">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Арга хэмжээ</label>
        <div id="showModalPlan" runat="server" class="col-sm-12">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Шалгуур үзүүлэлт</label>
        <div id="showModalCriteria" runat="server" class="col-md-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Тоо</label>
        <div id="showModalCnt" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Чанар</label>
        <div id="showModalQuality" runat="server" class="col-sm-10">
                                    
        </div>
    </div> 
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Төлөвлөгөөт хугацаа /сараар/</label>
        <div id="showModalBudget" runat="server" class="col-sm-4">
                                                                           
        </div>
        <label class="col-md-2 control-label">Зарцуулах боломжит өдөр</label>
        <div id="showModalDoday" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах газар</label>
        <div id="showModalGazar" runat="server" class="col-sm-4">
                                                                           
        </div>
        <label class="col-md-2 control-label">Хариуцах хэлтэс</label>
        <div id="showModalHeltes" runat="server" class="col-sm-4">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-2 control-label">Хариуцах ажилтан</label>
        <div id="showModalStafflist" runat="server" class="col-sm-10">
                                                                           
        </div>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <label class="col-md-12 control-label">Холбогдсон бодлогын баримт бичиг</label>
    </div>
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <div class="col-sm-12">
            <table class="table table-striped table-bordered table-hover">
                <thead><tr><th class="text-center">Бодлогын төрөл</th><th class="text-center">Арга хэмжээ</th></tr></thead>
                <tbody id="showModalPolicyPlanListTbody" runat="server"></tbody>
            </table>
        </div>
    </div>
</div>
<div class="modal-footer">
    <div id="showModalModifyDescription" runat="server" class="form-group" style="display:block; overflow:hidden; margin: 0px;">
                
    </div>
</div>
