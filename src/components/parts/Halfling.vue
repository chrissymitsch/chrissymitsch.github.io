<template>
  <figure v-if="!showSmall" class="wave front"></figure>
  <section class="section-hide-small" v-if="!showSmall" ref="halfling">
    <figure class="halfling hide-for-small" :class="{ fixed, animate, reanimate }" :style="{ bottom: posBottom+'px' }"></figure>
  </section>
  <section class="section-show-small" v-if="showSmall" ref="halfling">
    <figure class="halfling show-for-small"></figure>
  </section>
  <figure class="wave back" ref="wave" :class="{ 'hide-for-small': !showSmall }"></figure>
</template>

<script>
export default ({
  props: {
    showSmall: Boolean
  },
  data() {
    return {
      fixed: false,
      animate: false,
      reanimate: false,
      posBottom: 0
    }
  },
  mounted () {
    this.setHalflingPosition();
    window.addEventListener("resize", this.setHalflingPosition);
    window.addEventListener('scroll', this.setHalflingPosition);
  },
  destroyed () {
    window.removeEventListener("resize", this.setHalflingPosition);
    window.removeEventListener('scroll', this.setHalflingPosition);s
  },
  methods: {
    setHalflingPosition() {
      const halflingPositionTop = this.$refs.halfling?.getBoundingClientRect().top;
      const wavePositionBottom = this.$refs.wave?.getBoundingClientRect().bottom;
      const height = window.innerHeight;
      const width = window.innerWidth;

      if (height > wavePositionBottom) {
        this.fixed = true
        this.animate = true
        this.reanimate = false
        this.posBottom = height - wavePositionBottom;
      } else {
        this.posBottom = 0;
        if ((height > width && halflingPositionTop <= height - width) ||
            (height <= width && halflingPositionTop <= 0)) {
          this.fixed = true
          this.animate = true
          this.reanimate = false
        } else {
          this.fixed = false
          this.animate = false
          this.reanimate = true
        }
      }
    }
  }
})
</script>



<style scoped>
section {
  min-height: 100vmin;
  max-width: 100%;
}

.section-hide-small {
    min-height: 100vmin;
  }

.section-show-small {
  min-height: 0;
}

.halfling {
  position: absolute;
  left: 0;
  bottom: 0;
  width: 100%;
  height: 100vmin;
  background: url(/src/assets/img/profile/halfling.png) no-repeat;
  background-position: bottom center;
  background-size: contain;
}

.show-for-small {
  display: none;
}

.hide-for-small {
  display: inherit;
}

.fixed {
  top: inherit;
  bottom: 0;
  position: fixed;
}

.animate {
  animation: rollLeft 1s ease-in-out forwards;
}

.reanimate {
  transform: translateX(-50%);
  animation: rollRight .5s ease-in-out forwards;
}

.wave {
  position: absolute;
  width: 100vw;
  height: 20vmin;
  background-position: bottom center;
  background-size: 100% 100%;
  background-repeat: no-repeat;
}

.wave.front {
  top: -1px;
  transform: rotate(180deg);
  background-image: url(./../../assets/img/wave-front.png);
}

.wave.back {
  bottom: -1px;
  background-image: url(./../../assets/img/wave-back.png);
}

@media (max-aspect-ratio: 2/3) {
  .section-hide-small {
    min-height: 0;
  }

  .section-show-small {
    min-height: 100vmin;
  }

  .halfling.show-for-small {
    margin-bottom: 1em;
  }

  .show-for-small {
    display: inherit;
  }

  .hide-for-small {
    display: none;
  }

  .animate {
    animation: rollLeftOpacity 1s ease-in-out forwards;
  }

  .reanimate {
    animation: rollRightOpacity .5s ease-in-out forwards;
  }
}


@keyframes rollLeft {
  0% {
    transform: translateX(0);
  }
  100% {
    transform: translateX(-50%);
  }
}

@keyframes rollRight {
  0% {
    transform: translateX(-50%);
  }
  100% {
    transform: translateX(0);
  }
}

@keyframes rollLeftOpacity {
  0% {
    transform: translateX(0);
    opacity: 1;
  }
  100% {
    transform: translateX(-50%);
    opacity: 0.25;
  }
}

@keyframes rollRightOpacity {
  0% {
    transform: translateX(-50%);
    opacity: 0.25;
  }
  100% {
    transform: translateX(0);
    opacity: 1;
  }
}
</style>