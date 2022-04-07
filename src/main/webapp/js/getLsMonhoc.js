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
                let table;
                // debugger;
                for(let i=0;i < data.data.length;i++){
                    if(data.data[i].dsLichHoc.filter(x => x.kipHoc.maKipHoc==data.data[i].dsLichHoc[0].kipHoc.maKipHoc).length < data.data[i].dsLichHoc.length){
                        let tuanArray =getLsTuan(data.data[i].dsLichHoc)
                        console.log(tuanArray)
                        let arr01 = []; let arr02 = []; let arr03 = []; let arr04 = []; let arr05 = [];
                        // i * 2 - 1 = index data
                        for(let j = 1;j<= tuanArray.length/2;++j){
                            arr01.push(data.data[i].dsLichHoc[j*2-1].ngayHoc.moTa);
                            arr02.push(data.data[i].dsLichHoc[j*2-1].kipHoc.tenKipHoc);
                            arr03.push(data.data[i].dsLichHoc[j*2-1].phongHoc.tenPhongHoc);
                            arr04.push(data.data[i].dsLichHoc[j*2-1].giangvien);
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
    + "<tbody>" + "<tr id='changeColor'>"
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
    if(type != 1){
        console.log(type)
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