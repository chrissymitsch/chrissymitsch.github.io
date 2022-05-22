<template>
  <section id="insights">
    <halfling></halfling>
    <aside>
      <h1 class="accent">Insights</h1>
      <h2>what I do</h2>

      <article class="left top current">
        Hellooo 👋 Chrissy here!<br />
        I work as a Software Developer at
        <a href="https://www.mediendesign.de/" about="blank">
          <img src="./../assets/img/mediendesign.png" alt="mediendesign AG" />
        </a><br />
        <small>since June 2021</small>
      </article>

      <article class="right top">
        How many years of job experience do you have?
      </article>

      <article class="left top">
        {{calculatedExperience}} years 🤓
      </article>

      <article class="top right">
        What about...
      </article>
      <article class="right">
        Full-Stack Development, Java, C#, Angular?
      </article>

      <article class="left top emoji">
        👍
      </article>

      <article class="top right">
        Web Design? UX? Usability?
      </article>
      <article class="right">
        CSS, SASS, HTML, JavaScript...?
      </article>

      <article class="left top">
        Love it!!! ❤️
      </article>
      <article class="left">
        Look at some of my certificates here:
        <div class="gallery">
          <figure class="thumbnail">
            <img src="./../assets/img/certificates/cpux-f.png" alt="CPUX-F" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail">
            <img src="./../assets/img/certificates/Master-Zeugnis.png" alt="Master" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail">
            <img src="./../assets/img/certificates/Angular-Typescript-Intensiv.png" alt="Angular Typescript Intensiv" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail">
            <img src="./../assets/img/certificates/Kreativpreis.png" alt="Hackathon Kreativpreis" v-on:click="openImage($event)" />
          </figure>
        </div>
      </article>

      <article class="top right">
        Any other staff?
      </article>
      <article class="right">
        *stuff
      </article>

      <article class="top left">
        Yeah, for example:
      </article>

      <article id="more" class="continue" v-if="!showMore" v-on:click="showMoreMessages()">
        + 10 more Messages to read <em>.</em><em>.</em><em>.</em>
      </article>

      <article class="left more" v-if="showMore">
        Node.js, JSON, jQuery, JSF, YAML, XML, Python, BPMN, REST, SOAP, Git, Groovy, Geb, Spock, Maven...
        <br />
        Oh, and this website is made with Vue.js 😊
      </article>

      <article class="top right more" v-if="showMore">
        Anything you did during your 🎓 studies?
      </article>

      <article class="top left more" v-if="showMore">
        Yes 🤩 I can even show you some examples:
      </article>
      <article class="left more" v-if="showMore">
        Game Design in C# with Unity<br />
        <iframe width="100%" height="auto" src="https://www.youtube.com/embed/cHAKNQiiZkQ" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </article>
      <article class="left more" v-if="showMore">
        Motion Graphics using After Effects<br />
        <div class="gallery">
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/motion00.gif" alt="Logo/CI in the style of Stranger Things" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/motion01.gif" alt="Paint on Movement" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/motion02.gif" alt="Flächen und Masken" v-on:click="openImage($event)" />
          </figure>
        </div>
      </article>
      <article class="left more" v-if="showMore">
        Graphic Design and Visualization with Photoshop, Illustrator and WebGL
        <div class="gallery">
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/ufo.gif" alt="UFO" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/leporello2.jpg" alt="Leporello Ukiyo-e" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/leporello1.jpg" alt="Leporello Ukiyo-e" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/kanzlei-holzer.png" alt="Kanzlei Holzer" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/manni-manta.png" alt="Manni Manta" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/sturm-immobilien.png" alt="Sturm Immobilien" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/unicorn-museum-draft.png" alt="Unicorn Museum (Draft)" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/hirsch.png" alt="Hirsch" v-on:click="openImage($event)" />
          </figure>
        </div>
      </article>
      <article class="left more" v-if="showMore">
        App Development following the Human-Centered Design process
        <div class="gallery">
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/planetb.png" alt="Planet B" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail">
            <img src="./../assets/img/insights/planetb-poster.png" alt="Planet B - Poster Presentation" v-on:click="openImage($event)" />
          </figure>
          <figure>
            <a href="https://xd.adobe.com/view/9375f889-01d5-43c8-5e19-59ae09b673d1-e544/?fullscreen" target="blank">
              Prototype
            </a>
          </figure>
        </div>
        <div class="gallery">
          <figure class="thumbnail landscape">
            <img src="./../assets/img/insights/app00.jpg" alt="Weebo App" v-on:click="openImage($event)" />
          </figure>
          <figure class="thumbnail">
            <img src="./../assets/img/insights/weebo-poster.png" alt="Weebo App - Poster Presentation" v-on:click="openImage($event)" />
          </figure>
          <figure>
            <a href="https://weebo-b37d8.web.app/" target="blank">
              Prototype
            </a>
          </figure>
        </div>
      </article>
      <article class="left more" v-if="showMore">
        I also published some of my homework on <a href="https://www.grin.com/user/1868641" target="blank">GRIN</a>.
      </article>

      <article class="top right more" v-if="showMore">
        Any fun projects in your 🏝️ leisure time?
      </article>

      <article class="top left more current" v-if="showMore">
        Scroll down 🦄🌈 <strong>to the next section!</strong>
      </article>
    </aside>

    <section class="overlayImage" v-if="showImage" v-on:click="closeImage()">
      <img v-bind:src="imageUrl" v-bind:alt="imageTitle" />
    </section>

  </section>
</template>

