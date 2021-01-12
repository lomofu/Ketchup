<template>
  <div class="home">
    <k-nav></k-nav>
    <v-main>
      <v-lazy
        :options="{
          threshold: 0.5
        }"
        min-height="540"
        mintransition="fade-transition"
      >
        <div class="intro-1">
          <v-container>
            <div class="intro-container d-flex align-center">
              <v-row>
                <v-col class="d-flex align-center" cols="6">
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
                  <v-img
                    class="ml-6"
                    max-width="80%"
                    src="../assets/img/index/dot_animation.gif"
                  />
                </v-col>
              </v-row>
            </div>
          </v-container>
        </div>
      </v-lazy>
      <v-lazy
        :options="{
          threshold: 0.5
        }"
        min-height="500"
        mintransition="fade-transition"
      >
        <div class="intro-2 mt-5">
          <v-container>
            <div class="intro-container d-flex align-center">
              <v-row>
                <v-col class="d-flex animated fadeInLeft delay-z1s" cols="6">
                  <animation1 />
                </v-col>
                <v-col
                  class="d-flex align-center animated fadeInRight delay-z1s"
                  cols="6"
                >
                  <div class="mt-5 ml-5">
                    <p class="main-text1">Write With Your Reader in Mind</p>
                    <p class="sub-text">
                      organizes your writing feedback by theme, so you can see
                      how each change will help your readers better understand
                      your message.
                    </p>
                  </div>
                </v-col>
              </v-row>
            </div>
          </v-container>
        </div>
      </v-lazy>
      <v-lazy
        :options="{
          threshold: 0.5
        }"
        min-height="400"
        transition="fade-transition"
      >
        <div class="intro-3 animated fadeInUp delay-z1s">
          <v-container class="mt-10">
            <p class="main-text text-center">Works Where You Do</p>
            <p class="sub-text text-center">
              Get corrections from Grammarly while you write on Gmail, Twitter,
              LinkedIn, and all your other favorite sites.
            </p>
            <div class="intro-container mt-10">
              <v-row class="d-flex justify-center">
                <v-icon color="red">fab fa-google</v-icon>
                <v-icon class="ml-5" color="primary">fab fa-twitter</v-icon>
                <v-icon class="ml-5" color="amber">fa-envelope</v-icon>
                <v-icon class="ml-5" color="green">fa-file-word</v-icon>
              </v-row>
              <v-row class="mt-5">
                <animation2></animation2>
              </v-row>
            </div>
          </v-container>
        </div>
      </v-lazy>
    </v-main>
    <k-footer />
  </div>
</template>

<script>
import Navigation from "@/components/public/nav/Navigation";

export default {
  name: "Home",
  components: {
    kNav: Navigation,
    animation1: () => import("../components/home/animation1"),
    animation2: () => import("../components/home/animation2"),
    kFooter: () => import("../components/public/foot/Kfooter")
  },
  data: () => ({
    isActive: false
  })
};
</script>
<style scoped>
.home {
  background-image: url("../assets/img/index/explosion_colored.jpg");
  background-size: 45%;
  background-position: -25% 10%;
}

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
  height: 500px;
  max-height: 500px;
}

.intro-2 {
  height: 500px;
  max-height: 500px;
  background-image: url("../assets/img/index/signature.svg");
  background-position: 82% 33%;
  background-size: 6%;
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
