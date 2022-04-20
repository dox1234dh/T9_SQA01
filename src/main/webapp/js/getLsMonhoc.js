let dataGlobal;
let arrSave = [];
class listMonHoc {
    // constructor(masv, ten) {
    //     this.masv = masv;
    //     this.ten = ten;
    // }
}
$(document).ready(function () {
    // debugger;
    ready('%20');
    $('#selectMonHoc').on('change', function () {
        let valueSelected = this.value;
        getLsHocphan(valueSelected);
    });
    $('#divKQ table').remove();
    getDK();

})
function ready(input) {
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
                // console.log(data.data)
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
function getDK() {
    let path = 'http://localhost:8081/dangkytinchi/luudangky/' + localStorage.getItem("masv")
    $.ajax({
        type: 'GET',
        url: path,
        crossDomain: true,
        processData: true,
        success: function (data) {
            if (data.error) {
                alert(data.error);
                location.reload();
            } else {
                console.log(data.data);
                //xu ly thanh 1 list cac mon hoc
                // let dataList = []
                // dataList.push();
                for(let i = 0 ;i<data.data.length;i++){
                    data.data[i].lopHocPhan.statusDk = "Đã lưu vào CSDL"
                    arrSave.push(data.data[i].lopHocPhan)
                }
                createTableDK(arrSave);
            }
        }
    })
}
function getLsMonhoc(input) {
    // console.log(input)
    let path = 'http://localhost:8081/monhoc/timkiembutton/'
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
                // console.log(data.data)
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
    // console.log(input)
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
                let table;
                dataGlobal = data.data
                // arrLopHocPhan = [];
                // debugger;
                for(let i=0;i < data.data.length;i++){
                    // arrLopHocPhan.push(data.data[i].maLopHocPhan);
                    if(data.data[i].dsLichHoc.filter(x => x.kipHoc.maKipHoc==data.data[i].dsLichHoc[0].kipHoc.maKipHoc).length < data.data[i].dsLichHoc.length){
                        let tuanArray =getLsTuan(data.data[i].dsLichHoc)
                        // console.log(tuanArray)
                        let arr01 = []; let arr02 = []; let arr03 = []; let arr04 = []; let arr05 = [];
                        // i * 2 - 1 = index data
                        for(let j = 1;j<= tuanArray.length/2;++j){
                            arr01.push(data.data[i].dsLichHoc[tuanArray[j*2-1]].ngayHoc.moTa);
                            arr02.push(data.data[i].dsLichHoc[tuanArray[j*2-1]].kipHoc.tenKipHoc);
                            arr03.push(data.data[i].dsLichHoc[tuanArray[j*2-1]].phongHoc.tenPhongHoc);
                            arr04.push(data.data[i].dsLichHoc[tuanArray[j*2-1]].giangvien);
                            arr05.push(tuanArray[j*2-2])
                        }
                        table = createTable(input, data.data[i].monHocKiHoc.monHoc.tenMonHoc,
                            i+1,data.data[i].monHocKiHoc.monHoc.soTc,
                            data.data[i].monHocKiHoc.monHoc.soTc, data.data[i].maLopHocPhan,
                            data.data[i].siSoToiDa,data.data[i].siSoToiDa - data.data[i].siSoThucTe,
                            arr01, arr02, 2, arr03, arr04,
                            arr05,data.data[i].maLopHocPhan,tuanArray.length/2)
                    }
                    else{
                        let tuan = getLsTuan(data.data[i].dsLichHoc)
                        console.log(tuan)
                        table = createTable(input, data.data[i].monHocKiHoc.monHoc.tenMonHoc,
                            i+1,data.data[i].monHocKiHoc.monHoc.soTc,
                            data.data[i].monHocKiHoc.monHoc.soTc, data.data[i].maLopHocPhan,
                            data.data[i].siSoToiDa,data.data[i].siSoToiDa - data.data[i].siSoThucTe,
                            data.data[i].dsLichHoc[0].ngayHoc.moTa, data.data[i].dsLichHoc[0].kipHoc.tenKipHoc,
                            2, data.data[i].dsLichHoc[0].phongHoc.tenPhongHoc, data.data[i].dsLichHoc[0].giangvien,
                            tuan[0],data.data[i].maLopHocPhan,1)
                    };
                    $('#divTDK').append(table);
                }
            }
        }
    })
}

