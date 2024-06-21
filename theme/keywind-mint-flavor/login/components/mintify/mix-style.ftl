<#macro kw>
<style>
  /* Logo Styles */
  .mkt-logo-img {
    width: ${properties.logoSize};
    object-fit: ${properties.logoFit};
  }

  .mkt-logo-wrapper {
    gap: ${properties.logoSpacing};
  }

  <#switch properties.logoDisp>
  <#case "left">
  .mkt-logo-wrapper::after {
    display: block;
    content: "";
    width: calc(${properties.logoSize} * ${properties.logoBalancing});
  }
    <#break>
  <#case "right">
  .mkt-logo-wrapper::before {
    display: block;
    content: "";
    width: calc(${properties.logoSize} * ${properties.logoBalancing});
  }
    <#break>
  </#switch>

  /* Background Styles */
  .mkt-bg {
    z-index: -1;
  <#switch properties.bg>
  <#case "file">
    background: no-repeat center / ${properties.bgFit} url("${url.resourcesPath}/${properties.bgUri}");
    <#break>
  <#case "internet">
    background: no-repeat center / ${properties.bgFit} url("${properties.bgUri}");
    <#break>
  <#case "solid">
    background: ${properties.bgColor};
    <#break>
  <#case "gradient">
    <#if properties.gradientType="radial">
    background: radial-gradient(circle, ${properties.gradientColors});
    <#elseif properties.gradientType="linear-h">
    background: linear-gradient(90deg, ${properties.gradientColors});
    <#elseif properties.gradientType="linear-v">
    background: linear-gradient(180deg, ${properties.gradientColors});
    </#if>
    <#break>
  </#switch>
  }
</style>
</#macro>
