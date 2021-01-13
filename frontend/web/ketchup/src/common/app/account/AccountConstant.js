/**
@author lomofu
@desc
@create 12/Jan/2021 16:10
*/

export const QUICK_BAR = [
  {
    icon: "fa-user-circle",
    title: "Person Info",
    description:
      "Personal info, such as your name, gender and position, that you use on Ketchup",
    link: "/index/account/info",
    btn: "Mange your info",
    color: "primary",
    action: null
  },
  {
    icon: "fa-shield-alt",
    title: "Security",
    description:
      "We keep your account protected! Settings and recommendations to help you keep your account secure",
    link: "/index/account/security",
    btn: "Get Started",
    color: "green",
    action: null
  },
  {
    icon: "fa-cog",
    title: "Preferences",
    description:
      "Preferences that help make Ketchup more useful to you and improve your experience",
    link: "/index/setting",
    color: "teal",
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
];
