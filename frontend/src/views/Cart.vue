<template>
  <div id="cart">
    <Header title-header="My Cart" />
    <main>
      <div class="container px-32px pb-58px">
        <h3
          class="
            font-medium
            text-16px text-color-fb9300
            leading-24px
            mb-20px
            pl-32px
          "
        >
          Total Cart<span class="mx-12px">:</span>{{ cart.length }}
        </h3>
        <div class="w-full">
          <template v-for="(product, index) in cart" :key="product.id">
            <article
              class="
                w-full
                flex
                items-center
                relative
                bg-color-fffaf2
                rounded-8px
                py-16px
                pb-18px
                pr-18px
                mb-12px
              "
            >
              <!-- IMAGE -->
              <div class="w-4/12">
                <img
                  class="w-2/3 h-92px object-cover rounded-md mx-auto"
                  :src="`images/products/${product.image}`"
                  :alt="product.name"
                />
              </div>
              <!-- DETAIL -->
              <div class="w-8/12">
                <h2
                  class="font-medium text-16px text-black leading-24px mb-4px"
                >
                  {{ product.name }}
                </h2>
                <p class="text-14px text-black leading-21px mb-4px">
                  $ {{ (product.qty * product.price).toFixed(2) }}
                </p>
                <div class="flex items-center">
                  <button
                    @click="minQty(index)"
                    type="button"
                    class="
                      h-14px
                      w-14px
                      flex
                      items-center
                      justify-center
                      text-white
                      bg-color-fb9300
                      100
                      rounded-full
                    "
                  >
                    <svg
                      class="w-3 h-3"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M20 12H4"
                      ></path>
                    </svg>
                  </button>
                  <input
                    type="text"
                    class="w-31px font-medium text-12px text-black text-center"
                    :value="product.qty"
                  />
                  <button
                    @click="addQty(index)"
                    type="button"
                    class="
                      h-14px
                      w-14px
                      flex
                      items-center
                      justify-center
                      text-white
                      bg-color-fb9300
                      00
                      rounded-full
                    "
                  >
                    <svg
                      class="w-3 h-3"
                      fill="none"
                      stroke="currentColor"
                      viewBox="0 0 24 24"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        stroke-linecap="round"
                        stroke-linejoin="round"
                        stroke-width="2"
                        d="M12 6v6m0 0v6m0-6h6m-6 0H6"
                      ></path>
                    </svg>
                  </button>
                </div>
              </div>
              <!-- DELETE -->
              <button type="button" class="absolute top-4 right-3">
                <svg
                  width="12"
                  height="14"
                  viewBox="0 0 12 14"
                  fill="none"
                  xmlns="http://www.w3.org/2000/svg"
                >
                  <g opacity="0.5">
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M11.5247 2.16198C11.7841 2.16198 12 2.37731 12 2.65131V2.90464C12 3.17197 11.7841 3.39397 11.5247 3.39397H0.475902C0.215907 3.39397 0 3.17197 0 2.90464V2.65131C0 2.37731 0.215907 2.16198 0.475902 2.16198H2.41971C2.81457 2.16198 3.1582 1.88131 3.24703 1.48532L3.34882 1.03066C3.50702 0.411329 4.02766 0 4.62351 0H7.37649C7.96585 0 8.49233 0.411329 8.64469 0.99799L8.75362 1.48465C8.8418 1.88131 9.18543 2.16198 9.58094 2.16198H11.5247ZM10.5372 11.4227C10.7402 9.5314 11.0955 5.03811 11.0955 4.99278C11.1084 4.85545 11.0637 4.72545 10.9749 4.62078C10.8796 4.52278 10.759 4.46478 10.6261 4.46478H1.37903C1.24547 4.46478 1.11839 4.52278 1.03021 4.62078C0.940737 4.72545 0.896648 4.85545 0.903131 4.99278C0.904323 5.00111 0.917072 5.15938 0.938387 5.424C1.03308 6.5995 1.2968 9.87348 1.46721 11.4227C1.58781 12.564 2.33667 13.2814 3.42139 13.3074C4.25844 13.3267 5.12077 13.3334 6.00255 13.3334C6.83311 13.3334 7.67664 13.3267 8.53961 13.3074C9.66194 13.288 10.4102 12.5834 10.5372 11.4227Z"
                      fill="#FB9300"
                    />
                  </g>
                </svg>
              </button>
            </article>
          </template>
        </div>
      </div>
    </main>
    <section>
      <div class="container px-32px pb-96px">
        <div class="flex items-center justify-between">
          <span class="font-medium text-16px text-black leading-24px"
            >Tax Price</span
          >
          <strong class="font-medium text-16px text-black leading-24px"
            >$ {{ cart.length }}</strong
          >
        </div>
        <div class="border-b border-black my-8px"></div>
        <div class="flex items-center justify-between mb-20px">
          <span class="font-medium text-16px text-black leading-24px"
            >Total Price</span
          >
          <strong class="font-medium text-16px text-black leading-24px"
            >$ {{ countTotalPrice }}</strong
          >
        </div>
        <button
          @click="createTransactions"
          type="button"
          class="
            h-60px
            w-full
            flex
            items-center
            justify-center
            bg-color-fb9300
            rounded-full
          "
        >
          <svg
            width="21"
            height="18"
            viewBox="0 0 21 18"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M6.48483 11.9061H17.0717C17.3338 11.9061 17.5638 11.7328 17.6348 11.481L19.9788 3.27713C20.0292 3.10027 19.9947 2.91029 19.8838 2.76333C19.7727 2.61684 19.5999 2.53032 19.4156 2.53032H5.13204L4.71316 0.645418C4.65365 0.376997 4.41559 0.186401 4.14092 0.186401H0.585979C0.262164 0.186401 0 0.448566 0 0.77238C0 1.09635 0.262164 1.35836 0.585979 1.35836H3.67061L5.78669 10.8805C5.16409 11.1512 4.7269 11.7709 4.7269 12.4921C4.7269 13.4614 5.51552 14.25 6.48483 14.25H17.0717C17.3956 14.25 17.6576 13.988 17.6576 13.6641C17.6576 13.3402 17.3956 13.0781 17.0717 13.0781H6.48483C6.16209 13.0781 5.89885 12.8155 5.89885 12.4921C5.89885 12.1687 6.16209 11.9061 6.48483 11.9061Z"
              fill="white"
            />
            <path
              d="M5.89893 16.0079C5.89893 16.9774 6.68756 17.7659 7.65701 17.7659C8.62632 17.7659 9.41495 16.9774 9.41495 16.0079C9.41495 15.0386 8.62632 14.25 7.65701 14.25C6.68756 14.25 5.89893 15.0386 5.89893 16.0079Z"
              fill="white"
            />
            <path
              d="M14.1417 16.0079C14.1417 16.9774 14.9304 17.7659 15.8997 17.7659C16.8691 17.7659 17.6576 16.9774 17.6576 16.0079C17.6576 15.0386 16.8691 14.25 15.8997 14.25C14.9304 14.25 14.1417 15.0386 14.1417 16.0079Z"
              fill="white"
            />
          </svg>
          <span class="font-medium text-16px text-white ml-20px">Checkout</span>
        </button>
      </div>
    </section>
    <div class="h-full w-full flex items-center justify-center absolute bg-color-black-25 top-0 opacity-0 z-min-20" :class="{ 'z-plus-25 opacity-100' : boxStatus }">
      <div class="h-164px w-1/2 bg-white flex flex-wrap justify-center items-center shadow-md rounded-md transform translate-y-2 transition-all" :class="{ '-translate-y-1' : boxStatus }">
        <div>
          <div class="h-12 w-12 mx-auto flex justify-center items-center rounded-full bg-color-fb9300 text-white">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" fill="currentColor" class="bi bi-check2" viewBox="0 0 16 16">
              <path d="M13.854 3.646a.5.5 0 0 1 0 .708l-7 7a.5.5 0 0 1-.708 0l-3.5-3.5a.5.5 0 1 1 .708-.708L6.5 10.293l6.646-6.647a.5.5 0 0 1 .708 0z"/>
            </svg>
          </div>
          <h4 class="font-medium text-16px text-black mt-6">Transactions Success</h4>
        </div>
      </div>
    </div>
    <NavbarBottom navbar-active="cart" />
  </div>
