$(document).ready(function () {
    // debugger;
    getLsMonhoc('%20');
    $('#selectMonHoc').on('change', function () {
        let valueSelected = this.value;
        getLsHocphan(valueSelected);
    });
})
function getLsMonhoc(input) {
    console.log(input)
    let path = 'http://localhost:8081/monhoc/timkiem/'
    path = path + input;
    $('#selectMonHoc')
        .find('option')
        .remove()
        .end()
    $.ajax({
        type: 'POST',
        url: path,
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        data : JSON.stringify({'maSinhVien':localStorage.getItem("masv")}),
        success: function (data) {
            if (data.error) {
                alert(data.error);
                location.reload();
            } else {
                console.log(data.data)
                if(data.data.length > 0)
                    for(let i=0;i<data.data.length; i++){
                        $('select[id="selectMonHoc"]')
                            .append($('<option />')
                                .val(data.data[i].maMonHoc)
                                .text(data.data[i].maMonHoc + ' - ' + data.data[i].tenMonHoc + ' (' + data.data[i].soTc + 'TC)')
                            );
                    }
            }
        }
    })
}
function getLsHocphan(input) {
    console.log(input)
    let path = 'http://localhost:8081/dangkytinchi/lophocphan/'
    path = path + input;
    $('#selectMonHoc')
        .find('option')
        .remove()
        .end()
    $.ajax({
        type: 'POST',
        url: path,
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        data : JSON.stringify({'maSinhVien':localStorage.getItem("masv")}),
        success: function (data) {
            if (data.error) {
                alert(data.error);
                location.reload();
            } else {
                console.log(data.data)
                for(let i=0;i < data.data.length;i++){
                    let tuan = getLsTuan(data.data[i].dsLichHoc)
                    let table = createTable(input, data.data[i].monHocKiHoc.monHoc.tenMonHoc,
                        i+1,data.data[i].monHocKiHoc.monHoc.soTc,
                        data.data[i].monHocKiHoc.monHoc.soTc, data.data[i].maLopHocPhan,
                        data.data[i].siSoToiDa,data.data[i].siSoToiDa - data.data[i].siSoThucTe,
                        data.data[i].dsLichHoc[0].ngayHoc.moTa, data.data[i].dsLichHoc[0].kipHoc.tenKipHoc,
                        2, data.data[i].dsLichHoc[0].phongHoc.tenPhongHoc, data.data[i].dsLichHoc[0].giangvien,
                        tuan,data.data[i].maLopHocPhan)
                    $('#divTDK').append(table);
                }
            }
        }
    })
}

function createTable(MaMH, TenMH, NMH, STC, STCHP, MaLop, SiSo, CL, Thu, TenKipHoc, ST, Phong, GV, Tuan, maLopHocPhan) {
    let content = "<table class='body-table' style='border-collapse: collapse;' rules='all' border='1' cellspacing='0' cellpadding='0'>"
    + "<tbody>" + "<tr>"
    //dien thong tin cac truong
    content += "<td width='25px' align='center'>" +
    "<input type='checkbox' id ="+ maLopHocPhan + ">"
    + "</td>"

    content += "<td width='60px' align='center'>" + MaMH + "</td>"
    content += "<td width='150x' align='left'>" + TenMH + "</td>"
    content += "<td width='35px' align='center'>" + NMH + "</td>"
    content += "<td width='30px' align='center'>" + "</td>"
    content += "<td width='25px' align='center'>" + STC + "</td>"
    content += "<td width='35px' align='center'>" + STCHP + "</td>"
    content += "<td width='77px' align='center'>" + MaLop + "</td>"
    content += "<td width='28px' align='center'>" + SiSo + "</td>"
    content += "<td width='28px' align='center'>" + CL + "</td>"

    content += "<td width='20px' align='center'>" + "</td>"
    content += "<td width='35px' align='center'>" + Thu + "</td>"
    content += "<td width='50px' align='center'>" + TenKipHoc + "</td>"
    content += "<td width='30px' align='center'>" + ST + "</td>"
    content += "<td width='60px' align='center'>" + Phong + "</td>"
    content += "<td width='70px' align='center'>" + GV +"</td>"
    content += "<td style='font-size: 12px;font-family: Courier' align='left'>" +Tuan+ "</td>"
    //het
    content += "</tr></tbody></table>"
    return content
}

function getLsTuan(lsTuan) {
    let tuanDauTien = 26;
    let tuanCuoiCung = parseInt((lsTuan[lsTuan.length-1].tuanHoc.maTuanHoc).substring(7));
    let lsTuanHoc = [];
    for(let i = 0;i<lsTuan.length;i++){
        lsTuanHoc.push(parseInt((lsTuan[i].tuanHoc.maTuanHoc).substring(7)))
    }
    let result ='';
    for(let i = tuanDauTien;i<=tuanCuoiCung;++i){
        if(lsTuanHoc.indexOf(i)!=-1){
            result += i-tuanDauTien + 1 > 9?(i-tuanDauTien+1).toString().substring(1):(i-tuanDauTien+1).toString();
        }
        else
            result += '-';
    }
    return result
}