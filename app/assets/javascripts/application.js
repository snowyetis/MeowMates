//= require jquery
//= require_tree .

$.fn.serializeObject = function() {
    var values = {}
    $("form input, form select, form textarea").each( function(){
        values[this.name] = $(this).val();
    });

    return values;
}


var do_on_load = function() {
    $('#s3_uploader').S3Uploader(
        {
            remove_completed_progress_bar: false,
            progress_bar_target: $('#uploads_container'),
            allow_multiple_files: false
        }
    );
    $('#s3_uploader').bind('s3_upload_failed', function(e, content) {
        return alert(content.filename + ' failed to upload due to a timeout.');
    });

    $('#s3_uploader').bind('s3_upload_complete', function(e, content) {
        //insert any post progress bar complete stuff here.
        $('#raffle_direct_upload_url').val(content.url);
        $('#raffle_attached_file_file_name').val(content.filename);
        $('#raffle_attached_file_file_path').val(content.filepath);
        $('#raffle_attached_file_file_size').val(content.filesize);
        $('#raffle_attached_file_content_type').val(content.filetype);
    });

    $(document).ready(do_on_load);
    $(window).bind('page:change', do_on_load);

};