</template>

<script>
import axios from 'axios';
import Header from "@/components/Header.vue";
import NavbarBottom from "@/components/NavbarBottom.vue";

export default {
  name: "Cart",
  components: {
    Header,
    NavbarBottom,
  },
  data() {
    return {
      cart: [],
      boxStatus: false
    };
  },
  created() {
    if (localStorage.getItem("cartProduct")) {
      this.cart = JSON.parse(localStorage.getItem("cartProduct"));
    }
  },
  methods: {
    addQty(id) {
      this.cart[id].qty += 1;
    },
    minQty(id) {
      if(this.cart[id].qty > 1) {
        this.cart[id].qty -= 1;
      }
    },
    async createTransactions() {
      let self = this;
      this.boxStatus = true;
      const product = {
        "products": [],
        "qty": [],
        "price": [],
        "total": ""
      };
      let item;
      for(item of this.cart) {
        product.products.push(item.id);
        product.qty.push(item.qty);
        product.price.push(item.price);
      }
      product.products = product.products.toString();
      product.qty = product.qty.toString();
      product.price = product.price.toString();
      product.total = this.countTotalPrice;
      axios
        .post('http://localhost:5000/transactions/create', product)
        .then(() => {
          setTimeout(function(){
            this.boxStatus = false;
            self.$router.push({ name: 'Home' });
            localStorage.removeItem('cartProduct');
          }, 1000);
        })
        .catch((error) => console.log(error))
    }
  },
  computed: {
    countTotalPrice() {
      let tP = 0;
      let item;
      for(item of this.cart) {
        tP += Number(item.price) * Number(item.qty);
      }
      return tP.toFixed(2)
    },
  }
};
</script>

<style scoped>
#cart {
  background-color: #fff;
  position: relative;
}
.z-min-20 {
  z-index: -20;
}
.z-plus-25 {
  z-index: 25;
}
</style>