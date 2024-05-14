(() => {
  const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/

  const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/


  const form = document.querySelector('#my_form')

  form.addEventListener('submit', (e) => {
      e.preventDefault()

      const emailInput = form.querySelector('[data-validate=email]')
      const passwordInput = form.querySelector('[data-validate=password]')
      const nameInput = form.querySelector('[data-validate=name]')

      const email = emailInput.value
      const passwordcheck = passwordInput.value
      const name = nameInput.value

      const emailErrorHolder = emailInput.parentElement.querySelector('.error-holder')
      emailErrorHolder.innerHTML = ''

      const passwordErrorHolder = passwordInput.parentElement.querySelector('.error-holder')
      passwordErrorHolder.innerHTML = ''
      
      const nameErrorHolder = nameInput.parentElement.querySelector('.error-holder')
      nameErrorHolder.innerHTML = ''

      if (!emailRegex.test(email)) {
          emailInput.classList.add('error')
          const errorMessage = document.createElement('p')
          errorMessage.innerText = 'Please enter a valid email address - Example@email.com'

          emailErrorHolder.appendChild(errorMessage)
      } else {
          emailInput.classList.remove('error')
      }

      if (name.trim() === '') {
        nameInput.classList.add('error');
        const errorMessage = document.createElement('p')
        errorMessage.innerText = 'Please enter your name'
        nameErrorHolder.appendChild(errorMessage);
    } else {
        nameInput.classList.remove('error');
    }

      if (!passwordRegex.test(passwordcheck)) {
        passwordInput.classList.add('error')
        const errorMessage = document.createElement('p')
        errorMessage.innerText = 'Please enter a valid password - At least 8 characters, 1 uppercase, 1 lowercase, 1 number and 1 special character'

        passwordErrorHolder.appendChild(errorMessage)
    } else {
        passwordInput.classList.remove('error')
    }

          const password = passwordInput.value
        
          const confirmPasswordInput = form.querySelector('[data-validate=password-repeat]')
          const confirmPassword = confirmPasswordInput.value

          const confirmPasswordErrorHolder = confirmPasswordInput.parentElement.querySelector('.error-holder')
          confirmPasswordErrorHolder.innerHTML = ''
        
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