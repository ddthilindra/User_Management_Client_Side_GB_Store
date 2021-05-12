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
	var status = validateLoginForm();
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
				onLoginComplete(response.responseText, status);
			}
		});
});

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
				onItemSaveComplete(response.responseText, status);

			}

		});
});

$(document).on("click", ".btnRemove", function(event) {
confirmAction();
	
});

function confirmAction() {
	let confirmAction = confirm("Are you sure to execute this action?");
	if (confirmAction) {
		alert("Action successfully executed");
		$.ajax(
		{
			url: "UserUpdateAPI",
			type: "DELETE",
			data: "Id=" + $(this).data("id"),
			dataType: "text",
			complete: function(response, status) {
				document.location = "Index.jsp";
			}
		});
	} else {
		alert("Action canceled");
	}
}


function onLoginComplete(response, status) {
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


function validateLoginForm() {
	// USERNAME
	if ($("#txtEmail").val().trim() == "") {
		return "Insert Username.";
	}
	return true;
}