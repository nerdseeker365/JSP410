<html>
  <head>
    <title>reCAPTCHA demo: Simple page</title>
     <script src="https://www.google.com/recaptcha/api.js" async defer></script>
     <script>
       function onSubmit(token) {
         document.getElementById("demo-form").submit();
       }
     </script>
  </head>
  <body>
    <form id='demo-form' action="process.jsp" method="POST">
      <button class="g-recaptcha" data-sitekey="6LemoJYUAAAAAO8T2qz9Mi0MrqP5LOyk9gzPQRlH" data-callback='onSubmit'>Submit</button>
      <br/>
    </form>
  </body>
</html>