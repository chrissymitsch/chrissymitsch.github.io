<template>
  <section id="fun">
    <!-- <nerd></nerd> -->
    <aside>
      <h1 class="accent">Everything</h1>
      <h2>just for fun</h2>
    </aside>
    <article>
      <div class="card">
        <h3 class="accent">Gonna draw 'em all'</h3>
        <p>Speedpainting of all 151 Pokémon</p>
        <div class="youtube-1">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/videoseries?list=PLXSf0exUR8gD43NK4SIjBm-f5d0utBxj2" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
      </div>
      <div class="card">
        <h3 class="accent">Game Design and Pixel Art Tweets</h3>
        <p>Currently tweeting about my game &quot;The Lost Hotel&quot;</p>
        <div class="twitter">
          <a class="twitter-timeline" data-theme="dark" href="https://twitter.com/pixlerin?ref_src=twsrc%5Etfw">Tweets by pixlerin</a>
        </div>
      </div>
      <div class="card">
        <h3 class="accent">Game Devlogs</h3>
        <p>Devlogs for my Game &quot;The Lost Hotel&quot;</p>
        <div class="youtube-2">
          <iframe width="100%" height="100%" src="https://www.youtube.com/embed/videoseries?list=PLXSf0exUR8gBkutgjy420dIQvUMkkwt6q" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        </div>
      </div>
    </article>
  </section>
</template>

<style scoped>
section#fun {
  min-height: 100vmin;
  max-width: 100%;
  display: flex;
  flex-flow: column;
  background-image: url(./../assets/img/projects/tempel.png);
  background-position: top center;
  background-size: 100%;
  background-repeat: no-repeat;
}

aside {
  width: 100vmax;
  /* margin-top: -80vmin; */
  margin-top: 20vmin;
  max-width: 100%;
  padding: 0 3vmax;
  align-self: flex-start;
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
  text-align: center;
}

h2 {
  font-size: var(--font-size-m);
  text-align: center;
}

article {
  margin-top: 2.5vmax;
  text-align: center;
  display: flex;
  flex-flow: row;
  flex-wrap: wrap;
  justify-content: center;
  align-content: center;
  align-items: center;
  gap: 2.5vmin;
}

article div.card {
  background: linear-gradient(200deg, rgb(15, 22, 38) 0%, rgba(15,22,38,0) 50%);
  padding: 3vmin;
}

article p {
  padding-bottom: 1vmin;
}

.twitter {
  width: 80vmin;
  height: 80vmin;
  overflow: scroll;
}

.youtube-1 {
  width: 45vmin;
  height: 80vmin;
}

.youtube-2 {
  width: 80vmin;
  height: 45vmin;
}

</style>
