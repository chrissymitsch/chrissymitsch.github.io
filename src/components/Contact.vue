<template>
  <section id="contact">
    <figure class="wave back show-in-landscape"></figure>
    <figure class="hero-image show-in-landscape"><img src="./../assets/img/hero2.png" /></figure>
    <figure class="wave front show-in-landscape"></figure>
    <aside>
      <h1 class="accent">Find me here</h1>
      <article>
        <figure>
          <a href="https://www.linkedin.com/in/christinemitsch/" target="_blank">
            <img src="./../assets/img/contact/linkedin.png" alt="LinkedIn" />
          </a>
        </figure>
        <figure>
          <a href="https://www.xing.com/profile/Christine_Mitsch2" target="_blank">
            <img src="./../assets/img/contact/xing.png" alt="XING" />
          </a>
        </figure>
        <figure>
          <a href="https://github.com/chrissymitsch" target="_blank">
            <img src="./../assets/img/contact/github.png" alt="GitHub" />
          </a>
        </figure>
        <figure>
          <a href="https://codepen.io/chrissymitsch" target="_blank">
            <img src="./../assets/img/contact/codepen.png" alt="CodePen" />
          </a>
        </figure>
        <figure>
          <a href="https://www.grin.com/user/1868641" target="_blank">
            <img src="./../assets/img/contact/grin.png" alt="GRIN" />
          </a>
        </figure>
        <figure>
          <a href="https://www.youtube.com/@pixlerin" target="_blank">
            <img src="./../assets/img/contact/youtube.png" alt="YouTube" />
          </a>
        </figure>
        <figure id="thoughts">
          <p v-html="thoughts" />
        </figure>
      </article>
    </aside>
    <figure class="wave back show-in-portrait"></figure>
    <figure class="hero-image show-in-portrait"><img src="./../assets/img/hero2.png" /></figure>
    <figure class="wave front show-in-portrait"></figure>
  </section>
</template>

<script>
export default ({
  computed: {
    thoughts() {
      let part1 = 'hallo';
      let part2 = Math.pow(2,6);
      let part3 = String.fromCharCode(part2);
      let part4 = 'pixlerin.de'
      let part5 = part1 + part3 + part4;
      return 'Or send your thoughts to <a href=' + 'mai' + 'lto' + ':' + part5 + '>' + part5 + '</a>'
    }
  },
})
</script>

<style scoped>
section {
  margin-top: 20vmin;
  min-height: 100vmin;
  max-width: 100%;
  display: flex;
  justify-content: center;
  flex-flow: column;
}

.hero-image {
  position: absolute;
  display: flex;
  align-items: flex-end;
  justify-content: center;
  left: 0;
  bottom: 0;
  height: 65vh;
  overflow: hidden;
  transform-origin: left;
  animation: heroIn 0.8s ease-in-out forwards;
}

.hero-image img {
  width: auto;
  height: 100%;
}

.wave {
  position: absolute;
  bottom: 0;
  width: 100vw;
  height: 20vmin;
  background-position: bottom center;
  background-size: 100% 100%;
  background-repeat: no-repeat;
}

.wave.front {
  background-image: url(./../assets/img/wave-front.png);
}

.wave.back {
  background-image: url(./../assets/img/wave-back.png);
}

aside {
  width: 60vmax;
  min-height: 100vh;
  max-width: 100%;
  padding: 0 3vmax;
  align-self: flex-end;
  justify-content: center;
  display: flex;
  flex-flow: column;
}

article {
  width: 50%;
  display: grid;
  grid-template-columns: repeat(3, 1fr);
  grid-template-rows: repeat(3, 1fr);
  grid-gap: 2vmax;
  margin-top: 5vmax;
}

article figure {
  display: block;
  height: auto;
}

a img {
  transition: .5s;
}

a:before {
  content: '';
}

a:hover img {
  opacity: .5;
}

#thoughts {
  grid-column-start: 1;
  grid-column-end: span 3;
  grid-row-start: 3;
  grid-row-end: span 1;
}

h1 {
  font-weight: 700;
  display: block;
  line-height: 100%;
  font-size: var(--font-size-l);
  text-transform: uppercase;
}

.show-in-portrait {
  display: none;
}


@media (max-aspect-ratio: 1/1) {
  .hero-image {
    bottom: 0;
    position: relative;
  }

  .show-in-landscape {
    display: none;
  }

  .show-in-portrait.hero-image {
    display: flex;
  }

  .show-in-portrait.wave {
    display: inherit;
  }

  .hero-image img {
    height: auto;
    max-width: 180%;
    max-height: 100%;
  }

  aside {
    width: 100vmax;
    min-height: fit-content;
  }

  article {
    width: 100%;
    padding: 0 8vmax;
  }

  h1 {
    text-align: center;
  }
}


@keyframes heroIn {
  0% {
    transform: translateX(-10vw);
  }

  100% {
    transform: translateX(0);
  }
}

</style>
