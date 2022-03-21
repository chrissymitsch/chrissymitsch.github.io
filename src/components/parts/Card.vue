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
  
  <aside v-bind:style="{ top: topText + 'px' }">
    <p>
      <mark>Creative</mark>
      and
      <mark>introverted</mark><br />
      Master of
      <mark>Media Computer Science</mark>.
    </p>
    <p>
      Practising Software Development.<br />
      Specialized in
      <mark>Human-Centered Design</mark><br />
      and
      <mark>Frontend</mark> Technologies.
    </p>

    <p>
      🛸Sci-Fi loving,<br />
      🧘‍♀️Yoga enjoying,<br />
      🍍Pineapple on Pizza eating<br />
      😺Cat-Mom of Julia
    </p>
  </aside>
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
  top: max(-10rem, -15vmin);
}

aside {
  width: 90%;
  text-align: center;
  padding: 5vh;
}

aside p {
  font-weight: 500;
  font-size: max(1.7vmax, 0.8rem);
}

aside p:last-child {
  margin-top: 2vh;
  margin-bottom: 2vh;
  color: var(--color-text-highlight);
}

aside p mark {
  font-weight: 700;
}

@keyframes float {
  0%, 100% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(-10px);
  }
}

@media (max-aspect-ratio: 4/3) {
  aside {
    width: 100vw;
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