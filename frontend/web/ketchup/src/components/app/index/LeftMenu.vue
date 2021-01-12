<template>
  <v-navigation-drawer
    app
    dark
    width="300"
    color="#323439"
    class="d-flex"
    :mini-variant="mini"
  >
    <template v-slot:prepend>
      <div class="mt-4 d-flex justify-end">
        <v-tooltip bottom>
          <template v-slot:activator="{ on, attrs }">
            <v-btn
              icon
              small
              class="mr-3"
              v-bind="attrs"
              v-on="on"
              @click="handleClick"
            >
              <v-icon color="#646770" small>
                {{ mini ? "fa-chevron-right" : "fa-chevron-left" }}
              </v-icon>
            </v-btn>
          </template>
          <span>{{ mini ? "expand" : "shrink" }}</span>
        </v-tooltip>
      </div>
      <div class="mt-4 d-flex ml-12">
        <v-img
          v-show="!mini"
          max-width="30"
          max-height="30"
          src="../../../assets/img/tomato-black.svg"
        />
        <span v-show="!mini" class="ml-4 proxima-soft-semi title-text">
          Ketchup
        </span>
      </div>
    </template>
    <v-list-item class="mt-8" two-line>
      <v-list-item-avatar :class="mini ? 'ml-n2' : 'ml-7'">
        <v-img src="https://randomuser.me/api/portraits/women/85.jpg" />
      </v-list-item-avatar>
      <v-list-item-content>
        <v-list-item-title>Sandra Adams</v-list-item-title>
        <v-list-item-subtitle>
          sandra_a88@gmail.com
        </v-list-item-subtitle>
      </v-list-item-content>
    </v-list-item>
    <v-list nav :dense="!mini" class="mt-3">
      <v-list-item-group eager v-model="selectedItem" color="white">
        <v-list-item
          v-for="item in items"
          :key="item.title"
          link
          @click="handleClickItem(item)"
        >
          <v-list-item-icon :class="mini ? null : 'ml-8'">
            <v-icon>{{ item.icon }}</v-icon>
          </v-list-item-icon>
          <v-list-item-content>
            <v-list-item-title>{{ item.title }}</v-list-item-title>
          </v-list-item-content>
        </v-list-item>
      </v-list-item-group>
    </v-list>
  </v-navigation-drawer>
</template>

<script>
export default {
  name: "LeftMenu",
  data: () => ({
    mini: false,
    selectedItem: 0,
    items: [
      { title: "My Ketchup", icon: "fa-home", path: "/index" },
      { title: "Account", icon: "fa-user-circle", path: "/index/account" },
      { title: "Preferences", icon: "fa-cog", path: "/index/setting" },
      { title: "Log out", icon: "fa-power-off", path: "/" }
    ]
  }),
  methods: {
    handleClick() {
      this.mini = !this.mini;
    },
    handleClickItem(item) {
      switch (item.title) {
        case "Log out":
          //todo delete cookies...
          console.log("log out");
          this.$router.push(item.path);
          break;
        default:
          this.$router.push(item.path);
      }
    },
    handleRenderSelectItem() {
      const path = this.$route.path;
      this.selectedItem = this.items.findIndex(value => value.path === path);
    }
  },
  created() {
    this.handleRenderSelectItem();
  }
};
</script>

<style scoped>
.title-text {
  font-size: 24px;
  color: #646770;
  font-weight: bolder;
}
</style>