function createTable(MaMH, TenMH, NMH, STC, STCHP, MaLop, SiSo, CL, Thu, TenKipHoc, ST, Phong, GV, Tuan, maLopHocPhan,type) {
    let content = "<table class='body-table' style='border-collapse: collapse;' rules='all' border='1' cellspacing='0' cellpadding='0'>"
    + "<tbody>";
    //dien thong tin cac truong
    if(arrSave.filter(x => x.maLopHocPhan == MaLop).length > 0){
        if(arrSave.filter(x => x.maLopHocPhan == MaLop)[0].statusDk == "Đã lưu vào CSDL")
            content += "<tr id='changeColor" + maLopHocPhan + "' style='background-color: #CCCCCC'>" + "<td width='25px' align='center'>" +
                "<input type='checkbox' checked disabled onchange='checkedComboBox(this.id)' id ="+ maLopHocPhan + ">"
                + "</td>"
        else
            content += "<tr id='changeColor" + maLopHocPhan + "' style='background-color: #CCCCCC'>" + "<td width='25px' align='center'>" +
                "<input type='checkbox' checked onchange='checkedComboBox(this.id)' id ="+ maLopHocPhan + ">"
                + "</td>"
    }

    else
        content += "<tr id='changeColor" + maLopHocPhan + "'>" + "<td width='25px' align='center'>" +
        "<input type='checkbox' onchange='checkedComboBox(this.id)' id ="+ maLopHocPhan + ">"
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
    if(type != 1){
        // console.log(type)
        content +=  "<td width='20px' align='center'>" + initData(type, null) +"</td>";
        content += "<td width='35px' align='center'>" + initData(type, Thu) + "</td>"
        content += "<td width='50px' align='center'>" + initData(type, TenKipHoc) + "</td>"
        content += "<td width='30px' align='center'>" + initData(type,ST) + "</td>"
        content += "<td width='60px' align='center'>" + initData(type,Phong) + "</td>"
        content += "<td width='70px' align='center'>" + initData(type,GV) +"</td>"
        content += "<td style='font-size: 12px;font-family: Courier' align='left'>" +initData(type,Tuan)+ "</td>"
        //het
        content += "</tr></tbody></table>"
        return content;
    }
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
    let tuanCuoiCung = 42;

    let lastIndex = [];
    let index = 0;
    for(let i = lsTuan.length-1;i>=0;i--){
        if(lsTuan[index].kipHoc.maKipHoc == lsTuan[i].kipHoc.maKipHoc &&
            lsTuan[index].ngayHoc.moTa == lsTuan[i].ngayHoc.moTa){
            // console.log(lsTuan[i].ngayHoc.moTa + " ngay thu may?")
            lastIndex.push(i);
            if(i == lsTuan.length -1)
                break;
            index = i+1;
            i = lsTuan.length;
        }

    }
    // console.log(lastIndex + "  ==============vi tri cua nhung tuan trong lop")
    let lsTuanHoc = [];
    if(lastIndex.length == 1){
        lsTuanHoc = [];
        for(let i = 0;i<lsTuan.length;i++){
            lsTuanHoc.push(parseInt((lsTuan[i].tuanHoc.maTuanHoc).substring(7)))
        }
        let result ='';
        let resultArr = [];
        for(let i = tuanDauTien;i<=tuanCuoiCung;++i){
            if(lsTuanHoc.indexOf(i)!=-1){
                result += i-tuanDauTien + 1 > 9?(i-tuanDauTien+1).toString().substring(1):(i-tuanDauTien+1).toString();
            }
            else
                result += '-';
        }
        resultArr.push(result)
        resultArr.push(lastIndex[0])
        return resultArr
    }
    else{
        let i = 0
        let resultArr = [];
        for(let count = 0;count<lastIndex.length;count++){
            lsTuanHoc = [];
            let result ='';
            for(i;i<lastIndex[count]+1;++i){
                lsTuanHoc.push(parseInt((lsTuan[i].tuanHoc.maTuanHoc).substring(7)))
            }
            for(i = tuanDauTien;i<=tuanCuoiCung;i++){
                if(lsTuanHoc.indexOf(i)!=-1 && lsTuanHoc.indexOf(i) <= lastIndex[count]){
                    result += i-tuanDauTien + 1 > 9?(i-tuanDauTien+1).toString().substring(1):(i-tuanDauTien+1).toString();
                }
                else
                    result += '-';
            }
            resultArr.push(result)
            resultArr.push(lastIndex[count])
            i=lastIndex[count] + 1;
        }
        return resultArr
    }
}

