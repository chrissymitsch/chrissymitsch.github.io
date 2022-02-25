<script>
import HelloWorld from './components/HelloWorld.vue'
import Introduction from './components/Introduction.vue'
import Navigation from './components/Navigation.vue'
import Profile from './components/Profile.vue'

export default {
  components: {
    HelloWorld, Navigation, Introduction, Profile,
  }
}
</script>

<template>
    <hello-world></hello-world>

    <introduction></introduction>
    <profile></profile>

    <section id="career">
        <h1>Career</h1>
    </section>

    <section id="projects">
        <h1>Projects</h1>
    </section>

    <footer></footer>
    <navigation></navigation>

</template>

<style>
@import './assets/base.css';

#app {
  max-width: 1920px;
  margin: auto;
}
</style>
