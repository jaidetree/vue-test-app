<template>
  <div class="app">
    <h1>Sup Melo</h1>
    <h2>{{ msg }}</h2>
  </div>
</template>

<script>
export default {
  name: "HelloWorld",
  props: {
    msg: String
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
</style>
