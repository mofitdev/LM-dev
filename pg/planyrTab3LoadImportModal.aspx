<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="planyrTab3LoadImportModal.aspx.cs" Inherits="LMWebApp.pg.planyrTab3LoadImportModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >
        <span id="lblHeaderYr" runat="server">0000</span> оны жилийн төлөвлөгөөнөөс татах
    </h4>
</div>
<div class="modal-body">
    <div class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        <div class="alert alert-warning fade in">
			<i class="fa-fw fa fa-warning"></i>
			<strong>Анхааруулга!</strong>  Татах гэж буй жилийн төлөвлөгөө давхцал шалгахгүй автоматаар хуулагдах тул та давхцал байгаа эсэхийг шалгаж байж оруулна уу. Мөн татаж хуулсан жилийн төлөвлөгөөгөөний дугаарын давхцалыг шалгана уу!
		</div>
    </div> 
    <div id="divBodyTable" runat="server" class="form-group" style="display:block; overflow:hidden; margin-bottom:15px;">
        
    </div> 
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="pTab3LoadImportModalSaveBtn" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах </button>
</div>
<script type="text/javascript">
    $("#pTab3LoadImportModalSaveBtn").click(function () {
        var valTableCheckedList = '';
        $('#pTab3ImportModalDatatable').find('tbody').find('tr').each(function (index) {
            if ($('td:eq(6)', this).find(':checkbox').prop('checked')) {
                if (valTableCheckedList == '') valTableCheckedList = $(this).attr('data-id');
                else valTableCheckedList = ','+$(this).attr('data-id');
            }
        });
        if (valTableCheckedList == '') alert('Дор хаяж 1 төлөвлөгөө сонгож хадгалах боломжтой');
        else {
            globalAjaxVar = $.ajax({
                type: "POST",
                url: "../ws/ServiceMain.svc/PlanyrTab3SP_PLANT_IMPORT",
                data: '{"P_PLANLIST":"' + valTableCheckedList + '", "P_YR":"' + (parseInt($.trim($('#lblHeaderYr').text())) + 1).toString() + '", "P_STAFFID":"' + $('#indexUserId').text() + '"}',
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    dataBindTab3DataTable();
                    $('#pTab3ModalLoadImportModal').modal('hide');
                    smallBox($('#lblHeaderYr').text()+' оны жилийн төлөвлөгөө', 'Амжилттай татагдлаа...', '#659265', 3000);
                },
                failure: function (response) {
                    alert('FAILURE: ' + response.d);
                },
                error: function (xhr, status, error) {
                    window.location = '../#pg/error500.aspx';
                }
            });
        }
    });

</script>

