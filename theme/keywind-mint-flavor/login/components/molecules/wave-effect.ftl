<#macro kw>
  <div class="wave-animation"></div>
  <script>
    if (CSS.paintWorklet) {
      CSS.paintWorklet.addModule("${url.resourcesPath}/animation.js")
    }

    const waveAnimationDom = document.querySelector('.wave-animation')
    let timer
    let lastRatio = 0.5
    document.addEventListener('mousemove', (event) => {
      if (timer) return
      timer = setTimeout(() => {
        const y = event.clientY
        let ratio = Math.floor(y / window.innerHeight * 10)
        ratio = (ratio % 2 === 0 ? ratio + 1 : ratio) / 10
        if (lastRatio !== ratio) {
          waveAnimationDom.style.setProperty('--height', ratio)
          lastRatio = ratio
        }
        timer = null
      }, 40)
    });
  </script>
</#macro>
