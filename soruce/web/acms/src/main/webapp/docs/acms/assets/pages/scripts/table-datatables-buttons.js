var TableDatatablesButtons = function () {
    var initTable1 = function () {
        var table = $('#sample_1').DataTable( {
            "processing": true,
            "serverSide": true,
            "columnDefs": [ {
                orderable: false,
                className: 'checkboxes',
                targets:   0 ,
                'className': 'dt-body-center',
                'render': function (data, type, full, meta){
                    var checkbox_html = '<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">' 
                    	                       + '<input type="checkbox" class="checkboxes" name="id[]" value="' + $('<div/>').text(data).html() + '">'
                    	                       + '<span></span>' 
                    	                       + '</label>';                	
                    return checkbox_html ;
                }                
            } ],
            "select": {
                style:    'os',
                selector: 'td:first-child'
            },
            'order': [1, 'asc'],
            "footerCallback": function ( row, data, start, end, display ) {
                var api = this.api(), data;
     
                // Remove the formatting to get integer data for summation
                var intVal = function ( i ) {
                    return typeof i === 'string' ?
                        i.replace(/[\$,]/g, '')*1 :
                        typeof i === 'number' ?
                            i : 0;
                };
                // Total over all pages
                total = api
                    .column( 6 )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
     
                // Total over this page
                pageTotal = api
                    .column( 6, { page: 'current'} )
                    .data()
                    .reduce( function (a, b) {
                        return intVal(a) + intVal(b);
                    }, 0 );
                // Update footer
                $( api.column( 6 ).footer() ).html(
                    '$'+pageTotal +' ( $'+ total +' total)'
                );
            },            
            "ajax": {
            	"url" : "/sample/board/datatable_ajax",
            	"data" :  function (d){
            		console.log("조회!");
            		d.test = "testData"; // parameter 추가
            	}
            },
            "language": {
                "aria": {
                    "sortAscending": ": activate to sort column ascending",
                    "sortDescending": ": activate to sort column descending"
                },
                "emptyTable": "No data available in table",
                "info": "Showing _START_ to _END_ of _TOTAL_ entries",
                "infoEmpty": "No entries found",
                "infoFiltered": "(filtered1 from _MAX_ total entries)",
                "lengthMenu": "_MENU_ entries",
                "search": "Search:",
                "zeroRecords": "No matching records found"
            },            
            buttons: [
                { extend: 'print', className: 'btn green btn-outline' },
                { extend: 'copy', className: 'btn green btn-outline' },
                { extend: 'pdf', className: 'btn green btn-outline' },
                { extend: 'excel', className: 'btn green btn-outline ' },
                { extend: 'csv', className: 'btn green btn-outline ' },
                {
                    text: '조회',
                    action: function ( e, dt, node, config ) {
                    	table.search( '' ).columns().search( '' ).draw();
                    },
                    className: 'btn purple btn-outline '
                }                
            ],
            responsive: true,            
            bFilter: false, 
            "dom": "<'row' <'col-md-12'B>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable
        } );
        
        // 전체 체크시 row의 체크 상태를 변경한다.
        $('.group-checkable').change(function () {
            var set = jQuery(this).attr("data-set");
            console.log("set : " + set);
            var checked = jQuery(this).is(":checked");
            jQuery(set).each(function () {
                if (checked) {
                    $(this).prop("checked", true);
                    $(this).parents('tr').addClass("active");
                } else {
                    $(this).prop("checked", false);
                    $(this).parents('tr').removeClass("active");
                }
            });
        });
        
        

       // checkbox 변경 이벤트 row 상태 변경 
        table.on('change', 'tbody tr .checkboxes', function () {
            $(this).parents('tr').toggleClass("active");
        });        
        // row cnt 변경시 전체 체크 박스 해제 
        table.on('length.dt', function () {
        	 $('.group-checkable').prop("checked", false);
        });        

        
        var table2 = $('#sample_2').DataTable( {
        	buttons: [
        		'copy', 'csv', 'excel', 'pdf', 'print'
        		],
        		responsive: true,
        		dom: 'Bfrtip',
        } );

    }
    var initTable2 = function () {
    	var table = $('#board_sample_2').DataTable( {
    		"processing": true,
    		//"serverSide": true,
    		"columnDefs": [ {
    			orderable: false,
    			className: 'checkboxes',
    			targets:   0 ,
    			'className': 'dt-body-center',
    			'render': function (data, type, full, meta){
    				var checkbox_html = '<label class="mt-checkbox mt-checkbox-single mt-checkbox-outline">' 
    					+ '<input type="checkbox" class="checkboxes" name="id[]" value="' + $('<div/>').text(data).html() + '">'
    					+ '<span></span>' 
    					+ '</label>';                	
    				return checkbox_html ;
    			}                
    		} ],
    		"select": {
    			style:    'os',
    			selector: 'td:first-child'
    		},
    		//'order': [1, 'asc'],
    		"footerCallback": function ( row, data, start, end, display ) {
    			var api = this.api(), data;
    			
    			// Remove the formatting to get integer data for summation
    			var intVal = function ( i ) {
    				return typeof i === 'string' ?
    						i.replace(/[\$,]/g, '')*1 :
    							typeof i === 'number' ?
    									i : 0;
    			};
    			// Total over all pages
    			total = api
    			.column( 9 )
    			.data()
    			.reduce( function (a, b) {
    				return intVal(a) + intVal(b);
    			}, 0 );
    			
    			// Total over this page
    			pageTotal = api
    			.column( 9, { page: 'current'} )
    			.data()
    			.reduce( function (a, b) {
    				return intVal(a) + intVal(b);
    			}, 0 );
    			// Update footer
    			$( api.column( 9 ).footer() ).html(
    					'$'+pageTotal +' ( $'+ total +' total)'
    			);
    		},            
//    		"ajax": {
//    			"url" : "/sample/board/datatable_ajax",
//    			"data" :  function (d){
//    				console.log("조회!");
//    				d.test = "testData"; // parameter 추가
//    			}
//    		},
    		"language": {
    			"aria": {
    				"sortAscending": ": activate to sort column ascending",
    				"sortDescending": ": activate to sort column descending"
    			},
    			"emptyTable": "No data available in table",
    			"info": "Showing _START_ to _END_ of _TOTAL_ entries",
    			"infoEmpty": "No entries found",
    			"infoFiltered": "(filtered1 from _MAX_ total entries)",
    			"lengthMenu": "_MENU_ entries",
    			"search": "Search:",
    			"zeroRecords": "No matching records found"
    		},            
    		buttons: [
    			{
    				text: '신규',
    				action: function ( e, dt, node, config ) {
    					$("#newPop").modal();
    				},
    				className: 'btn purple btn-outline '
    			},
    			{ extend: 'print', className: 'btn green btn-outline' },
    			{ extend: 'copy', className: 'btn green btn-outline' },
    			{ extend: 'pdf', className: 'btn green btn-outline' },
    			{ extend: 'excel', className: 'btn green btn-outline ' },
    			{ extend: 'csv', className: 'btn green btn-outline ' },
    			{
    				text: '조회',
    				action: function ( e, dt, node, config ) {
    					table.search( '' ).columns().search( '' ).draw();
    				},
    				className: 'btn purple btn-outline '
    			}                
    			],
    			responsive: true,            
    			bFilter: false, 
    			"dom": "<'row' <'col-md-12'B>><'row'<'col-md-6 col-sm-12'l><'col-md-6 col-sm-12'f>r><'table-scrollable't><'row'<'col-md-5 col-sm-12'i><'col-md-7 col-sm-12'p>>", // horizobtal scrollable datatable
    	} );
    	
    	// 전체 체크시 row의 체크 상태를 변경한다.
    	$('.group-checkable').change(function () {
    		var set = jQuery(this).attr("data-set");
    		console.log("set : " + set);
    		var checked = jQuery(this).is(":checked");
    		jQuery(set).each(function () {
    			if (checked) {
    				$(this).prop("checked", true);
    				$(this).parents('tr').addClass("active");
    			} else {
    				$(this).prop("checked", false);
    				$(this).parents('tr').removeClass("active");
    			}
    		});
    	});
    	
    	
    	
    	// checkbox 변경 이벤트 row 상태 변경 
    	table.on('change', 'tbody tr .checkboxes', function () {
    		$(this).parents('tr').toggleClass("active");
    	});        
    	// row cnt 변경시 전체 체크 박스 해제 
    	table.on('length.dt', function () {
    		$('.group-checkable').prop("checked", false);
    	});        
    	
    	
    	var table2 = $('#sample_2').DataTable( {
    		buttons: [
    			'copy', 'csv', 'excel', 'pdf', 'print'
    			],
    			responsive: true,
    			dom: 'Bfrtip',
    	} );
    	
    }
    

    return {

        //main function to initiate the module
        init: function () {

            if (!jQuery().dataTable) {
                return;
            }

            initTable1();
            initTable2();
        }

    };

}();

jQuery(document).ready(function() {
    TableDatatablesButtons.init();
});