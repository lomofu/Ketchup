<template>
  <v-card
    outlined
    class="rounded-lg pt-2 pb-2 hvr-shadow"
    min-width="350"
    width="75%"
    @click="$router.push(to)"
  >
    <div class="d-flex flex-nowrap">
      <v-card-text style="width: 90%">
        <v-card-title>{{ title }} </v-card-title>
        <v-card-subtitle>
          {{ subtitle }}
        </v-card-subtitle>
      </v-card-text>
      <v-avatar class="d-flex align-self-center">
        <v-icon :color="iconColor" class="pa-5" x-large>
          {{ icon }}
        </v-icon>
      </v-avatar>
    </div>
  </v-card>
</template>

<script>
export default {
  name: "ChooseOther",
  props: {
    title: {
      type: String,
      default: " Choose what others see"
    },
    subtitle: {
      type: String,
      default: ""
    },
    icon: {
      type: String,
      default: ""
    },
    to: {
      type: String,
      default: ""
    },
    iconColor: {
      type: String,
      default: "primary"
    }
  }
};
</script>

<style scoped></style>
