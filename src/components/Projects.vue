<template>
  <!-- <section id="projects">
    <figure class="lantern left">
      <img src="./../assets/img/projects/lantern2_off.png" />
    </figure>
    <figure class="lanterns">
      <img src="./../assets/img/projects/lantern_off.png" />
    </figure>
    <figure class="lantern right">
      <img src="./../assets/img/projects/lantern2_off.png" />
    </figure>
  </section> -->
  <section>
    <!-- <aside>
      <h1 class="accent">Challenges</h1>
      <h2>just for fun</h2>
    </aside> -->
    <aside>
      <h2>This page is still under construction</h2>
    </aside>
    <nerd></nerd>
  </section>
</template>

<style scoped>
section {
  background-color: var(--color-background-dark);
}
section#projects {
  position: absolute;
  height: 100vh;
  width: 100%;
  display: flex;
  justify-content: center;
  flex-flow: row;
  background-image: url(./../assets/img/tempel.svg);
  background-position: top center;
  background-size: 100%;
  background-repeat: no-repeat;
}

.lantern {
  width: 5vw;
  margin-top: 25.5vw;
}

.lanterns {
  width: 74vw;
  margin-top: 22.5vw;
}

aside {
  width: 75vmax;
  /* margin-top: 12vw; */
  max-width: 100%;
  padding: 0 3vmax;
  align-self: flex-start;
  display: flex;
  flex-flow: column;

  padding-top: 12vw;
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
