<template>
  <section>
    <div class="container" v-bind:style="{ top: top + 'px' }">
      <div id="photo1" class="frame">
        <img src="./../../assets/img/julia.jpg" alt="Julia" />
      </div>
      <div id="photo2" class="frame">
        <img src="./../../assets/img/starry-nuernberg.png" alt="Nürnberg" />
      </div>
      <div id="photo3" class="frame">
        <img src="./../../assets/img/exploring-the-world.jpg" alt="Laydbug" />
      </div>
      <div id="photo9" class="frame">
        <img src="./../../assets/img/tele.jpeg" alt="Telescope" />
      </div>
      <div id="photo4" class="frame">
        <img src="./../../assets/img/stormtrooper.jpg" alt="Stormtrooper" />
      </div>
      <div id="photo5" class="frame">
        <img src="./../../assets/img/stargazing.jpg" alt="Stargazing" />
      </div>
      <div id="photo5-2" class="frame">
        <img src="./../../assets/img/ufo.jpg" alt="UFO" />
      </div>
      <div id="photo6" class="frame">
        <img src="./../../assets/img/vangogh.jpg" alt="Painting" />
      </div>
      <div id="photo7" class="frame">
        <img src="./../../assets/img/pumpkin.jpg" alt="Pumpkins" />
      </div>
      <div id="photo8" class="frame">
        <img src="./../../assets/img/watercolor.jpg" alt="Watercolor Galaxy" />
      </div>
      <div id="photo10" class="frame">
        <img src="./../../assets/img/cabin.jpg" alt="Cabin" />
      </div>
      <div id="photo11" class="frame">
        <img src="./../../assets/img/et.jpg" alt="E.T" />
      </div>
      <div id="photo12" class="frame">
        <img src="./../../assets/img/indian-summer.jpg" alt="Indian Summer" />
      </div>
      <div id="photo13" class="frame">
        <img src="./../../assets/img/hp.jpg" alt="Harry Potter" />
      </div>
      <div id="magic-picture">
        <video loop autoplay muted id="chocolatefrog" class="frame">
          <source src="./../../assets/media/chocolate-frog.mp4" type="video/mp4">
        </video>
      </div>
      <div id="cert1" class="frame cert">
        <h3>Bachelor of<br />Science</h3>
        <h1>🔰</h1>
        <h2>Computer<br />Science</h2>
      </div>
      <div id="cert2" class="frame cert">
        <h3>Master of<br />Science</h3>
        <h1>🏅</h1>
        <h2>Computer<br />Science &amp; Media<br />Applications</h2>
      </div>
    </div>
  </section>
</template>

<style scoped>
section {
  position: absolute;
  top: 0;
  right: 0;
  width: 50vmax;
  max-width: 100%;
  height: 100vh;
  overflow: hidden;
}

section:after {
  content: '';
  position: absolute;
  left: 0;
  top: 0;
  width: 100%;
  height: 10vmin;
  background: var(--color-background);
  background: linear-gradient(180deg, var(--color-background) 0%, rgba(14,38,64,0) 100%);
  z-index: 9999999;
}

.container {
  margin-top: -30vmin;
  width: 100%;
  display: grid;
  grid-template-columns: repeat(12, 1fr);
  grid-template-rows: repeat(8, 1fr);
  grid-gap: 1vmax;
}

.frame {
  border: .5vmax solid var(--color-text-highlight);
  background-color: var(--color-text-highlight);
  box-shadow: 1vmin 2vmin 3vmin rgb(0, 0, 0, .5);
  height: max-content;
  line-height: 0;
}

#magic-picture {
  width: 100%;
  grid-column-start: 5;
  grid-column-end: span 3;
  grid-row-start: 3;
  grid-row-end: span 4;
}

#cert1 {
  grid-column-start: 8;
  grid-column-end: span 3;
  grid-row-start: 2;
  grid-row-end: span 3;
}

#cert2 {
  grid-column-start: 2;
  grid-column-end: span 3;
  grid-row-start: 3;
  grid-row-end: span 3;
}

.cert {
  background-color: var(--color-background);
  color: var(--color-text);
  text-align: center;
  padding: 2vmin 1vmin;
}

.cert h3 {
  font-size: var(--font-size-s);
  font-weight: 600;
  line-height: 100%;
}

.cert h2 {
  font-size: var(--font-size-xs);
  line-height: 100%;
}

.cert h1 {
  font-size: var(--font-size-l);
  line-height: 120%;
}

video {
  width: 100%;
  margin: auto;
}

#photo1 {
  grid-column-start: 8;
  grid-column-end: span 2;
  grid-row-start: 4;
  grid-row-end: span 2;
}

#photo2 {
  grid-column-start: 11;
  grid-column-end: span 2;
  grid-row-start: 6;
  grid-row-end: span 2;
}

#photo3 {
  grid-column-start: 1;
  grid-column-end: span 3;
  grid-row-start: 1;
  grid-row-end: span 2;
}

#photo4 {
  grid-column-start: 3;
  grid-column-end: span 2;
  grid-row-start: 6;
  grid-row-end: span 2;
  margin-top: -3vmax;
}

#photo5 {
  grid-column-start: 4;
  grid-column-end: span 3;
  grid-row-start: 1;
  grid-row-end: span 2;
}

#photo5-2 {
  grid-column-start: 4;
  grid-column-end: span 3;
  grid-row-start: 1;
  grid-row-end: span 2;
  animation: fadeOut 10s ease-in-out infinite;
}

#photo6 {
  grid-column-start: 8;
  grid-column-end: span 3;
  grid-row-start: 6;
  grid-row-end: span 2;
}

#photo7 {
  grid-column-start: 1;
  grid-column-end: span 2;
  grid-row-start: 4;
  grid-row-end: span 3;
}

#photo8 {
  grid-column-start: 11;
  grid-column-end: span 2;
  grid-row-start: 1;
  grid-row-end: span 3;
}

#photo9 {
  grid-column-start: 1;
  grid-column-end: span 3;
  grid-row-start: 6;
  grid-row-end: span 3;
}

#photo10 {
  grid-column-start: 10;
  grid-column-end: span 3;
  grid-row-start: 4;
  grid-row-end: span 3;
}

#photo11 {
  grid-column-start: 4;
  grid-column-end: span 4;
  grid-row-start: 7;
  grid-row-end: span 3;
}

#photo12 {
  grid-column-start: 7;
  grid-column-end: span 3;
  grid-row-start: 1;
  grid-row-end: span 2;
}

#photo13 {
  grid-column-start: 11;
  grid-column-end: span 2;
  grid-row-start: 3;
  grid-row-end: span 2;
}

@media (max-aspect-ratio: 1/1) {
 section {
   width: 100%;
   height: auto;
   position: relative;
 }

 section:after {
   background: none;
 }

 .container {
   width: 120%;
   margin-top: 0;
   margin-top: 5vmax;
   margin-left: -10%;
   top: 0 !important;
 }
}

@media (max-aspect-ratio: 9/16) {
 section {
   position: relative;
 }
}

@keyframes fadeOut {
  0%, 40%, 100% {
    opacity: 1;
  }

  50%, 90% {
    opacity: 0;
  }
}

</style>

<script scoped>
export default {
  data() {
    return {
      top: 0
    }
  },
  mounted() {
    this.scrollParallax();
    window.addEventListener('scroll', this.scrollParallax);
  },
  destroyed () {
    window.removeEventListener('scroll', this.scrollParallax);
  },
  methods: {
    scrollParallax() {
      this.top = window.scrollY / 3;
    }
  }
}
</script>
