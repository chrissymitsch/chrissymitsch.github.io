<template>
  <figure class="shadow"></figure>
  <figure class="pentagon">
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
</template>

<style scoped>
figure.shadow {
  display: block;
  position: absolute;
  left: 4vh;
  top: 48vh;
  width: 40vh;
  height: 10vh;
  background: black;
  filter: blur(3vh);
  border-radius: 50%;
  transform-style: preserve-3d;
  transform: scaleX(1) rotate3d(-30, -50, 8, 333deg);
  animation: shadow 4s ease-in-out 0s infinite normal forwards;
  opacity: 0.2;
}

figure.pentagon {
  display: flex;
  justify-content: center;
  align-items: flex-end;
  width: 48vh;
  height: 48vh;
  background-color: var(--color-background-dark);
  clip-path: polygon(50% 0%, 100% 38%, 82% 100%, 18% 100%, 0% 38%);
  transform: rotate(345deg);
  transform-origin: top;
  animation: float 4s ease-in-out 0s infinite normal forwards;
}

aside {
  width: 90%;
  text-align: center;
  padding: 1vh;
}

aside p {
  font-weight: 500;
  font-size: 2vh;
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
    transform: translateY(0) rotate3d(-30, -50, 8, 345deg);
  }

  50% {
    transform: translateY(-10px) rotate3d(-30, -50, 9, 340deg);
  }
}

@keyframes shadow {
  0%, 100% {
    opacity: 0.2;
    transform: scaleX(1.2) rotate3d(-30, -50, 8, 333deg);
  }

  50% {
    opacity: 0.3;
    transform: scaleX(1.1) rotate3d(-30, -50, 8, 333deg);
  }
}
</style>