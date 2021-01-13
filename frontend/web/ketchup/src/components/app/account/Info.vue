<template>
  <div class="d-flex justify-center">
    <v-card outlined class="rounded-lg" min-width="350" width="75%">
      <v-list class="pa-0" two-line>
        <v-list-item-group v-model="selectedValue">
          <div v-for="(value, key, index) in info" :key="key">
            <v-list-item @click="handleClick({ key, value })">
              <v-list-item-content>
                <v-row justify="start">
                  <v-col cols="3">
                    <span class="text-lab">{{ key.toUpperCase() }} </span>
                  </v-col>
                  <v-col cols="8">
                    <span class="text-value">{{ value }} </span>
                  </v-col>
                  <v-col cols="1">
                    <v-icon small>fa-chevron-right</v-icon>
                  </v-col>
                  <v-spacer />
                </v-row>
              </v-list-item-content>
            </v-list-item>
            <v-divider inset v-if="index !== Object.keys(info).length - 1" />
          </div>
        </v-list-item-group>
      </v-list>
    </v-card>
  </div>
</template>

<script>
export default {
  name: "Info",
  data: () => ({
    info: {
      name: "test",
      email: "test@test.com",
      phone: "110",
      gender: true,
      position: "student"
    },
    selectedValue: null
  }),
  methods: {
    handleClick({ key, value }) {
      console.log(key, value);
    }
  }
};
</script>

<style scoped>
.text-lab {
  font-size: 12px;
  color: grey;
  font-weight: bold;
}
</style>
