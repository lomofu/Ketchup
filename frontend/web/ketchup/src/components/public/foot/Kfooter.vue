<template>
  <div class="footer">
    <v-container class="f-container d-flex align-start flex-column">
      <v-row>
        <v-col cols="4">
          <p class="title">Contact</p>
          <v-icon medium>
            fab fa-github
          </v-icon>
        </v-col>
      </v-row>
      <div>
        <p>2021 © FWLL Org.</p>
      </div>
    </v-container>
  </div>
</template>

<script>
export default {
  name: "Kfooter"
};
</script>

<style scoped>
.footer {
  background-color: rgb(241, 242, 250);
}

.f-container {
  height: 200px;
  max-height: 250px;
}

.title {
  font-weight: bold;
  font-size: 24px;
}
</style>
