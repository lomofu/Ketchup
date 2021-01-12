<template>
  <div>
    <SearchBar class="mt-16" />
    <Toolbar @toolbarChangeUpdate="handleUpdate" class="mt-2" />
    <Grid v-if="isGrid" class="mt-10" />
    <List class="mt-10" v-else></List>
  </div>
</template>

<script>
import SearchBar from "@/components/app/index/SearchBar";
import Toolbar from "@/components/app/index/Toolbar";
import Grid from "@/components/app/index/Grid";
import List from "@/components/app/index/List";

export default {
  name: "MyKetchup",
  components: {
    SearchBar,
    Toolbar,
    Grid,
    List
  },
  data: () => ({
    isGrid: false
  }),
  methods: {
    handleUpdate(flag) {
      this.isGrid = flag;
    }
  }
};
</script>

<style scoped></style>
