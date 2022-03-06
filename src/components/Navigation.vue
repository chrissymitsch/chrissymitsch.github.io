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
  width: 4rem;
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
  font-size: 1.8rem;
  font-weight: 600;
}

.glasses h2 {
  font-family: var(--font-family-text-accent);
  font-size: 1.5rem;
  font-weight: 600;
}

.glasses h3 {
  font-family: var(--font-family-text-code);
  font-size: 1rem;
  font-weight: 600;
  writing-mode: vertical-rl;
  text-orientation: upright;
  line-height: 1.7rem;
  letter-spacing: 0.1rem;
  transform: rotate(-64deg);
  transform-origin: top left;
  position: absolute;
  left: 2.2rem;
  top: 3.1rem;
}

.glasses h3:last-child {
  left: 5.6rem;
  top: 3rem;
  letter-spacing: 0.3rem;
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
