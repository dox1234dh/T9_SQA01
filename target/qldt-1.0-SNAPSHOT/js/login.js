class User {
    constructor(masv, ten) {
        this.masv = masv;
        this.ten = ten;
    }
}
let userGlobal = new User()
function login() {
    var path = 'http://localhost:8081/sinhvien/dangnhap'
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
            if (data.error) {
                alert(data.error);
                location.reload();
            } else {
                localStorage.setItem("masv", data.data["maSinhVien"])
                localStorage.setItem("ten",data.data["tenSinhVien"])
                userGlobal = new User(data.data["maSinhVien"], data.data["tenSinhVien"])
                document.location.href = '/trangchu.jsp';
            }
        },

    })
}

function setName() {
    if(localStorage.getItem("ten") != null && localStorage.getItem("masv") != null)
        document.getElementById("ctl00_Header1_Logout1_lblNguoiDung").innerHTML ="Chào bạn "
            + localStorage.getItem("ten")
            + "(" + localStorage.getItem("masv")
            + ")"
}
function clearSession() {
    localStorage.clear()
}
$(document).ready(function () {
    setName()
})

