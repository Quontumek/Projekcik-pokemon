(() => {
  const emailRegex = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,6}$/;

  const passwordRegex = /^(?=.*[!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?])(?=.*[a-z])(?=.*[A-Z])[A-Za-z\d!@#$%^&*()_+\-=[\]{};':"\\|,.<>/?]{8,}$/;



  const form = document.querySelector('#my_form');
  const emailInput = form.querySelector('[data-validate=email]');
  const emailErrorHolder = emailInput.parentElement.querySelector('.error-holder');


  function displayErrorMessage(message) {
    const errorMessage = document.createElement('p');
    errorMessage.innerText = message;
    emailErrorHolder.appendChild(errorMessage);
    }

    const urlParams = new URLSearchParams(window.location.search);
    const error = urlParams.get('error');

    if (error === 'email_exists') {
      emailInput.classList.add('error');
      displayErrorMessage('This email is already registered. Please use a different email address.');
  }


  form.addEventListener('submit', (e) => {
      e.preventDefault();

      let hasError = false;

      form.querySelectorAll('.error-holder').forEach(errorHolder => errorHolder.innerHTML = '');

      const emailInput = form.querySelector('[data-validate=email]');
      const passwordInput = form.querySelector('[data-validate=password]');
      const nameInput = form.querySelector('[data-validate=name]');
      const confirmPasswordInput = form.querySelector('[data-validate=password-repeat]');

      const email = emailInput.value;
      const passwordcheck = passwordInput.value;
      const name = nameInput.value;
      const confirmPassword = confirmPasswordInput.value;
      

      const emailErrorHolder = emailInput.parentElement.querySelector('.error-holder');
      emailErrorHolder.innerHTML = '';

      const passwordErrorHolder = passwordInput.parentElement.querySelector('.error-holder');
      passwordErrorHolder.innerHTML = '';
      
      const nameErrorHolder = nameInput.parentElement.querySelector('.error-holder');
      nameErrorHolder.innerHTML = '';

      const confirmPasswordErrorHolder = confirmPasswordInput.parentElement.querySelector('.error-holder');
      confirmPasswordErrorHolder.innerHTML = '';


      if (!emailRegex.test(email)) {
          emailInput.classList.add('error');
          const errorMessage = document.createElement('p');
          errorMessage.innerText = 'Please enter a valid email address - Example@email.com';

          emailErrorHolder.appendChild(errorMessage);
          hasError = true;
      } else {
          emailInput.classList.remove('error');
      }

      if (name.trim() === '') {
        nameInput.classList.add('error');
        const errorMessage = document.createElement('p');
        errorMessage.innerText = 'Please enter your name';
        nameErrorHolder.appendChild(errorMessage);
        hasError = true;
    } else {
        nameInput.classList.remove('error');
    }

      if (!passwordRegex.test(passwordcheck)) {
        passwordInput.classList.add('error');
        const errorMessage = document.createElement('p');
        errorMessage.innerText = 'Please enter a valid password - At least 8 characters, 1 uppercase, 1 lowercase, 1 number and 1 special character';

        passwordErrorHolder.appendChild(errorMessage);
        hasError = true;
    } else {
        passwordInput.classList.remove('error');
    }

    const password = passwordInput.value;

      if (password !== confirmPassword) {
        confirmPasswordInput.classList.add('error');
        const errorMessage = document.createElement('p');
        errorMessage.innerText = 'Passwords do not match';
        confirmPasswordInput.parentElement.querySelector('.error-holder').appendChild(errorMessage);
        hasError = true;
    } else {
        confirmPasswordInput.classList.remove('error');
    }
      
    if (!hasError) {
      form.submit();
    }
  });
})()