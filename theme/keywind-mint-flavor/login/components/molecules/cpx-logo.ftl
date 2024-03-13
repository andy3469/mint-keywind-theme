<#import "custom-img-logo.ftl" as img>

<#macro kw>
  <div class="font-bold text-center text-2xl">
    <#if properties.logo="off">
      <#nested>
    <#else>
      <div class="mkt-logo-wrapper flex justify-center items-center">
        <#switch properties.logoDisp>
          <#case "left">
            <@img.kw />
            <#nested>
            <#break>
          <#case "right">
            <#nested>
            <@img.kw />
            <#break>
          <#case "replace">
            <@img.kw />
            <#break>
          <#default>
            <div>Your icon config is not correct</div>
        </#switch>
      </div>
    </#if>
  </div>
</#macro>
