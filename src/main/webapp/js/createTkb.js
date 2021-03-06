$(document).ready(function () {
    setTuanHoc();
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
                let idTuanHocToday;
                var today = new Date();
                var dd = String(today.getDate()).padStart(2, '0');
                var mm = String(today.getMonth() + 1).padStart(2, '0'); //January is 0!
                var yyyy = today.getFullYear();

                today = new Date(yyyy,mm,dd);
                for(let i =0 ;i<data.data.length; i++){
                    //mota : dd/mm-dd/mm/yy
                    let mileStone = data.data[i].moTa.split('-');
                    let startWeek = mileStone[0].split('/'); //  dd/mm -> ['dd','mm']
                    let startDay = new Date('2022',startWeek[1],startWeek[0]);
                    let endWeek = mileStone[1].split('/');   //  dd/mm/yy -> ['dd','mm','yyyy']
                    let endDay = new Date('2022',endWeek[1],endWeek[0]);
                    if(startDay<=today && today <=endDay){
                        // console.log(data.data[i].maTuanHoc);
                        idTuanHocToday = data.data[i].maTuanHoc;
                        getApiTkb(data.data[i].maTuanHoc);
                        break;
                    }
                }
                $.each(data.data, function (i, item) {
                    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').append($('<option>', {
                        value: item.maTuanHoc,
                        text : item.tenTuanHoc + " [" + item.moTa + "]"
                    }));

               });
                $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val(idTuanHocToday);
            }
        },
    })
}

function getIdTuanHoc() {
    let e = document.getElementById("ctl00_ContentPlaceHolder1_ctl00_ddlTuan");
    let idTuanHoc = e.value;
    // console.log(idTuanHoc)
    if(idTuanHoc === "TUANHOC26"){
        $('#btnBefore').attr('disabled','disabled');
        $('#btnAfter').attr('disabled',false);
    }
    else if(idTuanHoc === "TUANHOC47"){
        $('#btnAfter').attr('disabled','disabled');
        $('#btnBefore').attr('disabled',false)
    }
    else{
        $('#btnAfter').attr('disabled',false);
        $('#btnBefore').attr('disabled',false)
    }
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
            "<td title=\"Ti???t "+ (i+1) +"\" align=\"center\" style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;\">\n" +
            "    Ti???t " + (i+1)+ "\n" +
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
                    let thu = ngayhoc<8?"Th??? " + ngayhoc:"Ch??? nh???t";
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
                        "'M?? M??n H???c-T??n M??n H???c-Ph??ng H???c-Th???-Ti???t B???t ?????u-S??? Ti???t-Gi???ng Vi??n-B???t ?????u T???: - ?????n -L???p')\" onmouseout='hideddrivetip()'\n" + "rowspan='2'\n" + "style=\"background-color:Beige;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">";
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
                        "<span style=\"font-style:italic; color:gray\">Ph??ng:</span>\n" +
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
        content += "<td title=\"Ti???t "+ (i+1) +"\" align=\"center\" style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:50px;\">\n" +
        "    Ti???t " + (i+1)+ "\n" +
        "</td>\n" +
        " </tr>"
    }
    content += "<tr>\n" +
        "<td style=\"border-color:Gray;border-width:1px;border-style:solid;height:22px;\"></td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? HAI\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? BA\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? T??\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? N??M\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? S??U\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    TH??? B???Y\n" +
        "</td>\n" +
        "<td align=\"center\"\n" +
        "    style=\"color:White;background-color:#6699cc;border-color:Gray;border-width:1px;border-style:solid;height:22px;width:110px;\">\n" +
        "    CH??? NH???T\n" +
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
        case "T??":
            return 4;
            break;
        case "N??m":
            return 5;
            break;
        case "S??u":
            return 6;
            break;
        case "B???y":
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
    // console.log(so)
    if(so<47)
        so+=1;
    let result = "TUANHOC" + so;
    // console.log(result)
    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val(result);
    getApiTkb(result)
    $('#btnAfter').attr('disabled',false);
    $('#btnBefore').attr('disabled',false)
    if(so !== 47){
        $('#btnAfter').attr('disabled',false);
        $('#btnBefore').attr('disabled',false)
    }
    if(so === 47){
        $('#btnAfter').attr('disabled','disabled');
        $('#btnBefore').attr('disabled',false)
    }
}
function btnbefore() {
    let tuanhoc = $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val()
    let arr = tuanhoc.split("C")
    let so = parseInt(arr[1]);
    // console.log(so)
    if(so>=27)
        so-=1;
    let result = "TUANHOC" + so;
    // console.log(result)
    $('#ctl00_ContentPlaceHolder1_ctl00_ddlTuan').val(result);
    getApiTkb(result)
    if(so !== 26){
        $('#btnAfter').attr('disabled',false);
        $('#btnBefore').attr('disabled',false)
    }
    if(so === 26){
        $('#btnBefore').attr('disabled','disabled');
        $('#btnAfter').attr('disabled',false);
    }

}