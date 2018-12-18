<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="policyTab8ImplImportModal.aspx.cs" Inherits="LMWebApp.pg.policyTab8ImplImportModal" %>
<div class="modal-header">
    <button class="close" aria-hidden="true" data-dismiss="modal" type="button"> ×</button>
    <h4 class="modal-title" >Төлөвлөгөөний биелэлт татах&nbsp;<span id="policytab8ImplImportModalHeaderLabel" runat="server"></span></h4>
</div>
<div class="modal-body">
    <div id="policytab8ImplImportModalID" runat="server" class="form-group hide"></div> 
    <table class="table table-bordered">
        <thead>
            <tr>
                <th style="width:55px;">Жил</th>
                <th style="width:140px;">Хагас жил</th>
                <th>Биелэлт</th>
                <th style="width:37px;"><i class="fa fa-fw fa-paperclip text-muted hidden-md hidden-sm hidden-xs"></i></th>
                <th style="width:40px;">&nbsp;</th>
            </tr>
        </thead>
        <tbody id="policyTab8ImplImportModalTableTbody" runat="server">
            <tr>
                <td>2015</td>
                <td>Эхний хагас жил</td>
                <td>биелэлт</td>
                <td><a href="../files/policy/БодлогоНэгдсэнБиелэлт294.docx" class="btn btn-link btn-xs" style="padding:0px; border:none;" download="" title="Хавсаргасан файл татах"><i class="fa fa-paperclip fa-lg"></i></a></td>
                <td><label class="no-margin "><input type="checkbox" class="checkbox style-0" checked="checked" onclick="policyTab8ImplImportModalCheckImpl(this)"><span class="no-margin"></span></label></td>
            </tr>
        </tbody>
    </table>
</div>
<div class="modal-footer">
    <button class="btn btn-default" data-dismiss="modal" type="button"> Болих </button>
    <button id="policytab8ImplImportModalSave" class="btn btn-success btn-sm" type="button"><span class="glyphicon glyphicon-floppy-disk"></span> Хадгалах</button>
</div>
<script type="text/javascript">
    $('#policytab8ImplImportModalSave').click(function () {
        var isAnyCheck = false;
        $('#policyTab8ImplImportModalTableTbody').find('tr').each(function (index) {
            if ($('td:eq(4)', this).find(':checkbox').is(':checked')) {
                isAnyCheck = true;
            }
        });
        if (!isAnyCheck) alert('Биелэлт заавал сонгоно уу!');
        else {
            var valImplList = '';
            $('#policyTab8ImplImportModalTableTbody').find('tr').each(function (index) {
                if ($('td:eq(4)', this).find(':checkbox').is(':checked')) {
                    valImplList += '<br><b>Биелэлт ' + $('td:eq(0)', this).html() + ' - ' + $('td:eq(1)', this).html() + '</b><br>' + $('td:eq(2)', this).html();
                }
            });
            CKEDITOR.instances.policytab8ImplModalImpl.setData(CKEDITOR.instances.policytab8ImplModalImpl.getData() + valImplList);
            $('#pTab8ImplImportModal').modal('hide');
            smallBox('Сонгосон биелэлт нэгдсэн биелэлт руу', 'Амжилттай хуулагдлаа...', '#659265', 3000);
        }
    });
</script>
