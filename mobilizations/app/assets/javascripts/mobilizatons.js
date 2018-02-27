function error_message(div, title, message) {
    $(div).html(
        "<div class='alert alert-warning alert-dismissable' style='margin-top: 10px;' >"+
            "<a href='#' class='close' data-dismiss='alert' aria-label='close'>&times;</a>"+
            "<strong>"+title+"</strong> "+message+
        "</div>"
    );           
}