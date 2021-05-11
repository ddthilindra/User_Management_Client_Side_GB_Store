$(document).ready(function() 
		{  
	if ($("#alertSuccess").text().trim() == "")  
    {   
		$("#alertSuccess").hide();  
     }  
	     $("#alertError").hide(); 
	  
});


$(document).on("click", "#btnReg", function(event) 
		{  
		
			$("#alertSuccess").text("");  
			$("#alertSuccess").hide();  
			$("#alertError").text("");  
			$("#alertError").hide(); 
			
			
			var status = validateItemForm();  
			if (status != true)  
			{   
				$("#alertError").text(status);   
				$("#alertError").show();   
				return;  
			} 
			
			var type = ($("#hidItemIDSave").val() == "") ? "POST" : "PUT"; 
			
			$.ajax( 
			{  
				url : "RegisterAPI",  
				type : type,  
				data : $("#formRegister").serialize(),  
				dataType : "text",  
				complete : function(response, status)  
				{   
					onItemSaveComplete(response.responseText, status);  
					
				} 
			
		}); 
}); 

function onItemSaveComplete(response, status) 
{  
	if (status == "success")  
	{   
		var resultSet = JSON.parse(response); 

		if (resultSet.status.trim() == "success")   
		{    
			$("#alertSuccess").text("Successfully saved.");    
			$("#alertSuccess").show(); 

			$("#divItemsGrid").html(resultSet.data);   
		} else if (resultSet.status.trim() == "error")   
		{    
			$("#alertError").text(resultSet.data);    
			$("#alertError").show();   
		} 

		} else if (status == "error")  
		{   
			$("#alertError").text("Error while saving.");   
			$("#alertError").show();  
		} else  
		{   
			$("#alertError").text("Unknown error while saving..");   
			$("#alertError").show();  
		} 

		$("#hidItemIDSave").val("");  
		$("#formItem")[0].reset(); 
		
}


function validateItemForm() 
{  
	// CODE  
	if ($("#txtUsername").val().trim() == "")  
	{   
		return "Insert User Name.";   
	}

	 
	 // NAME  
	if ($("#txtEmail").val().trim() == "")  
	{   
		return "Insert Email.";  
	}
	
	if ($("#txtAddress").val().trim() == "")  
	{   
		return "Insert Address.";  
	} 
	 
	 if ($("#txtPhone").val().trim() == "")  
	{   
		return "Insert Phone.";  
	}
	
	if ($("#txtDOB").val().trim() == "")  
	{   
		return "Insert dob.";  
	}
	
	if ($("#txtPassword").val().trim() == "")  
	{   
		return "Insert pass.";  
	}
	
	 return true;
	
}