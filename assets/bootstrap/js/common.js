// main page : aside
    (function () {
        'use strict'
    
        window.addEventListener('load', function () {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation')
    
        // Loop over them and prevent submission
        Array.prototype.filter.call(forms, function (form) {
            form.addEventListener('submit', function (event) {
            if (form.checkValidity() === false) {
                event.preventDefault()
                event.stopPropagation()
            }
            form.classList.add('was-validated')
            }, false)
        })
        }, false)
    }())
//. main page : aside

// join-in.html
    $("#chkboxAll").change(function(){
        var chkbox1st = $(this).parent('label').parent('div').parent('div').next('div').children('div').next('div').find('label');
        var chkbox2rd
        var chkbox3th
        if($("#chkboxAll").is(":checked")){
            // alert("체크박스 체크했음!");
        }else{
            // alert("체크박스 체크 해제!");
        }
    });
//. join-in.html

// pop - up
    $('.btn-example').click(function(){
        var $href = $(this).attr('href');
        layer_popup($href);
    });

    function layer_popup(el){
        var $el = $(el);        //레이어의 id를 $el 변수에 저장
        var isDim = $el.prev().hasClass('dimBg');   //dimmed 레이어를 감지하기 위한 boolean 변수

        isDim ? $('.dim-layer').fadeIn() : $el.fadeIn();

        var $elWidth = ~~($el.outerWidth()),
            $elHeight = ~~($el.outerHeight()),
            docWidth = $(document).width(),
            docHeight = $(document).height();

        // 화면의 중앙에 레이어를 띄운다.
        if ($elHeight < docHeight || $elWidth < docWidth) {
            $el.css({
                marginTop: -$elHeight /2,
                marginLeft: -$elWidth/2
            })
        } else {
            $el.css({top: 0, left: 0});
        }

        $el.find('a.btn-layerClose').click(function(){
            isDim ? $('.dim-layer').fadeOut() : $el.fadeOut(); // 닫기 버튼을 클릭하면 레이어가 닫힌다.
            return false;
        });

        $('.layer .dimBg').click(function(){
            $('.dim-layer').fadeOut();
            return false;
        });
    }
//. pop - up

// score star
    var starRating = function(){
        var $star = $(".star-input"),
            $result = $star.find("output>b");
        $(document)
        .on("focusin", ".star-input>.input", function(){
        $(this).addClass("focus");
        })
        .on("focusout", ".star-input>.input", function(){
        var $this = $(this);
        setTimeout(function(){
            if($this.find(":focus").length === 0){
            $this.removeClass("focus");
            }
        }, 100);
        })
        .on("change", ".star-input :radio", function(){
        $result.text($(this).next().text());
        })
        .on("mouseover", ".star-input label", function(){
        $result.text($(this).text());
        })
        .on("mouseleave", ".star-input>.input", function(){
        var $checked = $star.find(":checked");
        if($checked.length === 0){
            $result.text("0");
        } else {
            $result.text($checked.next().text());
        }
        });
    };
    starRating();
//. score star


// drop down - client_6_reservation
    var lblName = $('.lblName')
    $('.dropdown-mypet-item').click(function(){
        var mypetName = $(this).html();
        $(this).parents('div').prev('button').html(mypetName);
        lblName.text(mypetName);
    });
//. drop down - client_6_reservation


// radio : able / disable - client_6_reservation
    // disabled 처리 - $("#txtBox").attr("disabled",true);
    // disabled 삭제 - $("#txtBox").removeAttr("disabled");

    var table = $('.tbl_client_reservation tbody');

    table.find('tr').each(function (i) {
        var $tds = $(this).find('td'),
            $reservCheck = $tds.eq(1).find('input[type=radio]'),
            reservTF = $tds.eq(0).text()
        if(reservTF == '불가능'){
            $reservCheck.attr("disabled", true);
        }
    });
//. radio : able / disable - client_6_reservation


// radio : get time value - client_6_reservation
    var timeResult = $('#timeResult');
    $('input:radio[name=timeRadio]').click(function(){
        var radioVal = $(this).val();
        timeResult.val(radioVal);
    });
//. radio : get time value - client_6_reservation


// calender - admin_1_reservation.form
    var adminDateResult = $("#adminDateResult");
    $("#adminCalendar").datepicker({
        onSelect: function(){
            var date = $.datepicker.formatDate("yy-mm-dd", $("#adminCalendar").datepicker("getDate"));
            adminDateResult.val(date);
        }
    });
//. calender - admin_1_reservation.form


// calender - client_6_reservation.form
    var dateResult = $('#dateResult');
    $("#date1").datepicker({
        onSelect: function(){
            var date = $.datepicker.formatDate("yy-mm-dd", $("#date1").datepicker("getDate"));
            dateResult.val(date);
        }
    });
//. calender - client_6_reservation.form