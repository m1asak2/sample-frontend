<template>
  <div class="container">
    <button @click="getHello()">
      connect cloud run
    </button>
    <p>{{ posts }}</p>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import axios from "axios";
export default Vue.extend( {
  data() {
    return {
      posts: ""
    };
  },
  methods: {
    async getHello() {
      const response = await axios.get(
        "https://backend-app-vbppoxc4ua-an.a.run.app/"
      );
      this.posts = response.data;
    }
  }
});
</script>