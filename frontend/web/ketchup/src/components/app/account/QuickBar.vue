<template>
  <v-row class="mt-3 pa-8">
    <template v-for="(item, index) in renderData">
      <v-col
        cols="6"
        :key="item.title"
        :align="index % 2 !== 0 ? null : 'right'"
      >
        <v-card
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
      </v-col>
    </template>
  </v-row>
</template>

<script>
export default {
  name: "QuickBar",
  data: () => ({
    renderData: [
      {
        icon: "fa-user-circle",
        title: "Person Info",
        description:
          "Personal info, such as your name, gender and position, that you use on Ketchup",
        link: "/account/info",
        btn: "Mange your info",
        color: "primary",
        action: null
      },
      {
        icon: "fa-shield-alt",
        title: "Security",
        description:
          "We keep your account protected! Settings and recommendations to help you keep your account secure",
        link: "/account/security",
        btn: "Get Started",
        color: "teal",
        action: null
      },
      {
        icon: "fa-cog",
        title: "Preferences",
        description:
          "Preferences that help make Ketchup more useful to you and improve your experience",
        link: "/setting",
        color: "#607D8B",
        btn: "Get Started",
        action: null
      },
      {
        icon: "fa-trash-alt",
        title: "Delete",
        description:
          "This account will no longer be available, all your saved data will be permanently deleted",
        link: null,
        color: "red",
        btn: "Delete Now",
        action: "delete"
      }
    ]
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
