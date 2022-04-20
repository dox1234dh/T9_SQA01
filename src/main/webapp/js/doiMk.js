function doiMk(obj) {
    let mkHientai = $('#MKHienTai').val();
    let mkMoi = $('#MKMoi').val();
    let mkXacnhan = $('#XacNhanMK').val();
    if(mkMoi !== mkXacnhan){
        alert("Mật khẩu mới và mật khẩu xác nhận không trùng khớp")
        return
    }
    let path = 'http://localhost:8081/sinhvien/doimatkhau/'
    $.ajax({
        type: 'POST',
        url: path,
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        data : JSON.stringify({'taiKhoan':localStorage.getItem("masv"),
                                    'matKhau':mkHientai,
                                    'matKhauMoi': mkMoi}),
        success: function (data) {
            if (data.error) {
                alert(data.error);
                location.reload();
            } else {
                alert("Thay đổi mật khẩu thành công, vui lòng đăng nhập lại")
                document.location.href = "./index.jsp"
            }
        }
    })
}

function xoaForm() {
    $("#MKHienTai").val('');
    $('#MKMoi').val('');
    $('#XacNhanMK').val('');
}