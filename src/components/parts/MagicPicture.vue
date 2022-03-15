<template>
  <video loop autoplay muted>
    <source src="./../../assets/media/chocolate-frog.mp4" type="video/mp4">
  </video>
</template>

<style scoped>
video {
  width: 25vh;
  border: 1vh solid var(--color-text-highlight);
  border-radius: 50%/25%;
  border-bottom-right-radius: 0;
  border-bottom-left-radius: 0;
}
</style>

// var video = document.getElementById("video-id-name");

// if ( video.readyState === 4 ) {
//     // it's loaded
// }