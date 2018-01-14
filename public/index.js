/* global Vue, VueRouter, axios */

var HomePage = {
  template: "#home-page",
  data: function() {
    return {
      message: "Hello from the Flower App"
    };
  },
  created: function() {},
  methods: {
    addFlower: function() {
      console.log('adding flower');
      console.log(this.newFlower);
      this.flowers.push(this.newFlower);
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
