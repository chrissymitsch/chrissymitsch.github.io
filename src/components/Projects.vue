<template>
  <section id="projects">
    <nerd></nerd>
    <aside>
      <h1 class="accent">Challenges</h1>
      <h2>just for fun</h2>
    </aside>
  </section>
</template>

<style scoped>
section {
  min-height: 100vmin;
  max-width: 100%;
  display: flex;
  justify-content: center;
  flex-flow: column;
  background-color: var(--color-background-dark);
}

aside {
  width: 50vmax;
  max-width: 100%;
  padding: 0 3vmax;
  align-self: flex-start;
  display: flex;
  flex-flow: column;
}

h1, h2 {
  font-weight: 700;
  display: block;
  line-height: 100%;
}

h1 {
  font-size: var(--font-size-l);
  text-transform: uppercase;
  text-align: right;
}

h2 {
  font-size: var(--font-size-m);
  text-align: center;
}

</style>
