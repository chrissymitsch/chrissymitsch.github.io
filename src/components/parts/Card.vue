<template>
  <figure class="card">
    <figure class="pentagon"></figure>
  </figure>

  <aside>
    <p>
      <mark>Creative</mark>
      and
      <mark>introverted</mark><br />
      Master of
      <mark>Media Computer Science</mark>.
    </p>
    <p>
      Practising Software Development.<br />
      Specialized in
      <mark>Human-Centered Design</mark><br />
      and
      <mark>Frontend</mark> Technologies.
    </p>

    <p>
      🛸Sci-Fi loving,<br />
      🧘‍♀️Yoga enjoying,<br />
      🍍Pineapple on Pizza eating<br />
      😺Cat-Mom of Julia
    </p>
  </aside>
</template>

<style scoped>
figure.card {
  position: absolute;
  transform-origin: right;
  transform: rotate(345deg);
  animation: float 7s ease-in-out 0s infinite normal forwards;
  cursor: pointer;
}

figure.pentagon {
  position: absolute;
  left: max(0%, 25vw - 15vh);
  display: flex;
  justify-content: center;
  align-items: flex-end;
  width: 48vmin;
  height: 48vmin;
  background-color: var(--color-background-dark);
  clip-path: polygon(50% 0%, 100% 38%, 82% 100%, 18% 100%, 0% 38%);

  transform: rotate(345deg);
}

aside {
  width: 90%;
  text-align: center;
  padding: 5vh;
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

@keyframes float {
  0%, 100% {
    transform: translateY(0);
  }

  50% {
    transform: translateY(-10px);
  }
}
</style>