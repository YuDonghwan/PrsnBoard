


$(document).ready(function() {
    //체크박스 전체 선택/해제
    $('#chk_All').click(function() {
        if ($(this).is(':checked')) {
            $('.chk').prop('checked', true);
        } else {
            $('.chk').prop('checked', false);
        }
    });
});



$(document).ready(function() {
    $("#deleteBtn").click(function() {
        var ids = [];
        $(".chk:checked").each(function() {
            ids.push($(this).val());
        });
        $.ajax({
            url:'/board/board/deletechk', //request 보낼 서버의 경로
            type:'post', // 메소드(get, post, put 등)
            data: {ids: ids.join(",")}, //보낼 데이터
            success: function(data) {
                //서버로부터 정상적으로 응답이 왔을 때 실행
                location.reload();
            },
            error: function(err) {
                //서버로부터 응답이 정상적으로 처리되지 못햇을 때 실행
            }
        });

    });
});

