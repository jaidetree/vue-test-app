<template>
  <div class="home">
    <img src="../assets/logo.png">
    <Books />
  </div>
</template>

<script>
// @ is an alias to /src
import Books from "@/components/Books.vue";

export default {
  name: "books",
  components: {
    Books
  }
};
</script>
