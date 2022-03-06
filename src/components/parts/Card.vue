<template>
  <figure class="card front" @click="turnCard">
    <figure class="shadow" :class="{ backside: backside }"></figure>
    <figure class="pentagon" :class="{ backside: backside }">
      <aside>
        <p>
          <mark>Creative</mark>
          and
          <mark>introverted</mark><br />
          Master of
          <mark>Media Computer Science</mark>.<br />
          Practising Software Development.<br />
          Specialized in
          <mark>Human-Centered<br />Design</mark>
          and
          <mark>Frontend</mark><br />
          Technologies.
        </p>

        <p>
          Sci-Fi loving, Yoga enjoying,<br />
          Ananas on Pizza Eating<br />
          Cat-Mom of Julia
        </p>
      </aside>
    </figure>
  </figure>
  <figure class="card back" @click="turnCard">
    <figure class="shadow" :class="{ backside: backside }"></figure>
    <figure class="pentagon" :class="{ backside: backside }">
      <aside>
        <magic-picture></magic-picture>
      </aside>
    </figure>
  </figure>
</template>

<script>
export default ({
  data() {
    return {
      backside: false
    }
  },
  methods: {
    turnCard() {
      this.backside = !this.backside;
    }
  }
})
</script>

<style scoped>
figure.card {
  width: min(100vw, 48vh);
  height: min(100vw, 48vh);
  transform-origin: right;
  transform: rotate(345deg);
  animation: float 7s ease-in-out 0s infinite normal forwards;
  cursor: pointer;
}

figure.card.back {
  position: absolute;
  top: 0;
}

figure.shadow, figure.pentagon {
  transition: 1s;
  backface-visibility: hidden;
}

figure.shadow {
  display: block;
  position: absolute;
  left: max(4%, 25vw - 19vh);
  top: 38vmax;
  width: 30vmax;
  height: 5vmax;
  background: black;
  filter: blur(3vh);
  border-radius: 50%;
  transform-style: preserve-3d;
  transform: scaleX(1);
  animation: shadow 7s ease-in-out 0s infinite normal forwards;
  opacity: 0.2;
}

figure.pentagon {
  position: absolute;
  left: max(0%, 25vw - 15vh);
  display: flex;
  justify-content: center;
  align-items: flex-end;
  width: 38vmax;
  height: 38vmax;
  background-color: var(--color-background-dark);
  clip-path: polygon(50% 0%, 100% 38%, 82% 100%, 18% 100%, 0% 38%);
  transform-origin: top;
}

figure.card.front .backside {
  transform: rotateY(180deg);
}

figure.card.back .pentagon, figure.card.back .shadow {
  transform: rotateY(180deg);
}

figure.card.back .backside {
  transform: rotateY(360deg);
}

aside {
  width: 90%;
  text-align: center;
  padding: 1vh;
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


@media (max-aspect-ratio: 4/3) {
  figure.card {
    transform: none;
    animation: none;
    width: 100%;
  }

  figure.card.back {
    position: relative;
    top: inherit;
  }

  
figure.card.front .backside,
figure.card.back .backside,
figure.card.back .pentagon {
    transform: none;
  }

  figure.shadow {
    display: none;
  }

  figure.pentagon {
    clip-path: none;
    transform: none;
    align-items: center;
    position: relative;
    width: 100%;
    left: 0;
    margin-top: -1rem;
    height: inherit;
    padding: 2rem;
  }
}


@keyframes float {
  0%, 100% {
    transform: translateY(0) rotate3d(-30, -50, 8, 345deg);
  }

  50% {
    transform: translateY(-10px) rotate3d(-30, -50, 9, 340deg);
  }
}

@keyframes shadow {
  0%, 100% {
    opacity: 0.25;
    transform: scaleX(1.2);
  }

  50% {
    opacity: 0.2;
    transform: scaleX(1.1);
  }
}
</style>