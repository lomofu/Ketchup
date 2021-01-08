<template>
  <form class="pa-8">
    <v-text-field
      v-model="id"
      label="Id"
      outlined
      clearable
      dense
      required
      :error-messages="idErrors"
      @input="$v.id.$touch()"
      @blur="$v.id.$touch()"
    ></v-text-field>
    <v-text-field
      v-model="password"
      label="Password"
      outlined
      clearable
      dense
      required
      :error-messages="passwordErrors"
      @input="$v.password.$touch()"
      @blur="$v.password.$touch()"
    ></v-text-field>
    <v-btn color="success" x-large dark block @click="login">
      login
    </v-btn>
  </form>
</template>

<script>
import { validationMixin } from "vuelidate";
import { required } from "vuelidate/lib/validators";

export default {
  name: "LoginPanel",
  mixins: [validationMixin],

  validations: {
    id: { required },
    password: { required }
  },
  data: () => ({
    id: "",
    password: ""
  }),
  methods: {
    login() {
      this.$v.$touch();
    }
  },
  computed: {
    idErrors() {
      const errors = [];
      if (!this.$v.id.$dirty) return errors;
      !this.$v.id.required && errors.push("Id is required");
      return errors;
    },
    passwordErrors() {
      const errors = [];
      if (!this.$v.password.$dirty) return errors;
      !this.$v.password.required && errors.push("Password is required");
      return errors;
    }
  }
};
</script>

<style scoped></style>
