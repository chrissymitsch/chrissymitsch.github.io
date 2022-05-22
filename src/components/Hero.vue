<template>
  <header id="top">
    <figure class="twinkle">
      <img src="./../assets/img/stern1.gif" class="l" />
      <img src="./../assets/img/stern3.gif" class="s" />
      <img src="./../assets/img/stern2.gif" class="m" />
      <img src="./../assets/img/stern3.gif" class="s" />
      <img src="./../assets/img/stern1.gif" class="l" />
      <img src="./../assets/img/stern3.gif" class="m" />
      <img src="./../assets/img/stern2.gif" class="m" />
    </figure>
    <figure class="wave back"></figure>
    <div class="heading">
      <h2 class="what">that's</h2>
      <h1 class="who accent">Chrissy</h1>
      <h2 class="whee">a developer</h2>
    </div>
    <figure class="hero-image"><img src="./../assets/img/hero1.png" /></figure>
    <figure class="wave front"></figure>
    <figure class="scroll"><img src="./../assets/img/pfeil2.svg" alt="Scroll down!"></figure>
  </header>
</template>

<style scoped>
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

.heading {
  width: 70vmin;
  height: 100vh;
  display: flex;
  flex-flow: column;
  justify-content: center;
  align-items: center;
  margin: auto;
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

.what {
  margin-top: -35vmin;
  align-self: flex-start;
  opacity: 0;
  animation: fadeIn 2s ease-out 0.25s forwards;
}

header:before {
  content: '';
  position: absolute;
  top: 28vmin;
  left: 0;
  display: block;
  width: calc(calc(100vmax - 8vmin) / 2);
  height: 4vmax;
  background: url(./../assets/img/pfeil.svg);
  background-size: 100% 100%;
  background-repeat: no-repeat;
  transform: rotate(0deg);
  opacity: 0;
  animation: fadeIn 2s ease-out 0.25s forwards;
}

.who {
  opacity: 0;
  animation: bounceIn 1.8s ease-in-out forwards, fadeIn 1.5s ease-out 0.5s forwards;
  text-transform: uppercase;
}

.whee {
  align-self: flex-end;
  opacity: 0;
  transform: translateY(-3vh);
  transform-origin: bottom center;
  animation: rollDown .8s ease-in-out 1s forwards, fadeIn .8s ease-out 1.25s forwards;
}

.twinkle {
  position: absolute;
  width: 100%;
  height: 100vh;
}

.twinkle img {
  position: fixed;
}

.twinkle img.l {
  width: 5vmin;
}

.twinkle img.m {
  width: 3vmin;
}

.twinkle img.s {
  width: 2vmin;
}

.twinkle img:nth-child(1) {
  left: 10%;
  top: 25%;
}

.twinkle img:nth-child(2) {
  left: 5%;
  top: 5%;
}

.twinkle img:nth-child(3) {
  left: 30%;
  top: 15%;
}

.twinkle img:nth-child(4) {
  left: 50%;
  bottom: 30%;
}

.twinkle img:nth-child(5) {
  right: 20%;
  bottom: 25%;
}

.twinkle img:nth-child(6) {
  left: 65%;
  top: 10%;
}

.twinkle img:nth-child(7) {
  right: 10%;
  top: 35%;
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

.scroll {
  position: absolute;
  left: calc(50% - calc(3.5vmax / 2));
  bottom: 2.5vmax;
  width: 3.5vmax;
  opacity: 0;
  animation: scrollDown 3s ease-out 1s infinite;
}


@media (max-aspect-ratio: 4/3) {
  header:before {
    height: 6vmin;
    top: 35vmin;
    transform: rotate(305deg);
  }
}

@media (max-aspect-ratio: 1/1) {
  .heading {
    justify-content: flex-start;
  }

  .what {
    margin-top: 25vmin;
  }

  .hero-image img {
    height: auto;
    max-width: 180%;
    max-height: 100%;
  }

  header:before {
    height: 8vmin;
    top: 45vmin;
    transform: rotate(-90deg);
  }
}

@media (max-aspect-ratio: 2/3) {
  header:before {
    height: 8vh;
    width: 8vh;
    top: 55vw;
    left: 30vw;
    transform: rotate(305deg);
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

@keyframes fadeIn {
  0% {
    opacity: 0;
  }

  100% {
    opacity: 1;
  }
}

@keyframes bounceIn {
  0% {
    transform: scale(0);
  }

  30% {
    transform: scale(0);
  }

  50% {
    transform: scale(1.3);
  }

  60% {
    transform: scale(1);
  }

  70% {
    transform: scale(1.1);
  }

  80% {
    transform: scale(1);
  }
}

@keyframes rollDown {
  0% {
    transform: translateY(-3vh) scaleX(1) scaleY(1);
  }

  70% {
    transform: translateY(3vh) scaleX(.9) scaleY(1.5);
  }

  85% {
    transform: translateY(-1vh) scaleY(.9);
  }

  100% {
    transform: translateY(0) scaleX(1) scaleY(1);
  }
}

@keyframes scrollDown {
  0% {
    transform: translateY(-2vh);
    opacity: 0;
  }

  50% {
    opacity: 1;
  }

  100% {
    transform: translateY(0);
    opacity: 0;
  }
}

</style>
