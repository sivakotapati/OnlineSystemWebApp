// !!! all menu-toggle function has to be removed from navbar-response.js if using this resizer. !!!
$(document).ready(function() {
    $('#column-resizer').mousedown(function(e) {
        $('body').css('cursor', 'col-resize');

        e.preventDefault();
        $(document).mousemove(function(e) {
            let position = e.pageX;
            if ($("#wrapper").hasClass("toggled") === false) {
              position = e.pageX - 250; 
            }
                    
            let mousePercent = (position / ($('#page-content-wrapper').width()) * 100);
            let mousePercent1 = mousePercent;
            if ($("#wrapper").hasClass("toggled") === false) {
               mousePercent1 = mousePercent + (212)*100 / ($('#page-content-wrapper').width());
            }
                        
            if(mousePercent >= 5 && mousePercent <= 95) {
                $('#editor').css('width', (mousePercent - 2.9) + '%');
                $('#results').css('width', (100-mousePercent-2.9) + '%');
                if ($("#wrapper").hasClass("toggled") === false) {
                   $('#column-resizer').css('left', $('#editor').width() + 262 + 'px');
                }  else {
                   $('#column-resizer').css('left', $('#editor').width() + 12 + 'px');
                }

                if(mousePercent <= 10) {
                    $('#editor').css('width', (10 - 2.9) + '%');
                    $('#results').css('width', (100 - 10) + '%');
                    $('#column-resizer').css('left', (10 - 1.8) + '%');
                } else if(mousePercent >= 90) {
                    $('#editor').css('width', (90 - 2.9) + '%');
                    $('#results').css('width', (100 - 90) + '%');
                    $('#column-resizer').css('left', (90 - 1.8) + '%');
                }
            }
        });
        $(document).mouseup(function(e) {
            $(document).unbind('mousemove');
            $(document).unbind('mouseup');

            $('body').css('cursor', '');
        });
    });
    
        // Directory button handler
        $('#menu-toggle').click(function(e) {
            e.preventDefault();
            refreshDirectory();
        });
        
        // The following was originally put into navbar-response.js 9/29
        
        $("#menu-toggle").click(function(e) {
            e.preventDefault();
            //let percent1 = (($('#editor').width())+262)*100 / ($('#page-content-wrapper').width());
            //let percent2 = (($('#editor').width()+12))*100 / ($('#page-content-wrapper').width());
        
            $("#wrapper").toggleClass("toggled");
        
            //let startP = $('#editor').width();
            if ($("#wrapper").hasClass("toggled") == false) {
                //$('#column-resizer').css('left', $('#editor').width()+262+'px')         
                //$('#results').css('left', 100 + 'px');
            } else {
        
                //$('#column-resizer').css('left', $('#editor').width()+12+'px');
                //$('#results').css('left', 12 + 'px'); 
            }
        });
        
        $( window ).resize(function() {
            //let percent1 = (($('#editor').width())+262)*100 / ($('#page-content-wrapper').width());
            //let percent2 = (($('#editor').width()+12))*100 / ($('#page-content-wrapper').width());
            //$("#wrapper").toggleClass("toggled");
            if ($("#wrapper").hasClass("toggled") == false) {
                //$('#column-resizer').css('left', $('#editor').width()+262+'px');
            } else {
                //$('#column-resizer').css('left', $('#editor').width()+12+'px');
            }
            //$('#results').css('width', ($('#page-content-wrapper').width() - $('#editor').width()) - 12 + 'px');
        });
        
        var getUserId = function(){
		return sessionStorage.getItem("userId");
		}

		var refreshDirectory = function() {
			let userid = getUserId();
			const getAllFilesForldersAPI = dotnet_endpoint+"api/SparcFileSystem/getallfoldersfiles";
		    //var data = {'action': "getAccessibleDirectory"};
			//US-13
			$.ajax({
			        type: 'GET',
			        url: getAllFilesForldersAPI,
			        jsonpCallback: 'jsonCallback',
			        dataType: 'json',
		            headers: {
		                'Authorization': "Bearer "+ sessionStorage.getItem("token")
		            },
			        data : "userId="+userid+"",
			        jsonp: false,
			        success: function (response) {
			         console.log(response.content);
			         $('#directory').empty();
			         $('#directory').append("<ul>" + response.content + "</ul>");
			         $('.easy-tree').EasyTree({
			             selectable: true,
			             deletable: true,
			             editable: true
			         });
			        },
			        error: function (e) {
			            $("#divResult").html("WebSerivce unreachable");
			        }
		    	});
		};

        
});
