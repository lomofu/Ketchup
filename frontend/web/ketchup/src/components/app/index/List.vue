<template>
  <v-row>
    <v-list width="100%" three-line-line>
      <v-list-item-group eager color="primary" v-model="selectValue">
        <template v-for="item in renderData">
          <div class="mb-8" :key="item.createTime">
            <v-subheader>{{ item.createTime }}</v-subheader>
            <template v-for="el in item.data">
              <div :key="el.id" class="mb-2">
                <v-list-item>
                  <v-list-item-content>
                    <v-list-item-title>{{ el.title }}</v-list-item-title>
                    <v-list-item-subtitle>
                      {{ el.description }}
                    </v-list-item-subtitle>
                    <v-list-item-subtitle class="red--text mt-2">
                      <strong>{{ el.errors }}</strong>
                    </v-list-item-subtitle>
                  </v-list-item-content>
                  <v-list-item-action>
                    <v-list-item-action-text>
                      {{ el.createTime }}
                    </v-list-item-action-text>
                  </v-list-item-action>
                </v-list-item>
                <v-divider />
              </div>
            </template>
          </div>
        </template>
      </v-list-item-group>
    </v-list>
  </v-row>
</template>

<script>
export default {
  name: "List",
  props: {
    renderData: {
      type: Array,
      required: true
    }
  },
  data: () => ({
    selectValue: []
  })
};
</script>

<style scoped></style>
