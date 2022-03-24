function login() {
    var path = 'http://localhost:8081/sinhvien/dangnhap'
    debugger;
    var tk = $('#ctl00_ContentPlaceHolder1_ctl00_txtTaiKhoa').val().trim()
    var mk = $('#ctl00_ContentPlaceHolder1_ctl00_txtMatKhau').val().trim()
    var input = {
        "taiKhoan" : tk,
        "matKhau" : mk,
    };
    $.ajax({
        type: 'POST',
        url: path,
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        data : JSON.stringify(input),
        success: function (data) {
            if(data.error){
                alert(data.error);
                location.reload();
            }
            else
                document.location.href = '/trangchu.jsp';
        },

    })
}