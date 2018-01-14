/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Hello from the Flower App",
      flowers: [],
      newFlower: {name: "", color: "", price: ""}
    };
  },
  created: function() {
    axios.get('/flowers').then(function(response) {
      console.log(this);
      console.log(response.data);
      this.flowers = response.data;
    }.bind(this));
  },
  methods: {
    addFlower: function() {
      console.log('adding flower');
      console.log(this.newFlower);
      this.flowers.push(this.newFlower);
    },
    removeFlower: function(inputFlower) {
      console.log(inputFlower);
      var index = this.flowers.indexOf(inputFlower);
      console.log(index);
      this.flowers.splice(index, 1);
    }
  },
  computed: {}
};
var router = new VueRouter({
  routes: [{ path: "/", component: HomePage }],
  scrollBehavior: function(to, from, savedPosition) {
    return { x: 0, y: 0 };
  }
});

var app = new Vue({
  el: "#vue-app",
  router: router
});
