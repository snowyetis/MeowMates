//= require jquery
//= require_tree .

//= require jquery
//= require jquery_ujs
//= require_tree .

var do_on_load = function() {

    $.fn.serializeObject = function() {
        var values = {}
        $("form input, form select, form textarea").each( function(){
            values[this.name] = $(this).val();
        });

        return values;
    }

};