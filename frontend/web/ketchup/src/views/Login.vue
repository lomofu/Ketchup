<template>
  <div class="l-container d-flex flex-column justify-center">
    <k-nav />
    <v-card class="align-self-center animated fadeInUp delay-z1s" width="360">
      <div class="line" />
      <p class="l-headline ma-8">Member Login</p>
      <panel />
    </v-card>
    <div class="signup text-center mt-8 animated fadeInUp delay-z3s">
      Haven't an account? <router-link to="/signup">Sign up</router-link>
    </div>
  </div>
</template>

<script>
import Navigation from "@/components/public/nav/Navigation";
import LoginPanel from "@/components/public/login/LoginPanel";
export default {
  name: "Login",
  components: {
    kNav: Navigation,
    panel: LoginPanel
  }
};
</script>

<style scoped>
.l-container {
  height: 100%;
  width: auto;
  background-image: url("../assets/img/login/login_background.png");
  background-size: 36%;
  background-position: left 88%;
}
.line {
  background: #40e0d0; /* fallback for old browsers */
  background: -webkit-linear-gradient(
    to right,
    #ff0080,
    #ff8c00,
    #40e0d0
  ); /* Chrome 10-25, Safari 5.1-6 */
  background: linear-gradient(
    to right,
    #ff0080,
    #ff8c00,
    #40e0d0
  ); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
  width: 100%;
  height: 5px;
}
.l-headline {
  text-align: center;
  font-size: 24px;
  font-weight: bold;
}
.signup {
  color: gray;
  font-size: 12px;
}
</style>
