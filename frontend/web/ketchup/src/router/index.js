import Vue from "vue";
import VueRouter from "vue-router";

Vue.use(VueRouter);

const routes = [
  {
    path: "/",
    name: "Home",
    meta: {
      title: "Home"
    },
    component: () => import(/* webpackChunkName: "home" */ "../views/Home")
  },
  {
    path: "/login",
    name: "Login",
    meta: {
      title: "Login"
    },
    component: () => import(/* webpackChunkName: "login" */ "../views/Login")
  },
  {
    path: "/index",
    component: () => import(/* webpackChunkName: "home" */ "../views/Index"),
    children: [
      {
        path: "/",
        name: "My Ketchup",
        meta: {
          title: "My Ketchup"
        },
        component: () =>
          import(
            /* webpackChunkName: "home/my-ketchup"*/ "../views/app/MyKetchup"
          )
      },
      {
        path: "account",
        name: "Account",
        meta: {
          title: "Account"
        },
        component: () =>
          import(/* webpackChunkName: "home/account" */ "../views/app/Account")
      }
    ]
  }
];

const router = new VueRouter({
  mode: "history",
  base: process.env.BASE_URL,
  scrollBehavior() {
    return { x: 0, y: 0 };
  },
  routes
});

router.beforeEach((to, from, next) => {
  document.title = `Ketchup  |  ${to.meta.title}`;
  next();
});

export default router;
