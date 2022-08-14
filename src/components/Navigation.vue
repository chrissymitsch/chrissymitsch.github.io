<template>
  <nav id="navi" :class="{ open: !collapsed }" v-on:click="toggleMenu()">
    <ul>
      <li>
        <figure>
          <p>
            <img src="../assets/img/burger.png" v-if="collapsed"/>
            <img src="../assets/img/x.png" v-if="!collapsed"/>
          </p>
        </figure>
      </li>
      <li>
        <ul id="menu" :class="{ collapsed }">
          <li>
            <a href="#about">About</a>
          </li>
          <li>
            <a href="#insights">Insights</a>
          </li>
          <li>
            <a href="#fun">Fun</a>
          </li>
          <li>
            <a href="#contact">Contact</a>
          </li>
        </ul>
      </li>
    </ul>
  </nav>
  <nav id="logo">
    <img src="./../assets/img/logo-light.svg" alt="Chrissy Mitsch" v-on:click="scrollUp()" />
  </nav>
</template>

<style scoped>
nav {
  position: fixed;
}

nav#logo {
  left: 1vh;
  top: 1vh;
  width: 8vmin;
}

nav#navi {
  right: 0;
  top: 0;
  padding: calc((1vh + 8vmin - var(--font-size-s)) / 2);
}

nav#navi.open {
  background: linear-gradient(225deg, rgba(15,22,38,1) 0%, rgba(15,22,38,0) 50vmax);
  width: 100%;
  height: 100vh;
}

nav#logo img {
  cursor: pointer;
}

nav a:before {
  content: '';
}

ul {
  list-style: none;
  display: flex;
  justify-content: center;
  align-items: flex-end;
  flex-flow: column;
}

li figure {
  cursor: pointer;
}

img {
  width: auto;
}

#menu {
  transform-origin: top center;
}

#menu:not(.collapsed) li {
  transform: scaleY(1);
  transition: transform .5s ease-out;
}

#menu.collapsed li {
  transform: scaleY(0);
  transition: transform .25s ease-in;
}
</style>


<script scoped>
export default {
  data() {
    return {
      collapsed: true
    }
  },
  methods: {
    scrollUp() {
      window.scrollTo({
        top: 0,
        behavior: 'smooth'
      });
    },
    toggleMenu() {
      this.collapsed = !this.collapsed
    }
  }
}
</script>
