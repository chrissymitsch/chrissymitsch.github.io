<template>
  <nav>
    <a href="#top">
      <figure class="glasses">
        <img src="./../assets/img/brille-gelb.png" alt="CM" />
        <h1 class="accent">C</h1>
        <h3 class="accent">hristine</h3>
        <h2 class="accent">M</h2>
        <h3 class="accent">itsch</h3>
      </figure>
    </a>
  </nav>
</template>

<style scoped>
nav {
  position: fixed;
  right: 0;
  top: 0;
  height: 100vh;
  width: 4em;
}

.glasses {
  transform: rotate(64deg);
  position: relative;
  top: 0;
  left: 35%;
  transform-origin: top left;
  width: 150%;
  display: flex;
  align-items: center;
  justify-content: space-around;
}

.glasses img {
  position: absolute;
}

.glasses h1 {
  font-family: var(--font-family-text-accent);
  font-size: 1.8em;
  font-weight: 600;
}

.glasses h2 {
  font-family: var(--font-family-text-accent);
  font-size: 1.5em;
  font-weight: 600;
}

.glasses h3 {
  font-family: var(--font-family-text-code);
  font-size: 1em;
  font-weight: 600;
  writing-mode: vertical-rl;
  text-orientation: upright;
  line-height: 1.7em;
  letter-spacing: 0.1em;
  transform: rotate(-64deg);
  transform-origin: top left;
  position: absolute;
  left: 2.2em;
  top: 3.1em;
}

.glasses h3:last-child {
  left: 5.6em;
  top: 3em;
  letter-spacing: 0.3em;
}

/* Responsiveness */

@media (max-aspect-ratio: 4 / 3) {
  .glasses {
    transform: rotate(0deg);
    left: inherit;
    right: 55%;
  }

  .glasses h3 {
    visibility: hidden;
  }
}
</style>