function initData(type, arr) {
    let content = '';
    if (arr == 2){
        for(let i = 0;i<type;++i){
            content += "<div class='top-fline'>" + 2 + "</div>"
            if(type - 1 != i) content += "<div class='fline'>" + " " + "</div>";
        }
    }
    else if(arr != null)
        for(let i = 0;i<type;++i){
            content += "<div class='top-fline'>" + arr[i] + "</div>"
            if(type - 1 != i) content += "<div class='fline'>" + " " + "</div>";
        }
    else
        for(let i = 0;i<type;++i){
            content += "<div class='top-fline'>" + "</div>"
            if(type - 1 != i) content += "<div class='fline'>" + " " + "</div>";
        }
    return content;
}

function checkedComboBox(maLopHocPhan) {
    let id = 'changeColor' + maLopHocPhan
    console.log(maLopHocPhan)
    console.log(dataGlobal)
    // debugger
    if(document.getElementById(maLopHocPhan).checked){
        //them vo bang xem dang ky
        document.getElementById(id).style.backgroundColor = '#CCCCCC';
        let save = dataGlobal.filter(x => x.maLopHocPhan===maLopHocPhan);
        save[0].statusDk = "Chưa lưu vào cơ sở dữ liệu"
        if(save.length > 0)  arrSave.push(save[0]);
        let arrMH = []
        for(let i = 0 ;i< arrSave.length;i++){
            arrMH.push(arrSave[i].monHocKiHoc.monHoc.maMonHoc)
        }
        let validate = new Set(arrMH).size !== arrMH.length
        if(validate){
            arrSave.pop();
            document.getElementById(maLopHocPhan).checked = false;
            document.getElementById(id).style.backgroundColor = '#FFFFFF';
            alert("Môn học này đã chọn rồi, vui lòng kiểm tra lại!")
            return
        }
    }
    else{
        //xoa khoi bang them dang ky
        document.getElementById(id).style.backgroundColor = '#FFFFFF';
            let save = dataGlobal.filter(x => x.maLopHocPhan === maLopHocPhan);
            if(save.length > 0){
                for(let i = 0 ;i<arrSave.length;i++){
                    if(arrSave[i].maLopHocPhan === save[0].maLopHocPhan){
                        arrSave.splice(i, 1);
                        break;
                    }
                }
            }
    }
    console.log(arrSave)
    createTableDK(arrSave);
}

