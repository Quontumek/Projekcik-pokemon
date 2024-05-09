(() => {
    const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/

    const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/

    const form = document.querySelector('#forml')

    form.addEventListener('submit', (e) => {
        e.preventDefault()

        const emailInput = form.querySelector('[data-validate=email]')

        const email = emailInput.value

        const errorHolder = emailInput.parentElement.querySelector('.error-holder')
        errorHolder.innerHTML = ''

        if (!emailRegex.test(email)) {
            emailInput.classList.add('error')
            const errorMessage = document.createElement('p')
            errorMessage.innerText = 'Please enter a valid email address'

            errorHolder.appendChild(errorMessage)
        } else {
            emailInput.classList.remove('error')
            errorHolder.innerHTML = ''
        }
          
            const passwordInput = form.querySelector('[data-validate=password]')
            const password = passwordInput.value
          
            const confirmPasswordInput = form.querySelector('[data-validate=password-repeat]')
            const confirmPassword = confirmPasswordInput.value
          
            if (password !== confirmPassword) {
              confirmPasswordInput.classList.add('error')
              const errorMessage = document.createElement('p')
              errorMessage.innerText = 'Passwords do not match'
              confirmPasswordInput.parentElement.querySelector('.error-holder').appendChild(errorMessage)
            } else {
              confirmPasswordInput.classList.remove('error')
            }
        

    })
})()