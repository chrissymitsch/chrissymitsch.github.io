<template>
  <main>
    <card></card>
    <magic-picture></magic-picture>
  </main>
</template>

<style scoped>
main {
  min-height: 100vh;
  max-width: 100%;
  background-color: var(--color-background);
  perspective: 1000px;
}

main:after {
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 10vmin;
  background: var(--color-background);
  background: linear-gradient(0deg, var(--color-background) 0%, rgba(14,38,64,0) 100%);
  z-index: 9999999;
}
</style>
