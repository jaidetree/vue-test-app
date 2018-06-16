<template>
  <div class="books">
    <h1>Clojure Book Wishlist</h1>
    <ul class="books__list">
      <li v-for="book in books" class="books__item">
        <Book
          v-bind:title="book.title"
          v-bind:price="book.price"
          v-bind:img="book.img"
          v-bind:url="book.url"
          />
      </li>
    </ul>
  </div>
</template>

<script>
import Book from '@/components/Book.vue';

export default {
  name: "Books",
  data () {
    return {
      books: [],
    };
  },
  methods: {
    getBooks () {
      fetch('/books.json')
        .then(response => response.json())
        .then(books => { this.books = books; })
    }
  },
  created () {
    this.getBooks();
  },
  components: {
    Book,
  }
};
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped lang="scss">
.books__list {
  display: flex;
  flex-flow: row nowrap;
  justify-content: center;
  margin: 0 10%;
  padding: 0;
  list-style: none;
}
.books__item {
  flex: 0 0 1/3 * 80%;
  margin: 2rem;
}
</style>
