<template>
  <div class="container" v-bind:style="{ top: topContainer + 'px' }">
    <figure class="card">
      <figure class="pentagon pentagon-0"></figure>
    </figure>
    <figure class="card">
      <figure class="pentagon pentagon-1"></figure>
    </figure>
    <figure class="card">
      <figure class="pentagon pentagon-2"></figure>
    </figure>
  </div>
  
  <section>
    <aside>
      <h1>Chrissy</h1>
      <h3>[krɪsˈi], <em>developer</em></h3>
      <p>
        Creative Software Developer,<br />
        User Experience and Usability Professional,<br />
        specialized in Human-Centered Design,<br />
        Gamification, Interactive 3D,<br />
        Web and Frontend Technologies.
      </p>
      <p>
        Well practised using Adobe products,<br />
        enthusiastic over CSS and Javascript<br />
        as well as App and Game Development.
      </p>
      <p>
        🛸Sci-Fi loving,<br />
        🧘‍♀️Yoga enjoying,<br />
        🍍Pineapple on Pizza eating<br />
        😺Cat-Mom of Julia<br />
        <a href="https://pixlerin.de" target="blank">pixlerin.de</a>
      </p>
    </aside>
  </section>
</template>

<style scoped>
figure.card {
  position: absolute;
  transform-origin: right;
  animation: float 7s ease-in-out 0s infinite normal forwards;
}

figure.pentagon {
  position: absolute;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  background-color: var(--color-background-dark);
  clip-path: polygon(50% 0%, 100% 38%, 82% 100%, 18% 100%, 0% 38%);
}

figure.pentagon-0 {
  width: 48vmin;
  height: 48vmin;
  transform: rotate(345deg);
  left: max(0%, 25vw - 15vh);
  top: calc(100vh - 100vmin);
}

figure.pentagon-1 {
  width: 28vmin;
  height: 28vmin;
  transform: rotate(30deg);
  left: max(0%, 70vw - 15vmin);
  top: max(5rem, 20vmin);
}

figure.pentagon-2 {
  width: 18vmin;
  height: 18vmin;
  transform: rotate(5deg);
  left: max(0%, 90vw - 15vmin);
  top: 10px;
}

section {
  width: 50vmax;
  padding-top: 10vmin;
  max-width: 100%;
}

aside {
  width: fit-content;
  max-width: 100%;
  text-align: left;
  font-family: 'Times New Roman', serif;
  color: var(--color-background-dark);
  padding: 5vh;
  background-color: var(--color-text);
  border: 1vmax solid var(--color-text-highlight);
  margin: auto;
  box-shadow: 1vmin 2vmin 3vmin rgb(0, 0, 0, .5);
;
}

aside h1 {
  font-size: calc(var(--font-size-s) + var(--font-size-xs));
  font-weight: 600;
  line-height: 100%;
}

aside h3 {
  border-bottom: .4vmin solid var(--color-text-highlight);
  padding-bottom: 1.5vmax;
  margin-bottom: 1.5vmax;
}

aside p {
  margin-top: 1vmax;
  line-height: 125%;
}

aside p:last-child {
  margin-top: 2vh;
  margin-bottom: 2vh;
  color: var(--color-background);
}

@keyframes float {
  0%, 100% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(-10px);
  }
}

@media (max-aspect-ratio: 1/1) {
 section {
   width: 100%;
   position: relative;
 }
}

@media (max-aspect-ratio: 9/16) {
  aside {
    width: 100%;
  }
}
</style>

<script scoped>
export default {
  data() {
    return {
      topContainer: 0,
      topText: 0
    }
  },
  mounted () {
    this.scrollParallax();
    window.addEventListener('scroll', this.scrollParallax);
  },
  destroyed () {
    window.removeEventListener('scroll', this.scrollParallax);
  },
  methods: {
    scrollParallax() {
      this.topContainer = window.scrollY / 3;
      this.topText = window.innerHeight - window.scrollY;
    }
  }}
</script>