String.prototype.trim = function () { return this.replace(/^\s+|\s+$/g, ''); };
String.prototype.ltrim = function () { return this.replace(/^\s+/, ''); };
String.prototype.rtrim = function () { return this.replace(/\s+$/, ''); };
String.prototype.fulltrim = function () { return this.replace(/(?:(?:^|\n)\s+|\s+(?:$|\n))/g, '').replace(/\s+/g, ' '); };

function login_onChangeType(val) {
    document.getElementById('login_divError').innerHTML = "";
    document.getElementById('login_divError').style.display = "none";
    if (val.value == "local") {
        document.getElementById('login-txtUsername').disabled = true;
        document.getElementById('login-txtPassword').disabled = true;
        document.getElementById('login-divUsername').style.display = "none";
        document.getElementById('login-divPassword').style.display = "none";
    }
    else {
        document.getElementById('login-txtUsername').disabled = false;
        document.getElementById('login-txtPassword').disabled = false;
        document.getElementById('login-divUsername').style.display = "block";
        document.getElementById('login-divPassword').style.display = "block";
    }    
}
function login_onClickCheck() {
    $("#login-btn").html('<i class="fa fa-refresh fa-spin"></i> Нэвтрэх');
    $("#login-btn").attr("disabled", "disabled");
    if (document.getElementById('login-slctType').value == "foreign") {
        if (document.getElementById('login-txtUsername').value.trim() != "" || document.getElementById('login-txtPassword').value.trim() != "") {
            login_checkDomain(document.getElementById('login-slctType').value, document.getElementById('login-txtUsername').value.trim(), document.getElementById('login-txtPassword').value.trim());
        }
        else {
            document.getElementById('login_divError').innerHTML = "Нэр, нууц үг оруулна уу.";
            document.getElementById('login_divError').style.display = "block";
            $("#login-btn").html('Нэвтрэх');
            $("#login-btn").removeAttr("disabled");
        }
    }
    else {
        login_checkDomain(document.getElementById('login-slctType').value, document.getElementById('login-txtUsername').value.trim(), document.getElementById('login-txtPassword').value.trim());
    }
}
function login_checkDomain(slctType,txtUsername,txtPassword){
    $.ajax({
        type: "POST",
        url: "ws.aspx/CheckLogin",
        data: '{val:"' + slctType + '",username:"' + txtUsername + '",pass:"' + txtPassword + '"}',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (msg) {
            var varMsg = msg.d;
            var arrMsg = varMsg.split("~");
            if (arrMsg[0] == "1") {
                document.getElementById('login_divError').innerHTML = "";
                document.getElementById('login_divError').style.display = "none";
                $("#login-btn").html('Нэвтрэх');
                $("#login-btn").removeAttr("disabled");
                $('body').addClass('animated fadeOutUp');
                window.location = "../#pg/dashboard.aspx";
            }
            else {
                document.getElementById('login_divError').innerHTML = arrMsg[1];
                document.getElementById('login_divError').style.display = "block";
                $("#login-btn").html('Нэвтрэх');
                $("#login-btn").removeAttr("disabled");
            }
        },
        failure: function (response) {
            alert(response.d);
        }
    });
}

function submitOnEnter(inputElement, event) {
    if (event.keyCode == 13) { // No need to do browser specific checks. It is always 13.  
        $('#login-btn').click();
    }
}