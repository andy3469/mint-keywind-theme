<#macro kw content="" footer="" header="">
  <#if properties.formWrap="full-width">
  <div class="dark:bg-gray-800 p-8 space-y-6 shadow-xl dark:shadow-slate-700">
  <#else>
  <div class="mkt-form-login-form dark:bg-gray-800 p-8 rounded-lg space-y-6 shadow-xl dark:shadow-slate-700">
  </#if>
    <#if header?has_content>
      <div class="space-y-4">
        ${header}
      </div>
    </#if>
    <#if content?has_content>
      <div class="space-y-4">
        ${content}
      </div>
    </#if>
    <#if footer?has_content>
      <div class="space-y-4">
        ${footer}
      </div>
    </#if>
  </div>
</#macro>