$(document).ready(function () {
    $("#btnMyModal").click(function () {
        $('#myModal').modal('toggle');

    });
    $(".close").click(function () {
        $('#myModal').modal('hide');
    });
});