<style scoped>
section {
  min-height: 100vmin;
  max-width: 100%;
  display: flex;
  justify-content: center;
  flex-flow: column;
}

aside {
  width: 50vmax;
  max-width: 100%;
  padding: 0 3vmax;
  align-self: flex-end;
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
}

h2 {
  font-size: var(--font-size-m);
  text-align: center;
}

article {
  width: max-content;
  max-width: 80%;
  color: var(--color-background-dark);
  border-radius: 5vmin;
  padding: .5vmax 3vmax 3vmin 3vmax;
  line-height: 120%;
  padding: 2vmin 2vmax;
  margin-top: 1vmin;
}

.top {
  margin-top: 2vmax;
}

.left {
  background-color: var(--color-text);
  align-self: flex-start;
}

.right {
  background-color: var(--color-text-highlight);
  align-self: flex-end;
}

.top.left {
  border-top-left-radius: 0;
}

.top:before {
  content: "";
  position: absolute;
  top: 0;
  display: block;
  width: 0;
  height: 0;
  border: 1.5vmax solid transparent;
  border-top: 0;
}

.top.left:before {
  left: -1.5vmax;
  border-left: 0;
  border-right: 1.5vmax solid var(--color-text);
}

.top.right {
  border-top-right-radius: 0;
}

.top.right:before {
  right: -1.5vmax;
  border-right: 0;
  border-left: 1.5vmax solid var(--color-text-highlight);
}

.current {
  font-weight: 600;
}

.current img {
  width: 60%;
}

.current a, .thumbnail img, .continue {
  transition: .5s;
}

.current img a:hover, .thumbnail img:hover, .continue:hover {
  opacity: .5;
}

.emoji {
  font-size: var(--font-size-m);
}

small {
  display: inline-block;
  width: 100%;
  text-align: right;
}

.continue {
  color: var(--color-text);
  background-color: var(--color-background);
  cursor: pointer;
  align-self: center;
}

.continue em {
  font-size: 3em;
  line-height: 0;
  font-style: normal;
}

.continue em:nth-child(1) {
  animation: typing 1.5s ease-in-out infinite;
}
.continue em:nth-child(2) {
  animation: typing 1.5s ease-in-out .25s infinite;
}
.continue em:nth-child(3) {
  animation: typing 1.5s ease-in-out .5s infinite;
}

@keyframes typing {
  0%, 50% {
    opacity: 1;
  }
  25% {
    opacity: 0;
  }
}

.more {
  transform-origin: top;
  transform: scaleY(0);
  animation: rollDown .2s ease-in-out forwards;
}

@keyframes rollDown {
  0% {
    transform: scaleY(0);
  }
  100% {
    transform: scaleY(1);
  }
}

.gallery {
  display: flex;
  width: 100%;
  row-gap: 1vmin;
  column-gap: 1vmin;
  flex-wrap: wrap;
}

.thumbnail {
  position: relative;
  width: 5em;
  height: 5em;
  overflow: hidden;
  border-radius: .5em;
  border: 1px solid var(--color-text-accent);
}

.thumbnail img {
  position: absolute;
  left: 50%;
  top: 50%;
  width: 100%;
  height: auto;
  -webkit-transform: translate(-50%,-50%);
      -ms-transform: translate(-50%,-50%);
          transform: translate(-50%,-50%);
  cursor: pointer;
}

.thumbnail.landscape img {
  height: 100%;
  width: auto;
}

.current img, article iframe, .gallery {
  margin-top: 1vmax;
}

.overlayImage {
  position: fixed;
  display: flex;
  align-items: center;
  justify-content: center;
  left: 0;
  top: 0;
  height: 100vh;
  width: 100%;
  background-color: rgba(14,38,64,0.8);
  cursor: pointer;
  text-align: center;
  opacity: 0;
  animation: fade .2s ease-in-out forwards;
}

.overlayImage img {
  max-height: 100vh;
  width: auto;
  max-width: 100vmin;
  transform: scale(0);
  animation: zoom .2s ease-in-out .1s forwards;
}

@keyframes fade {
  0% {
    opacity: 0;
  }
  100% {
    opacity: 1;
  }
}

@keyframes zoom {
  0% {
    transform: scale(0);
  }
  100% {
    transform: scale(1);
  }
}

@media (max-aspect-ratio: 4/3) {
  article {
    width: fit-content;
    max-width: 80%;
  }

  .current {
    width: 80%;
  }
}
</style>

<script scoped>
export default {
  data() {
    return {
      showImage: false,
      imageUrl: '',
      imageTitle: '',
      showMore: false
    }
  },
  computed: {
    calculatedExperience: () => {
        let currentDate = new Date();
        let expDate = new Date("2013/03/15");
        let difference = currentDate - expDate;
        let experience = Math.floor(difference / 31557600000);
        return experience
    }
  },
  methods: {
    openImage(event) {
      this.showImage = true;
      this.imageUrl = event.srcElement?.src;
      this.imageTitle = event.srcElement?.alt;
    },
    closeImage() {
      this.showImage = false;
    },
    showMoreMessages() {
      this.showMore = true;
      const parentTop = document.getElementById('insights')?.offsetTop;
      const moreTop = document.getElementById('more')?.offsetTop;
      const height = window.innerHeight;
      const scrollToPosition = moreTop + parentTop + height/2;
      if (window.scrollY < scrollToPosition) {
        setTimeout(() => {
          window.scrollTo({
            top: scrollToPosition,
            behavior: 'smooth'
          });
        }, 200);
      }
    }
  }
}
</script>
