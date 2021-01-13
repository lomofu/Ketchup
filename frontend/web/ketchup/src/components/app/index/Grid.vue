<template>
  <v-row>
    <template v-for="item in renderData">
      <v-col :key="item.createTime" class="mt-2" cols="12">
        <v-subheader class="pa-0 mt-2 mb-2">{{ item.createTime }}</v-subheader>
        <v-row>
          <v-col v-for="el in item.data" :key="el.id" cols="2">
            <div class="hvr-glow" style="width: 100%">
              <v-card height="150" elevation="2">
                <v-card-text>
                  <p class="card-title">{{ el.title }}</p>
                  <p class="card-description">{{ el.description }}</p>
                </v-card-text>
                <v-divider />
                <v-card-actions>
                  <p class="ml-2 card-error">
                    {{ el.errors }}
                  </p>
                </v-card-actions>
              </v-card>
            </div>
            <v-spacer />
          </v-col>
        </v-row>
      </v-col>
    </template>
  </v-row>
</template>

<script>
export default {
  name: "Grid",
  props: {
    renderData: {
      type: Array,
      required: true
    }
  }
};
</script>

<style scoped>
.card-title {
  font-weight: bold;
  font-size: 16px;
  color: black;
}

.card-error {
  font-family: "Proxima Soft Semi Bold", "sans-serif";
  font-size: 18px;
  font-weight: bold;
  color: red;
}

.hvr-glow:hover,
.hvr-glow:focus,
.hvr-glow:active {
  box-shadow: 0 0 11px 1px rgb(167 162 162 / 50%);
}
</style>
