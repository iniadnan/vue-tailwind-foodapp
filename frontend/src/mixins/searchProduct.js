export default {
    computed: {
        filteredProducts: function(){
            return this.products.filter((product) => {
                // SEARCH LOWERCASE & UPPERCASE WITH REGEXP
                let RG = new RegExp(this.search, 'gi');
                return product.name.match(RG);
            });
        }
    }
};