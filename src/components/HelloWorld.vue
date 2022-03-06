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
  position: absolute;
  left: 0;
  bottom: -20vh;
  width: 100vh;
  max-width: 100vw;
  max-height: 100%;
}

h1, h2, h3 {
  display: inline-block;
  line-height: 100%;
}

h1 {
  font-weight: 700;
  font-size: max(min(8rem, 13.5vmin), 2rem);
}

h2 {
  font-weight: 700;
  font-size: max(min(4rem, 8vmin), 1rem);
}

h3 {
  position: absolute;
  font-weight: 700;
  font-size: max(min(3rem, 6vmin), 1rem);
}

.hellooo {
  position: absolute;
  left: max(0%, calc(30vw - 40vh));
  top: min(20vh, 20vw);
  opacity: 0;
  animation: fadeIn 2s ease-out 0.25s forwards;
}

.name {
  left: max(0%, calc(25vw - 15vh));
  top: min(25vh, 25vw);
  margin-top: 5vh;
  transform: translateX(-5vw);
  opacity: 0;
  animation: rollIn 1s ease-out 0.5s forwards, fadeIn 2s ease-out 0.5s forwards;
}

.hellooo, .name h1, .whatami, .code {
  margin-left: 1.5vmin;
  margin-right: 1.5vmin;
}

.whatami {
  position: absolute;
  left: max(0%, calc(75vw - 47vh));
  top: max(45vmin, 10rem);
  margin-top: 5vh;
  width: max(50vw, 100vmin);
}

.whatami h3 {
  transform: translateY(-5vh);
  opacity: 0;
  animation: rollDown 1s ease-out 1s forwards, fadeIn 1s ease-out 1s forwards;
}

.whatami .accent {
  font-size: max(min(6rem, 10vmin), 2rem);
  top: 3rem;
  transform-origin: top center;
  transform: scale(0.7);
  opacity: 0;
  animation: zoomIn 1s ease-out 1.5s forwards, fadeIn 1s ease-out 1.5s forwards;
}

.code {
  font-size: max(min(1.2rem, 5vmin), 1rem);
  position: absolute;
  left: max(0%, calc(100vw - 60vh));
  bottom: max(15vmin, 0rem);
  transform: translateY(5vh);
  opacity: 0;
  animation: rollUp 1s ease-out 2s forwards, fadeIn 1s ease-out 2s forwards;
}

.code p {
  line-height: 300%;
  animation: lineHeight 1s ease-out 2s forwards;
}

.code strong {
  color: var(--color-text-highlight);
}

.wave-front, .wave-back {
  position: absolute;
  bottom: -2px;
  width: 100%;
  height: 30vh;
  background-position: top center;
  background-size: cover;
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
    display: none;
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

@keyframes fadeIn {
  0% {
    opacity: 0;
  }

  100% {
    opacity: 1;
  }
}

@keyframes rollIn {
  0% {
    transform: translateX(-5vw);
  }

  100% {
    transform: translateX(0);
  }
}

@keyframes rollDown {
  0% {
    transform: translateY(-5vh);
  }

  100% {
    transform: translateY(0);
  }
}

@keyframes rollUp {
  0% {
    transform: translateY(5vh);
  }

  100% {
    transform: translateY(0);
  }
}

@keyframes zoomIn {
  0% {
    transform: scale(0.7);
  }

  100% {
    transform: scale(1);
  }
}

@keyframes lineHeight {
  0% {
    line-height: 300%;
  }

  100% {
    line-height: 120%;
  }
}
</style>
