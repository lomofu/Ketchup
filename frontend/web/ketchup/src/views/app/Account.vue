<template>
  <div>
    <v-row justify="center">
      <v-avatar size="100" class="mt-16">
        <v-img src="https://randomuser.me/api/portraits/women/85.jpg" />
      </v-avatar>
    </v-row>
    <v-list-item-title class="name-title mt-8 text-center">
      Welcome back, Sandra Adams
    </v-list-item-title>
    <v-list-item-subtitle class="name-subtitle text-center grey--text">
      Your data, activity and preferences that help make Ketchup more useful to
      you
    </v-list-item-subtitle>
    <QuickBar />
  </div>
</template>

<script>
import QuickBar from "@/components/app/account/QuickBar";
export default {
  name: "Account",
  components: {
    QuickBar
  }
};
</script>

<style scoped>
.name-title {
  font-size: 24px;
}

.name-subtitle {
}
</style>
