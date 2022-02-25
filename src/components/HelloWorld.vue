<template>
  <header id="top">
      <figure class="wave-back"></figure>
      <h2 class="hellooo">Hellooo.</h2>
      <div class="name">
        <h1 class="accent">Chrissy</h1>
        <h1>here.</h1>
      </div>
      <div class="whatami">
        <h3>I'm a</h3>
        <h2 class="accent">Developer</h2>
      </div>
      <figure class="bridge"><img src="./../assets/img/steg.png" /></figure>
      <figure class="wave-front"></figure>
      <div class="code">
        <p>
          <strong>if</strong>
          youWantToKnowMore(aboutMe)
        </p>
        <p>
          <strong>then</strong>
          scrollDown
        </p>
        <p>
          <strong>endif</strong>
        </p>
      </div>
  </header>
</template>

<style scoped>
header {
  min-height: 100vh;
  overflow: hidden;
}

.bridge {
  bottom: -20vh;
  width: 100vh;
  max-width: 100vw;
  max-height: 100%;
  position: absolute;
}

h1, h2, h3 {
  display: inline-block;
  line-height: 100%;
}

h1 {
  font-weight: 700;
  font-size: 13.5vh;
}

h2 {
  font-weight: 700;
  font-size: 8vh;
}

h3 {
  position: absolute;
  font-weight: 700;
  font-size: 6vh;
}

.hellooo {
  position: absolute;
  left: 10%;
  top: 20vh;
}

.name {
  left: 17%;
  top: 25vh;
  margin-top: 5vh;
}

.name h1 {
  margin-left: 1.5vh;
  margin-right: 1.5vh;
}

.whatami {
  position: absolute;
  left: 57vw;
  top: 45vh;
  margin-top: 5vh;
}

.whatami .accent {
  font-size: 9vh;
  top: 8vh;
}

.code {
  font-size: 3vh;
  position: absolute;
  left: 65vw;
  top: 70vh;
}

.code p {
  line-height: 120%;
}

.code strong {
  color: var(--color-text-highlight);
}

.wave-front, .wave-back {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 50vh;
  background-position: center bottom;
  background-size: 100%;
  background-repeat: no-repeat;
}

.wave-front {
  background-image: url(./../assets/img/wave-front.svg);
}

.wave-back {
  background-image: url(./../assets/img/wave-back.svg);
}


/* Responsiveness */

@media (max-width: 1200px) { /* 1024 */
  .bridge {
    bottom: -17vh;
  }

  h1 {
    font-size: 10vh;
  }

  h2 {
    font-size: 6vh;
  }

  h3 {
    font-size: 4vh;
  }

  .whatami .accent {
    font-size: 7vh;
  }
}

@media (max-aspect-ratio: 4/3) {
  header {
    display: flex;
    justify-content: flex-start;
    align-items: center;
    flex-flow: column;
  }

  h3, .hellooo, .whatami {
    position: relative;
  }

  .hellooo {
    margin-top: 5vh;
  }

  .hellooo, .name, .whatami, .whatami .accent {
    left: inherit;
    top: inherit;
    right: inherit;
    bottom: inherit;
    text-align: center;
    display: block;
  }

  .bridge {
    width: 140%;
    left: -50%;
    bottom: -20vh;
  }

  .bridge img {
    width: 140%;
  }

  .code {
    top: 60vh;
    right: 0;
    left: inherit;
    font-size: 3vw;
  }
}

@media (max-aspect-ratio: 9/15) {
  .bridge {
    bottom: -34vh;
    left: -39vh;
    width: 100vh;
  }

  .bridge img {
    width: 100vh;
  }
}
</style>
