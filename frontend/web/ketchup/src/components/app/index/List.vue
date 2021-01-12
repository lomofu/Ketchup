<template>
  <v-row>
    <v-list width="100%" three-line-line>
      <v-list-item-group eager color="primary">
        <template v-for="j in 6">
          <v-list-item :key="j">
            <v-list-item-content>
              <v-list-item-title>Title</v-list-item-title>
              <v-list-item-subtitle>Subtitle...</v-list-item-subtitle>
              <v-list-item-subtitle class="red--text mt-2">
                <strong>0</strong>
              </v-list-item-subtitle>
            </v-list-item-content>

            <v-list-item-action>
              <v-list-item-action-text>
                {{ new Date() }}
              </v-list-item-action-text>
            </v-list-item-action>
          </v-list-item>
          <v-divider :key="j"/>
        </template>
      </v-list-item-group>
    </v-list>
  </v-row>
</template>

<script>
export default {
  name: "List"
};
</script>

<style scoped></style>
