
function saveKeystoreNext() {
    $("#save-keystore").hide()
    $("#save-privatekey").show()
}

function unlockAccountWithPrivatekey(){
    let privatekey = $("#input-privatekey").val()
    console.log(privatekey)
    $.post("/privateunlock", `privatekey=${privatekey}`, function(res, status){
        console.log(status+JSON.stringify(res))
    })
}

$(document).ready(function() {

    $("input[name=unlocktype]").change(function() {
        if (this.value == 1) {
            $("#unlock-account-keystore").show()
            $("#unlock-account-privatekey").hide()
        } else {
            $("#unlock-account-keystore").hide()
            $("#unlock-account-privatekey").show()
        }
    })
})