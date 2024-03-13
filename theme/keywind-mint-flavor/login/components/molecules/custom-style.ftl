<#macro kw>
  <style>
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
  </style>
</#macro>
