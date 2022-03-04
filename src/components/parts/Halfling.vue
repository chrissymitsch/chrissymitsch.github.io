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
  right: 0;
  top: -20vh;
  width: 100%;
  height: 100vh;
  background-image: url(./../../assets/img/halfling.png);
  background-position: top right;
  background-repeat: no-repeat;
  background-size: contain;
}

.fixed {
  top: inherit;
  bottom: 0;
  position: fixed;
}

</style>