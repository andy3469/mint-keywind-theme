<#macro kw>
  <#if properties.formWrap="full-width">
  <div class="w-full h-full overflow-hidden">
    <div class="mkt-form h-full max-w-md flex flex-col justify-center relative">
      <div class="mkt-form-wrapper absolute top-[50%] left-[50%]"></div>
      <div class="mkt-form-content space-y-6"><#nested></div>
    </div>
  </div>
  <script>
  (function resize() {
    const screenW = screen.width
    const screenH = screen.height
    const diagonal = Math.ceil(Math.sqrt(Math.pow(screenW, 2) + Math.pow(screenH, 2)))
    const elWrapper = document.querySelector('.mkt-form-wrapper')
    elWrapper.style.height = diagonal + 'px'
  })();
  </script>
  <#else>
  <!-- <div class="max-w-md space-y-6 w-full">
    <#nested>
  </div> -->
  <div class="w-full h-full overflow-hidden">
    <div class="mkt-form h-full max-w-md flex flex-col justify-center relative">
      <div class="mkt-form-wrapper absolute top-[50%] left-[50%]"></div>
      <div class="mkt-form-content space-y-6"><#nested></div>
    </div>
  </div>
  </#if>
</#macro>
