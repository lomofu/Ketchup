<template>
  <v-row class="mt-3 pa-8">
    <template v-for="(item, index) in renderData">
      <v-col
        cols="6"
        :key="item.title"
        :align="index % 2 !== 0 ? null : 'right'"
      >
        <div class="hvr-grow-shadow">
          <v-card
            class="rounded-lg"
            dark
            :color="item.color"
            width="350"
            height="200"
            @click="handleClick(item)"
          >
            <div class="d-flex flex-nowrap">
              <div>
                <v-card-title class="headline" v-text="item.title" />
                <v-card-subtitle class="text-left" v-text="item.description" />

                <v-card-actions class="d-flex align-self-end">
                  <v-btn class="ml-2 mt-5" outlined small>
                    {{ item.btn }}
                  </v-btn>
                </v-card-actions>
              </div>
              <v-avatar class="d-flex align-self-center mr-5 ">
                <v-icon class="ma-3" x-large>{{ item.icon }}</v-icon>
              </v-avatar>
            </div>
          </v-card>
        </div>
      </v-col>
    </template>
  </v-row>
</template>

<script>
import { QUICK_BAR } from "@/common/app/account/AccountConstant";
export default {
  name: "QuickBar",
  data: () => ({
    renderData: QUICK_BAR
  }),
  methods: {
    handleClick(item) {
      if (item.link !== null) {
        this.$router.push(item.link);
      } else if (item.action !== null) {
        //todo delete action
      }
    }
  }
};
</script>

<style scoped></style>
