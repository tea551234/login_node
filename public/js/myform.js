form.addEventListener('submit', () => {
    const myform = {
        email: email.value,
        productName: productName.value ,
        problem:problem.value
    }
    fetch('/api/myform', {
        method: 'post',
        body: JSON.stringify(myform),
        headers: {
            'Content-Type': 'application/json'
        }
    }
    )
    setTimeout(function(){location.href="/"} , 3000)

})