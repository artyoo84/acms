var FormImageCrop = function () {

    var demo1 = function() {
        $('#demo1').Jcrop({
        	 setSelect: [197, 109, 347, 259],
        	 minSize: [ 150, 150 ],
        	 maxSize: [ 150, 150 ],
             onChange:   showCoords,
             onSelect:   showCoords,
        });
    }

    return {
        //main function to initiate the module
        init: function () {
            
            if (!jQuery().Jcrop) {;
                return;
            }

            demo1();
        }

    };

}();

jQuery(document).ready(function() {
    $.fn.select2.defaults.set("theme", "bootstrap");

    $("#stuSelect").select2({
        placeholder: "학생을 선택해주세요.",
        width: null
    });
    $("#eduSelect").select2({
    	placeholder: "교육과정을 선택해주세요.",
    	width: null
    });
    $("#classSelect").select2({
    	placeholder: "학급을 선택해주세요.",
    	width: null
    });
    FormImageCrop.init();
    
    
});

var _profile_x  = 0;
var _profile_y  = 0;
var _profile_x2 = 0;
var _profile_y2 = 0;
var _profile_w  = 0;
var _profile_h  = 0;

function saveProfile(){
	alert("test!");
}

function showCoords(c)
{
    _profile_x  =  c.x ;
    _profile_y  =  c.y ;
    _profile_x2 =  c.x2;
    _profile_y2 =  c.y2;
    _profile_w  =  c.w ;
    _profile_h  =  c.h ;
	};

