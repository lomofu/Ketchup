<template>
  <v-row>
    <v-col class="d-flex justify-lg-space-between" cols="12">
      <v-btn dark depressed color="green">
        <v-icon small>
          fa-file
        </v-icon>
        <span class="ml-3">New</span>
      </v-btn>
      <v-btn-toggle dense mandatory @change="handleChange">
        <v-btn>
          <v-icon small>fa-th-large</v-icon>
        </v-btn>
        <v-btn>
          <v-icon small>fa-list </v-icon>
        </v-btn>
      </v-btn-toggle>
    </v-col>
    <v-col class="mt-1" cols="12">
      <v-divider />
    </v-col>
  </v-row>
</template>

<script>
export default {
  name: "Toolbar",
  methods: {
    handleChange(e) {
      if (e === 0) {
        this.$emit("toolbarChangeUpdate", true);
      }
      if (e === 1) {
        this.$emit("toolbarChangeUpdate", false);
      }
    }
  }
};
</script>

<style scoped></style>
