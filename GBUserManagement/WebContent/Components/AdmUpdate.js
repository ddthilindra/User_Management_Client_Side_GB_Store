$(document).ready(function() {
	if ($("#alertSuccess").text().trim() == "null") {
		$("#alertSuccess").hide();
	}
	$("#alertError").hide();
	$("#alertSuccess").hide();
});

$(document).on("click", "#btnUpdateReq", function(event) {
	// Clear alerts---------------------
	$("#alertError").text("");
	$("#alertError").hide();
	// Form validation-------------------
	var status = validateUpdateForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}
	// If valid------------------------
	$.ajax(
		{
			url: "UserUpdateAPI",
			type: "POST",
			data: $("#formUpdateBtn").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onUpdateComplete(response.responseText, status);
			}
		});
});


function onUpdateComplete(response, status) {
	if (status == "success") {
		var resultSet = JSON.parse(response);
		if (resultSet.status.trim() == "success") {

			$('#Id').val(resultSet.id.trim());
			$('#Name').val(resultSet.name.trim());
			$('#Email').val(resultSet.email.trim());
			$('#Add').val(resultSet.add.trim());
			$('#Phone').val(resultSet.phone.trim());
			$('#Dob').val(resultSet.dob.trim());

		}
		else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}
	} else if (status == "error") {
		$("#alertError").text("Error while login.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while login.");
		$("#alertError").show();
	}
	$("#hidItemIDSave").val("");
	$("#formItem")[0].reset();
}


$(document).on("click", "#btnUpdate", function(event) {
	$("#alertSuccess").text("");
	$("#alertSuccess").hide();
	$("#alertError").text("");
	$("#alertError").hide();


	var status = validateLoginForm();
	if (status != true) {
		$("#alertError").text(status);
		$("#alertError").show();
		return;
	}

	var type = ($("#Id").val() == "") ? "POST" : "PUT";

	$.ajax(
		{
			url: "UserUpdateAPI",
			type: type,
			data: $("#formUpdate").serialize(),
			dataType: "text",
			complete: function(response, status) {
				onUserSaveComplete(response.responseText, status);

			}

		});
});

function onUserSaveComplete(response, status) {
	if (status == "success") {
		
		var resultSet = JSON.parse(response);

		if (resultSet.status.trim() == "success") {
			$("#alertSuccess").text("User details has been updated successfully..!");
			$("#alertSuccess").show();

			$("#divItemsGrid").html(resultSet.data);
		} else if (resultSet.status.trim() == "error") {
			$("#alertError").text(resultSet.data);
			$("#alertError").show();
		}

	} else if (status == "error") {
		$("#alertError").text("Error while saving.");
		$("#alertError").show();
	} else {
		$("#alertError").text("Unknown error while saving..");
		$("#alertError").show();
	}

	$("#formUpdate")[0].reset();
}


function validateUpdateForm() {
	// USERNAME
	if ($("#txtEmail").val().trim() == "") {
		return "Insert Email.";
	}
	if ($("#Name").val().trim() == "") {
		return "Insert Name.";
	}
	if ($("#Email").val().trim() == "") {
		return "Insert Email.";
	}
	if ($("#Add").val().trim() == "") {
		return "Insert Address.";
	}
	if ($("#Phone").val().trim() == "") {
		return "Insert Phone.";
	}
	if ($("#Dob").val().trim() == "") {
		return "Insert Dob.";
	}
	if ($("#Password").val().trim() == "") {
		return "Insert Password.";
	}
	return true;
}

$(document).on("click", "#btnLogout", function(event) {
	$.ajax(
		{
			url: "LoginAPI",
			type: "DELETE",
			data: "",
			dataType: "text",
			complete: function(response, status) {
				onLogoutComplete(response.responseText, status);
			}
		});
});
function onLogoutComplete(response, status) {
	if (status == "success") {
		if (response.trim() == "success") {
			//Redirect to index------------------
			document.location = "Home.jsp";
		}
	}
}