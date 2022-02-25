<template>
  <main>
    <figure class="halfling"></figure>
    <article>Introduction</article>
  </main>
</template>

<style scoped>
main {
  min-height: 100vh;
  background-color: var(--color-background);
}

.halfling {
  position: absolute;
  right: 0;
  top: 0;
  width: 100%;
  height: 100vh;
  background-image: url(./../assets/img/halfling.png);
  background-position: top right;
  background-attachment: fixed;
  background-repeat: no-repeat;
  background-size: contain;
}

</style>
