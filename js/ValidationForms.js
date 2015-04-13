function checkFormInputs(title, questionsCount)
{
	$( "#name" ).change(function() {
  		var name = $( "#name" ).val();
  		var thisEl = $(this);
  		 $.ajax({
            type: 'post',
            url: "checkExists.php",
            data: {
                name: name
            },
            dataType: 'html'
            }).done(function(data){
                    if(data == '0')
                    {
                    	
                        thisEl.next().empty();
            			thisEl.next().append("<p style='color:red;'>Името съществува</p>");
                    }
                    else
                    {
                    	thisEl.next().empty();
            			thisEl.next().append("<p>Валидно име</p>");
                    }
            });
	});	

	$( "#email" ).change(function() {
  		var email = $( "#email" ).val();
  		var thisEl = $(this);
  		 $.ajax({
            type: 'post',
            url: "checkExists.php",
            data: {
                email: email
            },
            dataType: 'html'
            }).done(function(data){
                    if(data == '0')
                    {
                    	
                        thisEl.next().empty();
            			thisEl.next().append("<p style='color:red;'>Имейлът съществува</p>");
                    }
                    else
                    {
                    	thisEl.next().empty();
            			thisEl.next().append("<p>Имейлът е валиден</p>");
                    }
            }); 
	});




}