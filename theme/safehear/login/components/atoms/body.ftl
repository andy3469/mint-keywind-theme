<#macro kw>
  <#if properties.formWrap="full-width">
  <body class="transition transition-[background-color] ease-in bg-secondary-100 dark:bg-gray-900 dark:text-slate-200 flex flex-col items-center justify-center min-h-screen">
  <#else>
  <body class="transition transition-[background-color] ease-in bg-secondary-100 dark:bg-gray-900 dark:text-slate-200 flex flex-col items-center justify-center min-h-screen sm:py-16">
  </#if>
    <#nested>
  </body>
</#macro>