function createTableDK(arrSave) {
    let totalSTC = 0;
    let totalSTCHP = 0;
    let totalHP = 0;
    let totalMienGiam = 0;
    let totalPhaiDong = 0;
    let content = "<table class='body-table' style='border-collapse: collapse; color:Navy;' rules='all' border='1' cellspacing='0' cellpadding='0'>"
        + "<tbody>";
    if(arrSave.length > 0 ){
        for(let i =0;i<arrSave.length ;i++){
            totalSTC += arrSave[i].monHocKiHoc.monHoc.soTc;
            totalSTCHP += arrSave[i].monHocKiHoc.monHoc.soTc;
            totalHP += (arrSave[i].monHocKiHoc.monHoc.soTc*480000);
            totalPhaiDong += (arrSave[i].monHocKiHoc.monHoc.soTc*480000);
            content += "<tr>"
            content += "<td style='width: 30px;' valign='middle' align='center'>" + (i+1) + "</td>"
            content += "<td style='width: 60px;' valign='middle' align='center'>" + arrSave[i].monHocKiHoc.monHoc.maMonHoc + "</td>"
            content += "<td style='width: 180px;' valign='middle' align='center'>" + arrSave[i].monHocKiHoc.monHoc.tenMonHoc + "</td>"
            content += "<td style='width: 50px;' valign='middle' align='center' >"+ arrSave[i].maLopHocPhan +"</td>"
            content += "<td style='width: 30px;' valign='middle' align='center' ></td>"
            content += "<td style='width: 35px;' valign='middle' align='center'>" + arrSave[i].monHocKiHoc.monHoc.soTc + "</td>"
            content += "<td style='width: 35px;' valign='middle' align='center'>" + arrSave[i].monHocKiHoc.monHoc.soTc + "</td>"
            content += "<td style='width: 80px;' valign='middle' align='right'>" + (arrSave[i].monHocKiHoc.monHoc.soTc*480000) + "</td>"
            content += "<td style='width: 80px;' valign='middle' align='right'></td>"
            content += "<td style='width: 80px;' valign='middle' align='right'>" + (arrSave[i].monHocKiHoc.monHoc.soTc*480000) + "</td>"
            content += "<td valign='middle' align='left'>" + arrSave[i].statusDk + "</td>"
            if(arrSave[i].statusDk == "Đã lưu vào CSDL"){
                content += "<td valign='middle' align='left' style='width: 50px;'>" +
                    "<input type='checkbox' id='" + arrSave[i].monHocKiHoc.monHoc.maMonHoc +"' name='chk_xoa' value='" + arrSave[i].maLopHocPhan +"'>" +
                    "</td>"
            }
            else{
                content += "<td valign='middle' align='left' style='width: 50px;'>" +
                    "<input type='checkbox' id='" + arrSave[i].monHocKiHoc.monHoc.maMonHoc +"' disabled name='chk_xoa' value='" + arrSave[i].maLopHocPhan +"'>" +
                    "</td>"
            }

        }
        content += "<tr style=\"font-weight: bold;\" height=\"20px\">\n" +
            "<td valign=\"middle\" align=\"center\" colspan=\"5\">Tổng cộng</td>\n" +
            "<td valign=\"middle\" align=\"center\">"+ totalSTC +"</td>\n" +
            "<td valign=\"middle\" align=\"center\">" + totalSTC + "</td>\n" +
            "<td valign=\"middle\" align=\"right\">"+totalHP+"</td>\n" +
            "<td valign=\"middle\" align=\"right\">00&nbsp;</td>\n" +
            "<td valign=\"middle\" align=\"right\">"+totalPhaiDong+"</td>\n" +
            "<td valign=\"middle\" align=\"left\"></td>\n" +
            "<td valign=\"middle\" align=\"center\">\n" +
            "</td>\n" +
            "\n" +
            "</tr>"
        content += "</tbody></table>"
    }
    else{
        content += "</tbody></table>"
    }
    $('#divKQ table').remove();
    $('#divKQ').append(content);
}
function luudk() {
    // arrSave : danh sách môn học đã chọn để lưu
    // validate
    let path = 'http://localhost:8081/dangkytinchi/luudangky/' + localStorage.getItem("masv")
    let totalTc = 0;
    let dataSend = [];
    for(let i = 0;i< arrSave.length;i++){
        if(arrSave[i].statusDk === "Chưa lưu vào cơ sở dữ liệu"){
            let dataIdx = {"maLopHocPhan": arrSave[i].maLopHocPhan}
            dataSend.push(dataIdx)
        }
        totalTc += arrSave[i].monHocKiHoc.monHoc.soTc;
    }
    if(totalTc < 14){
        alert("Chưa đủ tối thiểu 14 tín chỉ để lưu đăng ký")
        return;
    }
    console.log(dataSend)
    $.ajax({
        type: 'POST',
        url: path,
        contentType: 'application/json',
        dataType: "JSON",
        crossDomain: true,
        processData: true,
        data : JSON.stringify(dataSend),
        success: function (data) {
            if (data.error) {
                alert(data.error);
            } else {
                alert(data.data)
                location.reload();
            }
        }
    })
}

function xoaMonHocDk() {
    let lsDelMonHoc = []
    $("input[name='chk_xoa']:checkbox:checked").each(function (index, obj) {
        // loop all checked items
        console.log(index)
        lsDelMonHoc.push(this.getAttribute('value'))
    });
    console.log(lsDelMonHoc)
    // $.ajax({
    //     type: 'POST',
    //     url: path,
    //     contentType: 'application/json',
    //     dataType: "JSON",
    //     crossDomain: true,
    //     processData: true,
    //     data : JSON.stringify({'maSinhVien':localStorage.getItem("masv")}),
    //     success: function (data) {
    //         if (data.error) {
    //             alert(data.error);
    //             location.reload();
    //         } else {
    //             // console.log(data.data)
    //
    //         }
    //     }
    // })
}