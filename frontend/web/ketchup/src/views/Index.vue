<template>
  <div class="index">
    <left-menu />
    <v-main>
      <v-row>
        <v-spacer />
        <v-col cols="10">
          <transition enter-active-class="animated fadeIn" mode="out-in">
            <router-view />
          </transition>
        </v-col>
        <v-spacer />
      </v-row>
    </v-main>
    <v-responsive height="50" />
  </div>
</template>

<script>
import LeftMenu from "@/components/app/index/LeftMenu";
export default {
  name: "Index",
  components: {
    leftMenu: LeftMenu
  }
};
</script>
