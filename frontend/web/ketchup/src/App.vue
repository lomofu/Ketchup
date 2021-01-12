<template>
  <v-app>
    <transition enter-active-class="animated fadeIn" mode="out-in">
      <router-view />
    </transition>
    <v-fab-transition>
      <v-btn
        v-show="navBtn.btnShow"
        color="red"
        dark
        fixed
        bottom
        right
        fab
        @click="$vuetify.goTo(0)"
      >
        <v-icon small>{{ navBtn.btnIcon }}</v-icon>
      </v-btn>
    </v-fab-transition>
  </v-app>
</template>

<script>
import debounce from "lodash/debounce";

export default {
  name: "App",
  data: () => ({
    navBtn: {
      btnShow: false,
      btnIcon: "fa-chevron-up"
    }
  }),
  methods: {
    handleScroll() {
      let me = this;
      let scrollTop =
        window.pageYOffset ||
        document.documentElement.scrollTop ||
        document.body.scrollTop;
      me.navBtn.btnShow = scrollTop > 120;
    }
  },
  created() {
    window.addEventListener("scroll", debounce(this.handleScroll, 200));
  },
  beforeDestroy() {
    window.removeEventListener("scroll", this.handleScroll);
  }
};
</script>
