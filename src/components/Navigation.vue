<template>
  <nav>
    <img src="./../assets/img/logo-light.svg" alt="Chrissy Mitsch" v-on:click="scrollUp()" />
  </nav>
</template>

<style scoped>
nav {
  position: fixed;
  left: 1vh;
  top: 1vh;
  width: 8vmin;
}

nav img {
  cursor: pointer;
}
</style>


<script scoped>
export default {
  methods: {
    scrollUp() {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    }
  }
}
</script>
