<template>
    <figure class="halfling" :class="{ fixed: fixed }"></figure>
</template>

<script>
export default ({
  data() {
    return {
      fixed: false
    }
  },
  mounted () {
    this.setHalflingPosition();
    window.addEventListener('scroll', this.setHalflingPosition);
  },
  destroyed () {
    window.removeEventListener('scroll', this.setHalflingPosition);s
  },
  methods: {
    setHalflingPosition() {
      const height = window.innerHeight
      if (window.scrollY >= height - (height * 0.2)) {
        this.fixed = true
      } else {
        this.fixed = false
      }
    }
  }
})
</script>


<style scoped>
.halfling {
  position: absolute;
  left: 0;
  top: -20vh;
  width: 100%;
  height: 100vh;
  background: url(/src/assets/img/halfling.png) no-repeat;
  background-position: 150%;
  background-size: contain;
}

.halfling img {
  width: auto;
  height: 100%;
  float: right;
}

.fixed {
  top: inherit;
  bottom: 0;
  position: fixed;
}

@media (max-aspect-ratio: 4/3) {
  .halfling, .fixed {
    position: relative;
    top: inherit;
    right: 0;
    height: fit-content;
    text-align: center;
  }

  .halfling img {
    width: min(100%, 600px);
    height: auto;
    float: inherit;
  }
}
</style>