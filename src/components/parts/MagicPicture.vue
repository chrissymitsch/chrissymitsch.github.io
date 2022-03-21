<template>
  <div id="magic-picture" v-bind:style="{ top: top + 'px' }">
    <div id="backface"></div>
    <div id="container">
      <video loop autoplay muted id="chocolatefrog">
        <source src="./../../assets/media/chocolate-frog.mp4" type="video/mp4">
      </video>
    </div>
  </div>
</template>

<style scoped>
#magic-picture {
  position: absolute;
  top: 35vmin;
  left: max(0%, 90vw - 40vmin);
  width: 25vmin;
  display: flex;
  justify-content: flex-end;
  align-items: flex-start;
  transform-style: preserve-3d;
  transform-origin: right;
  animation: float 10s ease-in-out 0s infinite normal forwards;
}

video {
  width: 100%;
}

video, #container, #backface {
  border-radius: 50%/25%;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}

#container, #backface {
  position: absolute;
  top: calc(-1 * 25vmin / 9 * 16);
  width: 25vmin;
  height: calc(25vmin / 9 * 16 - 1.5vh);
  margin: auto;
  perspective: 1000px;
}

.twist {
  animation: twist 1s linear forwards;
  transform-style: preserve-3d;
  transform-origin: center center;
  transform: rotateY(0deg);
}

#container {
  border: 1vh solid var(--color-text-highlight);
  background-color: var(--color-text-highlight);
  backface-visibility: hidden;
}

#container.twist {
  animation: twist 1s linear forwards, blur 1s linear forwards;
}

#backface {
  border: 1vh solid var(--color-background-dark);
  background-color: var(--color-background-dark);
  backface-visibility: visible;
}

@keyframes twist {
  0% {
    transform: rotateY(0deg);
  }
  50% {
    transform: rotateY(-180deg);
  }
  100% {
    transform: rotateY(-360deg);
  }
}

@keyframes blur {
  0%, 100% {
    filter: blur(0);
    opacity: 1;
  }
  50% {
    filter: blur(3px);
    opacity: 0;
  }
}

@keyframes float {
  0%, 100% {
    transform: rotateZ(3deg) translateY(0);
  }

  50% {
    transform: rotateZ(10deg) translateY(-10px);
  }
}

@media (max-aspect-ratio: 4/3) {
  #magic-picture {
    animation: none;
    position: relative;
    left: inherit;
    width: 100vw;
    justify-content: center;
  }

  #container, #backface {
    position: absolute;
    top: -50vmax;
    width: 50vmin;
    height: calc(50vmin / 9 * 16 - 1.5vh);
    margin: auto;
    perspective: 1000px;
  }
}

</style>

<script scoped>
export default {
  data() {
    return {
      top: 0
    }
  },
  mounted() {
    var video = document.getElementById("chocolatefrog");
    var backface = document.getElementById("backface");
    var container = document.getElementById("container");
    video.addEventListener('loadeddata', function() {
      // Video is loaded and can be played
      document.getElementsByTagName('video')[0].addEventListener('timeupdate', function () {
        if (((this.currentTime >= 6.5 && this.currentTime < 7.5)
        || (this.currentTime >= 12))
        && !backface.classList.contains('twist')) {
          backface.classList.add('twist');
          container.classList.add('twist');
        }
        if (((this.currentTime >= 7.5 && this.currentTime < 12)
        || (this.currentTime > 0.5 && this.currentTime < 6.5))
        && backface.classList.contains('twist')) {
          backface.classList.remove('twist');
          container.classList.remove('twist');
        }
      }, false);
    }, false);

    this.scrollParallax();
    window.addEventListener('scroll', this.scrollParallax);
  },
  destroyed () {
    window.removeEventListener('scroll', this.scrollParallax);
  },
  methods: {
    scrollParallax() {
      this.top = window.innerHeight - (window.scrollY / 2);
    }
  }
}
</script>
