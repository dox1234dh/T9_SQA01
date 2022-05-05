$(document).ready(function () {
    setTuanHoc();
    getApiTkb("TUANHOC26");
})
function getApiTkb(id) {
    let path = "http://localhost:8081/dangkytinchi/xemthoikhoabieu/" + localStorage.getItem("masv");
    let input = {
        "maTuanHoc": id,
    }
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
                createTkb(data.data);
            }
        },
    })
}

function setTuanHoc() {
    $.ajax({
        type: 'GET',
        url: "http://localhost:8081/tuanhoc/dstuanhoc",
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        success: function (data) {
            if (data.error) {
               alert(data.error);
               location.reload();
            } else {
               // console.log(data.data);
               $.each(data.data, function (i, item) {
                    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').append($('<option>', {
                        value: item.maTuanHoc,
                        text : item.tenTuanHoc + " [" + item.moTa + "]"
                    }));
               });
            }
        },
    })
}

function getIdTuanHoc() {
    let e = document.getElementById("ctl00_ContentPlaceHolder1_ctl00_ddlTuan");
    let idTuanHoc = e.value;
    getApiTkb(idTuanHoc)
}

function createTkb(data) {
    let flag = 0;
    let index;
    let location;
    let dataTkb = data
    // console.log(dataTkb)
    let content = "<tbody>"
    for(let i=0;i<12;++i){
        index = 9;
        location = 0;
        content += "<tr>\n" +
            "<td title=\"Tiết "+ (i+1) +"\" align=\"center\" style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;\">\n" +
            "    Tiết " + (i+1)+ "\n" +
            "</td>\n";
        if(flag >0) {
            index = index - flag;
            location = flag;
            flag = 0;
        }
        for(let j = 2 ;j < index; j++){
            let check = false;
            for(let z = 0;z<dataTkb.length;++z){
                let kiphoc = getKipHoc(dataTkb[z])*2-2;
                let ngayhoc = getNgayHoc(dataTkb[z]);
                if(ngayhoc>index)
                    ngayhoc -= flag;
                if(i === kiphoc && j === ngayhoc){
                    let thu = ngayhoc<8?"Thứ " + ngayhoc:"Chủ nhật";
                    content += "<td onmouseover=\"ddrivetip('" +
                        dataTkb[z].lopHocPhan.maLopHocPhan + "','" +
                        dataTkb[z].lopHocPhan.monHocKiHoc.monHoc.tenMonHoc+"','" +
                        dataTkb[z].lopHocPhan.monHocKiHoc.monHoc.maMonHoc +"', '" +
                        thu +"','" +
                        dataTkb[z].lopHocPhan.monHocKiHoc.monHoc.soTc+ "','"+
                        dataTkb[z].phongHoc.tenPhongHoc+"','" +
                        kiphoc+
                        "','2','" +
                        dataTkb[z].giangvien +
                        "','09/02/2022'," +
                        "'19/05/2022',"+
                        "'',"+
                        "'420',"+
                        "'Mã Môn Học-Tên Môn Học-Phòng Học-Thứ-Tiết Bắt Đầu-Số Tiết-Giảng Viên-Bắt Đầu Từ: - Đến -Lớp')\" onmouseout='hideddrivetip()'\n" + "rowspan='2'\n" + "style=\"background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">";
                    content += "<table cellpadding=\"0\" border=\"0\" cellspacing=\"0\"\n" +
                        "style=\"text-align:left;width:90px;cursor:pointer\"\n" +
                        "class=\"textTable\">\n" +
                        "<tbody>\n" +
                        "<tr>\n" +
                        "<td width=\"90px\">\n" +
                        "<span style=\"color:Teal\">"+dataTkb[z].lopHocPhan.monHocKiHoc.monHoc.tenMonHoc+"</span>\n" +
                        "\n" +
                        "</td>\n" +
                        "</tr>\n" +
                        "<tr>\n" +
                        "<td width=\"90px\">\n" +
                        "<span style=\"font-style:italic; color:gray\">Phòng:</span>\n" +
                        "<span style=\"color:Teal\">"+dataTkb[z].phongHoc.tenPhongHoc+"</span>\n" +
                        "</td>\n" +
                        "</tr>\n" +
                        "</tbody>\n" +
                        "</table></td>"
                    flag+=1;
                    check = true;
                    break;
                }
            }
            if(check === false){
                content += "<td style=\"border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\"></td>\n";
            }
        }
        content += "<td title=\"Tiết "+ (i+1) +"\" align=\"center\" style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;\">\n" +
        "    Tiết " + (i+1)+ "\n" +
        "</td>\n" +
        " </tr>"
    }
    content += "<tr>\n" +
        "<td style=\"border-color:Gray;border-width:1px;border-style:solid;height:22px;\"></td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ HAI\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ BA\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ TƯ\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ NĂM\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ SÁU\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    THỨ BẢY\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    CHỦ NHẬT\n" +
        "</td>\n" +
        "</tr>"
    content += "</tbody>"
    $('#TKB tbody').remove();
    $('#TKB').append(content);
}
function getKipHoc(data) {
    let result = data.kipHoc.maKipHoc.split("0");
    return parseInt(result[1]);
}
function getNgayHoc(data) {
    switch (data.ngayHoc.moTa){
        case "Hai":
            return 2;
            break;
        case "Ba":
            return 3;
            break;
        case "Bốn":
            return 4;
            break;
        case "Năm":
            return 5;
            break;
        case "Sáu":
            return 6;
            break;
        case "Bảy":
            return 7;
            break;
        case "CN":
            return 8;
            break;
    }
}

function btnafter() {
    let tuanhoc = $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val();
    let arr = tuanhoc.split("C")
    let so = parseInt(arr[1]);
    console.log(so)
    if(so<47)
        so+=1;
    let result = "TUANHOC" + so;
    console.log(result)
    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val(result);
    getApiTkb(result)
}
function btnbefore() {
    let tuanhoc = $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val()
    let arr = tuanhoc.split("C")
    let so = parseInt(arr[1]);
    console.log(so)
    if(so>=27)
        so-=1;
    let result = "TUANHOC" + so;
    console.log(result)
    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val(result);
    getApiTkb(result)
}