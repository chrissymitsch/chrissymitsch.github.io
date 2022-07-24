<template>
  <section ref="kid">
    <figure class="kid" :class="{ fixed }" :style="{ bottom: posBottom+'px' }"></figure>
  </section>
  <figure class="wave back" ref="wave2"></figure>
</template>

<script>
export default ({
  data() {
    return {
      fixed: false,
      posBottom: 0
    }
  },
  mounted () {
    this.setHalflingPosition();
    window.addEventListener("resize", this.setHalflingPosition);
    window.addEventListener('scroll', this.setHalflingPosition);
  },
  destroyed () {
    window.removeEventListener("resize", this.setHalflingPosition);
    window.removeEventListener('scroll', this.setHalflingPosition);s
  },
  methods: {
    setHalflingPosition() {
      const halflingPositionTop = this.$refs.kid?.getBoundingClientRect().top;
      const wavePositionBottom = this.$refs.wave2?.getBoundingClientRect().bottom;
      const height = window.innerHeight;
      const width = window.innerWidth;

      if (height > wavePositionBottom) {
        this.fixed = true
        this.posBottom = height - wavePositionBottom;
      } else {
        this.posBottom = 0;
        if ((height > width && halflingPositionTop <= height - width) ||
            (height <= width && halflingPositionTop <= 0)) {
          this.fixed = true
        } else {
          this.fixed = false
        }
      }
    }
  }
})
</script>



<style scoped>
section {
  min-height: 100vmin;
  max-width: 100%;
  margin-top: -12vw;
}

.kid {
  position: absolute;
  right: 0;
  bottom: 0;
  min-width: 100vmin;
  width: 50%;
  height: 65vmin;
  background: url(/src/assets/img/projects/kid-transparent.png) no-repeat;
  background-position: bottom right;
  background-size: contain;
}

.fixed {
  top: inherit;
  bottom: 0;
  position: fixed;
}

</style>