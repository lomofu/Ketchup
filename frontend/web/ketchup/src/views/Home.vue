<template>
  <div>
    <k-nav></k-nav>
    <v-lazy
      transition="fade-transition"
      :options="{
        rootMargin: '0px',
        threshold: 1
      }"
    >
      <div class="intro-1 animated fadeInDownB delay-2s">
        <v-container>
          <div class="intro-container d-flex align-center">
            <v-row>
              <v-col cols="6" class="d-flex align-center">
                <div class="mt-5">
                  <p class="main-text">Great Writing,</p>
                  <p class="main-text1">Simplified</p>
                  <p class="sub-text">
                    Compose bold, clear, mistake-free writing with Grammarly’s
                    AI-powered writing assistant.
                  </p>
                </div>
              </v-col>
              <v-col cols="6">
                <v-img src="../assets/index/dot_animation.gif" />
              </v-col>
            </v-row>
          </div>
        </v-container>
      </div>
    </v-lazy>
    <v-lazy transition="fade-transition">
      <div class="intro-2">
        <v-container>
          <div class="intro-container d-flex align-center">
            <v-row>
              <v-col cols="6" class="d-flex"> <animation1 /></v-col>
              <v-col cols="6" class="d-flex align-center">
                <div class="mt-5 ml-5">
                  <p class="main-text1">Write With Your Reader in Mind</p>
                  <p class="sub-text">
                    organizes your writing feedback by theme, so you can see how
                    each change will help your readers better understand your
                    message.
                  </p>
                </div>
              </v-col>
            </v-row>
          </div>
        </v-container>
      </div>
    </v-lazy>
    <v-lazy transition="fade-transition">
      <div class="intro-3">
        <v-container class="mt-8">
          <p class="main-text text-center">Works Where You Do</p>
          <p class="sub-text text-center">
            Get corrections from Grammarly while you write on Gmail, Twitter,
            LinkedIn, and all your other favorite sites.
          </p>
          <div class="intro-container mt-10">
            <v-row class="d-flex justify-center">
              <v-icon color="red">fa-google</v-icon>
              <v-icon class="ml-5" color="primary">fa-twitter</v-icon>
              <v-icon class="ml-5" color="amber">fa-envelope-o</v-icon>
              <v-icon class="ml-5" color="green">fa-file-text-o</v-icon>
            </v-row>
            <v-row class="mt-5">
              <animation2></animation2>
            </v-row>
          </div>
        </v-container>
      </div>
    </v-lazy>
    <k-footer />
  </div>
</template>

<script>
import Navigation from "@/components/public/nav/Navigation";

export default {
  name: "Home",
  components: {
    kNav: Navigation,
    animation1: () => import("../components/index/animation1"),
    animation2: () => import("../components/index/animation2"),
    kFooter: () => import("../components/public/foot/Kfooter")
  }
};
</script>
<style scoped>
.main-text {
  font-family: "IBMPlexSans-Medium", serif;
  font-size: 36px;
  font-weight: bold;
}
.main-text1 {
  font-family: "IBMPlexSans-Medium", serif;
  font-size: 30px;
}
.sub-text {
  color: #5d5d5d;
}
.intro-1 {
  background-image: url("../assets/index/explosion_colored.jpg");
  background-size: 420px;
  background-position: left center;
  height: 500px;
  max-height: 500px;
}

.intro-2 {
  height: 500px;
  max-height: 500px;
}
.intro-3 {
  height: 500px;
  max-height: 500px;
}
.intro-container {
  min-height: 450px;
  height: 450px;
  max-height: 500px;
}
</style>
