function pageChanged(value){
    $.ajax({
        type: "GET",
        url: "./pageChanged",
        data: {pageNumber:value},

        success: function(content){
//            $("#page"+value).addClass("active");
            $("#blogList").html(content);
        },

        error: function(e){
            console.log(e.message);
        }
    })
}