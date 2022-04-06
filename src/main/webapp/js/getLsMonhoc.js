$(document).ready(function () {
    // debugger;
    getLsMonhoc('%20');
    $('#selectMonHoc').on('change', function () {
        var optionSelected = $("option:selected", this);
        var valueSelected = this.value;
        console.log(optionSelected)
        console.log(valueSelected)
    });
})
function getLsMonhoc(input) {
    console.log(input)
    var path = 'http://localhost:8081/monhoc/timkiem/'
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
