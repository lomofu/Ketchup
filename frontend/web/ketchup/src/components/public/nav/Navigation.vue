<template>
  <v-app-bar :elevate-on-scroll="true" app color="white" rounded>
    <v-row class="d-flex align-center ">
      <v-img
        class="ml-8"
        max-height="50"
        max-width="50"
        src="../../../assets/img/tomato.svg"
      >
      </v-img>
      <v-toolbar-title class="ml-5 mt-2">
        <span class="proxima-soft-semi title-text">Ketchup</span>
      </v-toolbar-title>

      <v-spacer />
      <v-btn
        v-if="isShow"
        class="mr-8 btn"
        color="primary"
        outlined
        @click="handleClick"
      >
        <v-icon small left>fa-sign-in-alt</v-icon>
        Sign in
      </v-btn>
      <div class="sendMeBack mr-8" v-else>
        Send me back to the
        <router-link to="/">home page</router-link>
      </div>
    </v-row>
  </v-app-bar>
</template>

<script>
export default {
  name: "Navigation",
  data: () => ({
    isShow: true
  }),
  methods: {
    handleClick() {
      this.$router.push("/login");
    }
  },
  created() {
    const path = this.$route.path;
    if (path === "/login") {
      this.isShow = false;
    }
  }
};
</script>

<style scoped>
.title-text {
  font-weight: bolder;
  font-size: 25px;
}
.btn {
  border-radius: 5px;
}
.sendMeBack {
  color: gray;
  font-size: 12px;
}
</style>
