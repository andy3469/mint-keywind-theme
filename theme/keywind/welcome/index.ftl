<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- <meta http-equiv="refresh" content="0; url=${adminUrl}" /> -->
    <meta name="robots" content="noindex, nofollow" />
    <script type="text/javascript">
      var url = '${adminUrl}'
      if ('${properties.welcomeBehavior}'==='user') {
        url = '/realms/${properties.defaultRealm}/account/#/applications'
      }
      window.location.href = url
      setTimeout(() => document.querySelector('#welcome-link').href = url, 0)
    </script>
  </head>
  <body>
    If you are not redirect automatically, click <a id="welcome-link" href="${adminUrl}">here</a>.
  </body>
</html>
