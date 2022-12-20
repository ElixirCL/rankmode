const Hook = {
  mounted() {
    console.log(this.el, "Mounted")
  },

  updated() {
    console.log(this.el, "Updated")
  }
};

export default Hook;
