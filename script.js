let form = document.getElementById('Registration Form')

form.addEventListener('submit', function(reload){
    reload.preventDefault();
    // validation
    let username = form.elements["username"].value;
    let email = form.elements["email"].value;
    let password = form.elements["password"].value;
    let contact = form.elements["contact"].value;

    if(username || email || password || contact === "none" || terms){
        form.submit();
    } else {
        alert("Please fill out all required fields and accept the terms and conditions.")

        if (emailPattern.test(email)){
            form.submit();
        } else {
            alert('Please enter a valid email address.')
        }
           
    }

    const formData = {
        username: username,
        email: email,
        password: password,
        contact: contact,
        termsAccepted: terms
    }
})