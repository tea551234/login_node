form.addEventListener('submit', () => {
    const Wish = {
        email: email.value,
        WishName: WishName.value ,
        // wishImag:console.log((wishImag.files))
    }
    fetch('/api/Wish', {
        method: 'post',
        body: JSON.stringify(Wish),
        headers: {
            'Content-Type': 'application/json'
        }
    }
    )


})

