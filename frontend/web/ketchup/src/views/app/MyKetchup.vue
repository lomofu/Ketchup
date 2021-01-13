<template>
  <div>
    <SearchBar class="mt-12" />
    <Toolbar @toolbarChangeUpdate="handleUpdate" class="mt-2" />
    <Grid v-if="isGrid" class="mt-10" :renderData="mockData" />
    <List class="mt-10" v-else :renderData="mockData" />
  </div>
</template>

<script>
import SearchBar from "@/components/app/index/SearchBar";
import Toolbar from "@/components/app/index/Toolbar";
import Grid from "@/components/app/index/Grid";
import List from "@/components/app/index/List";
import data from "@/mock/list.json";

export default {
  name: "MyKetchup",
  components: {
    SearchBar,
    Toolbar,
    Grid,
    List
  },
  data: () => ({
    isGrid: false,
    mockData: []
  }),
  methods: {
    handleUpdate(flag) {
      this.isGrid = flag;
    }
  },
  created() {
    this.mockData = data.data;
  }
};
</script>

<style scoped></style>
