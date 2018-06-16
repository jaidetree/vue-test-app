<template>
  <a class="book" :href="url" :target="'_vue_book_' + title">
    <div class="book__cover">
      <img class="book__img" :src="img" :alt="title" />
      <span class="book__price-card">
        <span class="book__price">${{price.toFixed(2)}}</span>
      </span>
    </div>
    <h1 class="book__title">{{title}}</h1>
  </a>
</template>

<script>
export default {
  name: "Book",
  props: {
    img: String,
    title: String,
    price: Number,
    url: String,
  }
}
</script>

<style scoped lang="scss">
  .book {
    display: block;
    background: none;
    color: #000;
  }
  .book__img {
    width: 100%;
    height: 100%;
  }
  .book__title {
    font-size: 1rem;
  }
  .book__cover {
    margin: 0 auto;
    width: 15rem;
    height: 18.875rem;
    position: relative;
  }
  .book__price-card {
    display: flex;
    flex-flow: column nowrap;
    justify-content: center;
    position: absolute;
    left: 0;
    top: 0;
    bottom: 0;
    right: 0;
    opacity: 0;
    transition: 250ms opacity ease-in-out;
    background: rgba(0, 0, 0, 0.9);
  }
  .book__price {
    color: #fff;
    font-size: 2rem;
  }
  .book:hover .book__price-card {
    opacity: 1;
    transition: 250ms opacity ease-in-out;
  }
</style>
