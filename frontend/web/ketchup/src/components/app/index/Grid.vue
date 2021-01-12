<template>
  <v-row>
    <template v-for="n in 4">
      <v-col :key="n" class="mt-2" cols="12">
        <strong>Category {{ n }}</strong>
      </v-col>

      <v-col v-for="j in 6" :key="`${n}${j}`" cols="2">
        <v-card height="150"></v-card>
      </v-col>
    </template>
  </v-row>
</template>

<script>
export default {
  name: "Grid"
};
</script>

<style scoped></style>
