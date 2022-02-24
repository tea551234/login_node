form.addEventListener('submit', () => {
    const Wish = {
        email: email.value,
        WishName: WishName.value ,
    }
    fetch('/api/Wish', {
        method: 'post',
        body: JSON.stringify(Wish),
        headers: {
            'Content-Type': 'application/json'
        }
    }
    )
    setTimeout(function(){location.href="/"} , 100)

})