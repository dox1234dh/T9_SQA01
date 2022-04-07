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
                        // if(tuanArray[tuanArray.length-1])
                        // table = createTable(input, data.data[i].monHocKiHoc.monHoc.tenMonHoc,
                        //     i+1,data.data[i].monHocKiHoc.monHoc.soTc,
                        //     data.data[i].monHocKiHoc.monHoc.soTc, data.data[i].maLopHocPhan,
                        //     data.data[i].siSoToiDa,data.data[i].siSoToiDa - data.data[i].siSoThucTe,
                        //
                        //     data.data[i].dsLichHoc[0].ngayHoc.moTa, data.data[i].dsLichHoc[0].kipHoc.tenKipHoc,
                        //     2, data.data[i].dsLichHoc[0].phongHoc.tenPhongHoc, data.data[i].dsLichHoc[0].giangvien,
                        //     tuanArray,data.data[i].maLopHocPhan,tuanArray[tuanArray.length-1])
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
    if(type == 2){
        for(let i = 0;i<type;++i){

        }
        return content
    }
    else if(type == 3){
        for(let i = 0;i<type;++i){

        }
        return content
    }
    else if(type == 4){
        for(let i = 0;i<type;++i){

        }
        return content
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
    let tuanCuoiCung = parseInt((lsTuan[lsTuan.length-1].tuanHoc.maTuanHoc).substring(7));
    let lsTuanHoc = [];
    let lastIndex = [];
    let index = 0;
    for(let i = lsTuan.length-1;i>=0;i--){
        if(lsTuan[index].kipHoc.maKipHoc == lsTuan[i].kipHoc.maKipHoc &&
            lsTuan[index].ngayHoc.moTa == lsTuan[i].ngayHoc.moTa){
            console.log(lsTuan[i].ngayHoc.moTa + " ngay thu may?")
            lastIndex.push(i);
            if(i == lsTuan.length -1)
                break;
            index = i+1;
            i = lsTuan.length;
        }

    }
    console.log(lastIndex + "  ==============vi tri cua nhung tuan trong lop")
    if(lastIndex.length == 1){
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
        return resultArr
    }
    else{
        let i = 0
        let resultArr = [];
        debugger
        for(let count = 0;count<lastIndex.length;count++){
            let result ='';

            for(i;i<=lastIndex[count];++i){
                lsTuanHoc.push(parseInt((lsTuan[i].tuanHoc.maTuanHoc).substring(7)))
                console.log(parseInt((lsTuan[i].tuanHoc.maTuanHoc).substring(7)))
                debugger
            }
            for(i = tuanDauTien;i<=tuanCuoiCung;i++){
                if(lsTuanHoc.indexOf(i)!=-1 && lsTuanHoc.indexOf(i) <= lastIndex[count]){
                    result += i-tuanDauTien + 1 > 9?(i-tuanDauTien+1).toString().substring(1):(i-tuanDauTien+1).toString();
                }
                else
                    result += '-';
            }
            resultArr.push(result)
            i=lastIndex[count] + 1;
        }
        resultArr.push(lastIndex.length)
        return resultArr
    }
}