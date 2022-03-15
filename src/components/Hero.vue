<template>
  <header id="top">
    <figure class="wave-back"></figure>
    <h2 class="hellooo">Hellooo.</h2>
    <div class="name">
      <h1 class="accent">Chrissy</h1>
      <h1>here.</h1>
    </div>
    <div class="whatami">
      <figure class="twinkle">
        <img src="./../assets/img/stern1.gif" class="big" /> <!-- big -->
        <img src="./../assets/img/stern3.gif" class="small" /> <!-- smol -->
        <img src="./../assets/img/stern3.gif" class="small" /> <!-- smol -->
        <img src="./../assets/img/stern3.gif" class="small" /> <!-- smol -->
        <img src="./../assets/img/stern2.gif" />
        <img src="./../assets/img/stern2.gif" />
        <img src="./../assets/img/stern1.gif" class="big" /> <!-- big -->
        <img src="./../assets/img/stern2.gif" />
      </figure>
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
  min-height: calc(100vh - 5vh);
  max-width: var(--max-content-width);
  display: flex;
  flex-flow: column;
  justify-content: flex-start;
  align-items: center;
  margin: auto;
  margin-top: 5vh;
  row-gap: 5vh;
}

.bridge {
  position: absolute;
  left: clamp(-20vh, calc(100vh - 150vw), 0%);
  bottom: clamp(-20vh, calc(100vh - 150vw), 0%);
  width: 100vh;
  max-width: 100vw;
  max-height: 100%;
  transform: translateX(-10vw);
  animation: bridgeIn 2s ease-out forwards;
}

h1, h2, h3 {
  font-weight: 700;
  display: inline-block;
  line-height: 100%;
}

h1 {
  font-size: var(--font-size-xl);
}

h2 {
  font-size: var(--font-size-l);
}

h3 {
  font-size: var(--font-size-m);
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
  opacity: 0;
  transform-origin: top center;
  transform: scale(0.7);
  animation: zoomIn 1s ease-out 1.5s forwards, fadeIn 1s ease-out 1.5s forwards;
}

.twinkle {
  position: absolute;
  width: max-content;
}

.twinkle img {
  width: var(--font-size-m);
  opacity: 0;
  animation: zoomIn 1s ease-out 2s forwards, fadeIn 1s ease-out 2s forwards;
}

.twinkle img.big {
  width: var(--font-size-l);
}

.twinkle img.small {
  width: calc(var(--font-size-s) + var(--font-size-xs));
}

.twinkle img:nth-child(1) {
  left: -40%;
  top: var(--font-size-s);
}

.twinkle img:nth-child(2) {
  left: -40%;
  top: var(--font-size-s);
}

.twinkle img:nth-child(3) {
  left: -35%;
  top: 0;
}

.twinkle img:nth-child(4) {
  left: -30%;
  top: calc(var(--font-size-xl) + var(--font-size-s));
}

.twinkle img:nth-child(5) {
  left: -20%;
  top: var(--font-size-l);
}

.twinkle img:nth-child(6) {
  left: 10%;
  top: calc(var(--font-size-m) * (-1));
}

.twinkle img:nth-child(7) {
  left: 30%;
  top: var(--font-size-s);
}

.twinkle img:nth-child(8) {
  left: -10%;
  top: var(--font-size-xl);
}

.code {
  position: absolute;
  bottom: 20vh;
  font-size: var(--font-size-s);
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


@media (min-aspect-ratio: 4/3) {
  .hellooo {
    margin-top: 10vh;
    align-self: flex-start;
  }

  .whatami {
    align-self: flex-end;
    align-items: flex-start;
  }

  .code {
    right: 0;
  }
}


@keyframes bridgeIn {
  0% {
    transform: translateX(-10vw);
  }

  100% {
    transform: translateX(0);
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
