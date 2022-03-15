import { createApp } from 'vue'
import App from './App.vue'
import Card from './components/parts/Card.vue'
import Halfling from './components/parts/Halfling.vue'
import Hero from './components/Hero.vue'
import Introduction from './components/Introduction.vue'
import MagicPicture from './components/parts/MagicPicture.vue'
import Navigation from './components/Navigation.vue'
import Profile from './components/Profile.vue'

const app = createApp(App)

app
.component('Card', Card)
.component('Halfling', Halfling)
.component('Hero', Hero)
.component('Introduction', Introduction)
.component('MagicPicture', MagicPicture)
.component('Navigation', Navigation)
.component('Profile', Profile)

app.mount('#app')