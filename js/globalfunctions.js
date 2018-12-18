$(".js-status-update a").click(function () {
    var selText = $(this).text();
    var $this = $(this);
    $this.parents('.btn-group').find('.dropdown-toggle').html(selText + ' <span class="caret"></span>');
    $this.parents('.dropdown-menu').find('li').removeClass('active');
    $this.parent().addClass('active');
});

function showLoader(el) {
    $('#' + el).css({ "display": "block", "background": "rgba(0, 0, 0, .3)" });
}
function hideLoader(el) {
    $('#' + el).css({ "display": "none" });
};

function exportExcel(divId) {
    window.open('data:application/vnd.ms-excel,' + encodeURIComponent($(divId).html()));
}
function exportWord(divId, filename) {
    $(divId).width(1150);
    $("" + divId + "").wordExport(filename);
}
function exportPdfData(divId) {

    Popup($(divId).html());

    function Popup(data) {
        var mywindow = window.open('', 'my div', 'height=600,width=800');
        mywindow.document.write('<html><head><title></title>');
        mywindow.document.write('</head><body >');
        mywindow.document.write(data.replace(/class="perfcont_Tab3Circle"/g, 'style="display: inline-block; min-width: 20px; font-size: 12px; line-height: 1; vertical-align: baseline; white-space: nowrap; text-align: center; border-radius: 10px; background:none; color:#000; border:1px solid #808080; padding:2px; margin:2px;"').replace(/class="perfcont_Tab3CircleChecked"/g, 'style="display: inline-block; min-width: 20px; font-size: 12px; line-height: 1; vertical-align: baseline; white-space: nowrap; text-align: center; border-radius: 10px; background:#808080; color:#fff; border:1px solid #808080; padding:2px; margin:2px; -webkit-print-color-adjust:exact;"'));
        mywindow.document.write('</body></html>');
        return true;
    }
    //window.open('http://www.htm2pdf.co.uk/display?url=' + encodeURIComponent($(divId).html()));
}


function exportPdf(divId) {
    var doc = new jsPDF();
    //var source = $(divId).html();
    var specialElementHandlers = {
        '#editor': function (element, renderer) {
            return true;
        }
    };
    doc.fromHTML(
            $(divId).get(0), // HTML string or DOM elem ref.
            15, // x coord
            15, // y coord
            {
                'width': 170, // max width of content on PDF
                'elementHandlers': specialElementHandlers
            });

    doc.save('download.pdf');
}

function PrintElem(elem) {
    Popup($(elem).html());
}
function Popup(data) {
    jQuery(".Header").hide();
    var mywindow = window.open('', '', 'left=0,top=0,width=1,height=1,toolbar=0,scrollbars=0,status=0,height=600,width=800');
    //mywindow.document.write('<html><head><title></title>');
    //mywindow.document.write('</head><body >');
    mywindow.document.write(data.replace(/class="perfcont_Tab3Circle"/g, 'style="display: inline-block; min-width: 20px; font-size: 12px; line-height: 1; vertical-align: baseline; white-space: nowrap; text-align: center; border-radius: 10px; background:none; color:#000; border:1px solid #808080; padding:2px; margin:2px;"').replace(/class="perfcont_Tab3CircleChecked"/g, 'style="display: inline-block; min-width: 20px; font-size: 12px; line-height: 1; vertical-align: baseline; white-space: nowrap; text-align: center; border-radius: 10px; background:#808080; color:#fff; border:1px solid #808080; padding:2px; margin:2px; -webkit-print-color-adjust:exact;"'));
    //mywindow.document.write('</body></html>');
    mywindow.print();
    mywindow.close();

    return true;
}
function replaceDisplayToDatabase(val) {
    return val.replace(/&quot;/g, "quot;").replace(/</g, 'lt;').replace(/>/g, 'gt;').replace(/"/g, 'quot;').replace(/'/g, "apos;").replace(/&/g, 'amp;').replace(/\\/g, "bsol;").replace(/\t/g, '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '');
}
function replaceDatabaseToDisplay(val) {
    return val.replace(/lt;/g, '<').replace(/gt;/g, '>').replace(/quot;/g, '"').replace(/amp;/g, '&').replace(/apos;/g, "'").replace(/bsol;/g, "\\");
}
//function nl2br(str, is_xhtml) {
//    var breakTag = (is_xhtml || typeof is_xhtml === 'undefined') ? '<br>' : '<br>';
//    return (str + '').replace(/([^>\r\n]?)(\r\n|\n\r|\r|\n)/g, '$1' + breakTag + '$2');
//}
function getUrlVars() {
    var vars = [], hash;
    var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
    for (var i = 0; i < hashes.length; i++) {
        hash = hashes[i].split('=');
        vars.push(hash[0]);
        vars[hash[0]] = hash[1];
    }
    return vars;
}
function smallBox(vartitle, varcontent, varcolor, vartimeout) {
    $.smallBox({
        title: vartitle,
        content: varcontent,
        color: varcolor,
        iconSmall: "fa fa-check fa-2x fadeInRight animated",
        timeout: vartimeout
    });
}
function launchHRMIS() {
    globalAjaxVar = $.ajax({
        type: "POST",
        url: "../ws/ServiceMain.svc/gotoHRMIS",
        data: '{"stid":"' + $.trim($('#indexUserId').html()) + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function () {
            window.location = 'http://hr/';
        },
        failure: function (response) {
            alert('FAILURE: ' + response.d);
        },
        error: function (xhr, status, error) {
            var err = eval("(" + xhr.responseText + ")");
            if (err.Message == 'SessionDied' || $.trim(err.Message) == 'Invalid operation. The connection is closed.') window.location = '../login';
            else window.location = '../#pg/error500.aspx';
        }
    });
}

//get url's parameter
function getURLParameter(url, name) {
    return (RegExp(name + '=' + '(.+?)(&|$)').exec(url) || [, null])[1];
}

//check roles
function funcCheckRoles(val) {
    var valBoolData = false;
    for (var i = 0; i < parseInt($('#indexUserRoleListId').html().split(',').length) ; i++) {
        for (var y = 0; y < parseInt(val.split(',').length) ; y++) {
            if ($('#indexUserRoleListId').html().split(',')[i] == val.split(',')[y]) {
                valBoolData = true;
                break;
            }
        }
    }
    return valBoolData;
}