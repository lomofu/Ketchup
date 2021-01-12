<template>
  <v-row>
    <v-text-field
      v-model="searchValue"
      dense
      solo
      label="Search"
      append-icon="fa-search"
      clearable
    />
  </v-row>
</template>

<script>
export default {
  name: "SearchBar",
  data: () => ({
    searchValue: ""
  })
};
</script>

<style scoped></style>
