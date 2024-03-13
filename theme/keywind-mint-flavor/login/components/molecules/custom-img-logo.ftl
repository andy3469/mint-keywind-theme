<#macro kw>
  <div class="mkt-logo flex-none">
    <#if properties.logo="file">
      <img class="mkt-logo-img" src="${url.resourcesPath}/${properties.logoUri}" alt="${properties.logoDesc}" />
    <#else>
      <img class="mkt-logo-img" src="${properties.logoUri}" alt="${properties.logoDesc}" />
    </#if>
  </div>
</#macro>
