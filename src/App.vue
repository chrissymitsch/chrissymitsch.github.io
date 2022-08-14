<template>
  <hero></hero>
  <introduction></introduction>
  <profile></profile>
  <projects></projects>
  <contact></contact>

  <footer>
    <p><small>&copy; {{currentYear}} Christine Mitsch (pixlerin), all rights reserved.</small></p>
    <p><small>Made with ❤️ and Vue.js</small></p>
  </footer>

  <navigation></navigation>
</template>

<script>
export default ({
  computed: {
    currentYear() {
      return new Date().getFullYear()
    }
  },
  created() {
    console.log("%cHellooo! You're a", "font-family: sans-serif; font-size: 16px; font-weight: bold; color: #fff; background-color: #004741;");
    console.log("%cDeveloper", "font-family: sans-serif; font-size: 20px; font-weight: bold; color: #F375A8");
    console.log("%ctoo?", "font-family: sans-serif; font-size: 16px; font-weight: bold; color: #fff; background-color: #004741;");
  },
})
</script>

<style>
@import './assets/base.css';

footer {
  text-align: right;
  display: block;
  width: 100%;
  bottom: 0;
  padding: 2vmax;
  background-color: var(--color-background);
}
</style>
