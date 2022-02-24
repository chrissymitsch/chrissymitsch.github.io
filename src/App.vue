<script setup>
import HelloWorld from './components/HelloWorld.vue'
import TheWelcome from './components/TheWelcome.vue'
</script>

<template>
    <nav>Navigation</nav>

    <hello-world></hello-world>

    <main>
        <article>Introduction</article>
    </main>

    <section id="profile">
        <h1>Profile / About Me</h1>
        <p>I explain myself</p>
        <video loop width="200" autoplay muted>
            <source src="media/chocolate-frog.mp4" type="video/mp4">
        </video>
    </section>

    <section id="career">
        <h1>Career</h1>
    </section>

    <section id="projects">
        <h1>Projects</h1>
    </section>

    <footer></footer>
</template>

<style>
@import './assets/base.css';

#app {
  max-width: 1920px;
  margin: auto;
}
</style>
