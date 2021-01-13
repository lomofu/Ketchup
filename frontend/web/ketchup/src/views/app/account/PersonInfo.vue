<template>
  <div>
    <back-button class-name="mt-5" to="/index/account" tip="Back to Account" />
    <v-list-item-title class=" mt-5 name-title text-center">
      Personal info
    </v-list-item-title>
    <v-list-item-subtitle class="text-center grey--text">
      Personal info, such as your name, gender and position, that you use on
      Ketchup
    </v-list-item-subtitle>

    <Info class="mt-9 mb-12" />

    <div
      v-for="item in renderData"
      :key="item.title"
      class="d-flex justify-center mt-5"
    >
      <choose-other
        :title="item.title"
        :subtitle="item.description"
        :icon="item.icon"
        :iconColor="item.color"
        :to="item.link"
      />
    </div>
  </div>
</template>

<script>
import Info from "@/components/app/account/Info";
import BackButton from "@/components/app/account/BackButton";
import ChooseOther from "@/components/app/account/ChooseOther";
import { QUICK_BAR } from "@/common/app/account/AccountConstant";

export default {
  name: "PersonInfo",
  components: {
    Info,
    BackButton,
    ChooseOther
  },
  computed: {
    renderData() {
      return QUICK_BAR.filter(e => this.$route.path !== e.link);
    }
  }
};
</script>

<style scoped>
.name-title {
  font-size: 24px;
}
</style>
