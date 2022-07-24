<template>
  <section id="projects">
  </section>
  <section>
    <aside>
      <h1 class="accent">Everything</h1>
      <h2>just for fun</h2>
    </aside>
    <nerd></nerd>
  </section>
</template>

<style scoped>
section#projects {
  position: absolute;
  height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  flex-flow: row;
  background-image: url(./../assets/img/projects/tempel.png);
  background-position: top center;
  background-size: 100%;
  background-repeat: no-repeat;
}

aside {
  width: 75vmax;
  margin-top: 12vw;
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


@media (max-aspect-ratio: 1/1) {
  aside {
    width: 100vmax;
  }

  h1 {
    text-align: center;
  }
}

</style>
