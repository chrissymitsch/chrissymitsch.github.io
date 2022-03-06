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
  min-height: calc(100vh - 4rem);
  max-width: 1024px;
  display: flex;
  flex-flow: column;
  justify-content: flex-start;
  align-items: center;
  margin: auto;
  margin-top: 4rem;
  row-gap: 5vh;
}

.bridge {
  position: absolute;
  left: 0;
  bottom: min(calc(100vmax - 150vmin), 0%);
  width: 100vh;
  max-width: 100vw;
  max-height: 100%;
}

h1, h2, h3 {
  font-weight: 700;
  display: inline-block;
  line-height: 100%;
}

h1 {
  font-size: max(min(8rem, 13.5vmin), 2rem);
}

h2 {
  font-size: max(min(4rem, 8vmin), 1rem);
}

h3 {
  font-size: max(min(3rem, 6vmin), 1rem);
}

.hellooo {
  opacity: 0;
  animation: fadeIn 2s ease-out 0.25s forwards;
}

.name {
  display: flex;
  align-items: baseline;
  justify-content: center;
  opacity: 0;
  transform: translateX(-5vw);
  animation: rollIn 1s ease-out 0.5s forwards, fadeIn 2s ease-out 0.5s forwards;
}

.whatami {
  display: flex;
  justify-content: center;
  align-items: center;
  flex-flow: column;
}

.whatami h3 {
  opacity: 0;
  transform: translateY(-5vh);
  animation: rollDown 1s ease-out 1s forwards, fadeIn 1s ease-out 1s forwards;
}

.whatami .accent {
  font-size: max(min(6rem, 10vmin), 2rem);
  opacity: 0;
  transform-origin: top center;
  transform: scale(0.7);
  animation: zoomIn 1s ease-out 1.5s forwards, fadeIn 1s ease-out 1.5s forwards;
}

.code {
  position: absolute;
  bottom: 10vh;
  font-size: max(min(1.2rem, 5vmin), 1rem);
  opacity: 0;
  transform: translateY(5vh);
  animation: rollUp 1s ease-out 2s forwards, fadeIn 1s ease-out 2s forwards;
}

.code p {
  line-height: 300%;
  animation: lineHeight 1s ease-out 2s forwards;
}

.code strong {
  color: var(--color-text-highlight);
}

.hellooo, .name h1, .whatami, .code {
  margin-left: 1.5vmin;
  margin-right: 1.5vmin;
}

.wave-front, .wave-back {
  position: absolute;
  bottom: 0;
  width: 100vw;
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
