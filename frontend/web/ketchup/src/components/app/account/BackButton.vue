<template>
  <v-tooltip bottom>
    <template v-slot:activator="{ on, attrs }">
      <v-btn
        :class="`hvr-icon-back ${className}`"
        text
        rounded
        @click="handleBack"
        v-bind="attrs"
        v-on="on"
      >
        <v-icon class="hvr-icon" color="grey">fa-arrow-left</v-icon>
      </v-btn>
    </template>
    <span>{{ tip }}</span>
  </v-tooltip>
</template>

<script>
export default {
  name: "BackButton",
  props: {
    to: {
      type: String,
      default: ""
    },
    tip: {
      type: String,
      default: "Back"
    },
    className: {
      type: String,
      default: ""
    }
  },
  methods: {
    handleBack() {
      if (this.to !== "") {
        this.$router.push(this.to);
      } else {
        this.$router.go(-1);
      }
    }
  }
};
</script>

<style scoped></style>
