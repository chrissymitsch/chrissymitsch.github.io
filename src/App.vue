<template>
    <hello-world></hello-world>
    <!-- <introduction></introduction>
    <profile></profile> -->

    <section id="career">
        <h1>Career</h1>
    </section>

    <section id="projects">
        <h1>Projects</h1>
    </section>

    <footer></footer>
    <navigation></navigation>

</template>

<script>
export default {
  created() {
    console.log("%cHellooo! You're a", "font-family: sans-serif; font-size: 16px; font-weight: bold; color: #fff; background-color: #004741;");
    console.log("%cDeveloper", "font-family: sans-serif; font-size: 20px; font-weight: bold; color: #F375A8");
    console.log("%ctoo?", "font-family: sans-serif; font-size: 16px; font-weight: bold; color: #fff; background-color: #004741;");
  },
}
</script>

<style>
@import './assets/base.css';
</style>
