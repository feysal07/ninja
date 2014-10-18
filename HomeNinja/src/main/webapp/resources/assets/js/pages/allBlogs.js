function pageChanged(value){
    $.ajax({
        type: "GET",
        url: "./pageChanged",
        data: {pageNumber:value},

        success: function(content){
//            $("#page"+value).addClass("active");
            $("#blogList").html(content);
            $("#selectedPage").val(value);
        },

        error: function(e){
            console.log(e.message);
        }
    })
}

function next(){
    var value = parseInt($("#selectedPage").val())+1;
    $.ajax({
        type: "GET",
        url: "./pageChanged",
        data: {pageNumber:value},

        success: function(content){
//            $("#page"+value).addClass("active");
            $("#blogList").html(content);
            $("#selectedPage").val(value);
        },

        error: function(e){
            console.log(e.message);
        }
    })
}

function prev(){
    var value = parseInt($("#selectedPage").val())-1;
    $.ajax({
        type: "GET",
        url: "./pageChanged",
        data: {pageNumber:value},

        success: function(content){
//            $("#page"+value).addClass("active");
            $("#blogList").html(content);
            $("#selectedPage").val(value);
        },

        error: function(e){
            console.log(e.message);
        }
    })
}

