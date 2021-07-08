<template>
  <div id="detail">
    <header>
      <div class="container relative">
        <router-link
          to="/"
          class="
            h-36px
            w-36px
            flex
            items-center
            justify-center
            absolute
            top-8
            left-8
            bg-color-white-25
            rounded-12px
            z-10
          "
        >
          <svg
            width="24"
            height="24"
            viewBox="0 0 24 24"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              d="M4.25 12.2743L19.25 12.2743"
              stroke="white"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M10.2998 18.2987L4.2498 12.2747L10.2998 6.24969"
              stroke="white"
              stroke-width="1.5"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </router-link>
        <img
        v-if="product.image"
          class="h-441px w-full object-cover"
          :src="`../images/products/${product.image}`"
          :alt="product.title"
        />
        <img
        v-else
          class="h-441px w-full"
          src="images/products/detail-1.jpg"
          alt="#"
        />
        <div
          class="
            h-40px
            w-38.5pc
            flex
            items-center
            justify-between
            absolute
            left-1/2
            -bottom-5
            transform
            -translate-x-1/2
            bg-white
            rounded-full
            z-10
          "
        >
          <button
            type="button"
            class="
              h-39px
              w-39px
              flex
              items-center
              justify-center
              text-white
              bg-color-fb9300
              border-4 border-gray-100
              rounded-full
            "
            @click="minusQty"
          >
            <svg
              class="w-5 h-5"
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
            type="number"
            class="appearance-none w-1/3 font-medium text-18px text-black text-center"
            v-model="qty"
          />
          <button
            type="button"
            class="
              h-39px
              w-39px
              flex
              items-center
              justify-center
              text-white
              bg-color-fb9300
              border-4 border-gray-100
              rounded-full
            "
            @click="plusQty"
          >
            <svg
              class="w-5 h-5"
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
    </header>
    <main>
      <article class="container pt-36px pb-108px px-32px bg-white">
        <h1 class="font-medium text-black text-20px leading-30px mb-4px">
          {{ product.name }}
        </h1>
        <p class="text-14px text-color-838383 leading-21px mb-20px capitalize">
          {{ product.category }}
        </p>
        <div class="flex items-center mb-20px">
          <div class="flex items-center mr-20px">
            <svg
              width="15"
              height="13"
              viewBox="0 0 15 13"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M7.5 10.4479L12.135 13L10.905 8.19L15 4.95368L9.6075 4.53632L7.5 0L5.3925 4.53632L0 4.95368L4.095 8.19L2.865 13L7.5 10.4479Z"
                fill="#FB9300"
              />
            </svg>
            <span class="font-medium text-14px text-black ml-8px">{{ product.star }}</span>
          </div>
          <div class="flex items-center">
            <svg
              width="12"
              height="14"
              viewBox="0 0 12 14"
              fill="none"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                d="M1.15939 7.0845C0.90441 7.64202 0.680468 8.26087 0.589464 8.9859C0.239724 11.7724 2.63793 14 5.77119 14C8.90444 14 11.4444 11.7269 11.4444 8.923C11.4444 8.40549 11.1731 7.66869 11.1731 7.66869C10.9256 9.13598 9.56438 9.96653 9.56438 9.96653C10.3996 8.00091 9.95754 6.225 8.94566 4.92792C6.65637 1.99332 7.24417 0 7.24417 0C4.1815 2.43626 4.36711 5.12169 4.36711 5.12169C4.08593 3.49297 1.78646 2.84508 1.78646 2.84508C2.54494 3.996 2.27205 4.88792 1.76299 5.87324C1.3919 6.59155 1.15939 7.0845 1.15939 7.0845Z"
                fill="#FDDB33"
              />
              <path
                d="M4.36867 4.97184C4.02216 3.47888 1.7865 2.84509 1.7865 2.84509C1.98421 3.14508 2.11128 3.42739 2.18292 3.69843C2.91968 3.90142 4.36867 4.97184 4.36867 4.97184Z"
                fill="#F9C032"
              />
              <path
                d="M7.68572 4.92789C8.6976 6.225 9.75514 7.3662 9.56615 9.95773C9.81815 9.36619 10.0071 8.57746 10.0028 7.9417C10.0101 6.79076 9.59533 5.76064 8.94569 4.92789C6.65643 1.99332 7.24424 0 7.24424 0C6.72881 0.409989 6.30576 0.827001 5.95798 1.23713C6.0753 2.10668 6.48405 3.38747 7.68572 4.92789Z"
                fill="#F9C032"
              />
              <path
                d="M11.1731 7.6687C11.0349 8.48765 10.5499 9.10815 10.1482 9.49668C9.85289 11.8461 7.76624 13.71 5.13916 13.9689C5.346 13.9892 5.55681 14 5.77116 14C8.90442 14 11.4444 11.727 11.4444 8.92301C11.4444 8.40549 11.1731 7.6687 11.1731 7.6687Z"
                fill="#F9C032"
              />
              <path
                d="M7.17778 10.6056C7.3948 11.0078 7.5503 11.3847 7.5503 11.6388C7.5503 12.4798 6.78794 13.1615 5.84751 13.1615C4.90708 13.1615 4.14471 12.4798 4.14471 11.6388C4.14471 10.7978 5.84751 8.6131 5.84751 8.6131C5.84751 8.6131 6.23958 9.11615 6.64746 9.73237L7.17778 10.6056Z"
                fill="#FF7373"
              />
            </svg>
            <span class="font-medium text-14px text-black ml-8px">{{ product.weight }}g</span>
          </div>
          <div class="flex items-center ml-auto">
            <strong class="font-medium text-16px text-color-fb9300"
              >$ {{ realPrice }}</strong
            >
          </div>
        </div>
        <div>
          <h3 class="font-medium text-16px text-black leading-16px mb-8px">
            Description
          </h3>
          <p class="text-14px text-color-838383 leading-21px">
            {{ product.description }}
          </p>
        </div>
      </article>
    </main>
    <nav class="h-86px w-full fixed bottom-0 z-10 bg-white shadow-nav">
      <div class="h-full container flex items-center justify-between px-32px">
        <div>
          <p class="text-16px text-color-919191">Total Price</p>
          <strong class="font-bold text-22px text-color-fb9300 leading-34px"
            >$ {{ totalPrice }}</strong
          >
        </div>
        <button
          type="button"
          class="
            h-52px
            w-173px
            flex
            items-center
            justify-center
            bg-color-fb9300
            rounded-28px
          "
          @click="addToCart"
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
              d="M5.89886 16.0079C5.89886 16.9774 6.68749 17.7659 7.65695 17.7659C8.62626 17.7659 9.41489 16.9774 9.41489 16.0079C9.41489 15.0386 8.62626 14.25 7.65695 14.25C6.68749 14.25 5.89886 15.0386 5.89886 16.0079Z"
              fill="white"
            />
            <path
              d="M14.1418 16.0079C14.1418 16.9774 14.9304 17.7659 15.8997 17.7659C16.8692 17.7659 17.6577 16.9774 17.6577 16.0079C17.6577 15.0386 16.8692 14.25 15.8997 14.25C14.9304 14.25 14.1418 15.0386 14.1418 16.0079Z"
              fill="white"
            />
          </svg>
          <span class="font-medium text-16px text-white ml-20px"
            >Add To Cart</span
          >
        </button>
      </div>
    </nav>
  </div>
</template>

<script>
import axios from 'axios';
export default {
  name: "Detail",
  data() {
    return {
      slug: this.$route.params.slug,
      product: [],
      realPrice: 0,
      qty: 1,
      cart: [],
    };
  },
  methods: {
      async getProduct() {
        axios
            .get(`http://api.localhost:5000/products/single/${this.slug}`)
            .then((response) => {
                this.product = response.data;
                this.realPrice = this.product.price;
            })
            .catch((error) => console.log(error))
      },
      plusQty() {
        this.qty = Number(this.qty) + 1;
      },
      minusQty() {
        if(this.qty == 1) {
          return
        }
        this.qty = Number(this.qty) - 1;
      },
      addToCart() {
        let getDataProduct = {
          'id': this.product.id,
          'name': this.product.name,
          'image': this.product.image,
          'qty': this.qty,
          'price': this.product.price,
          'totalPrice': this.totalPrice
        }
        let saveToCart = [];
        let dataCartNow = this.cart;
        let lengthCart = dataCartNow.length;
        if(lengthCart > 0) {
          for(let i = 0; i < lengthCart; i++) {
            saveToCart.push(dataCartNow[i]);
          }
        }
        saveToCart.push(getDataProduct);
        localStorage.setItem('cartProduct', JSON.stringify(saveToCart));
        this.cart = JSON.parse(localStorage.getItem('cartProduct'));
        this.$router.push({ name: 'Home' });
      }
  },
  created() {
      this.getProduct();
  },
  mounted() {
    if (localStorage.getItem('cartProduct')) {
      this.cart = JSON.parse(localStorage.getItem('cartProduct'));
    }
  },
  computed: {
    totalPrice() {
      let priceFixed = this.realPrice * this.qty;
      return priceFixed.toFixed(2)
    }
  }
};
</script>

<style scoped>
nav {
  max-width: 640px;
}
input::-webkit-outer-spin-button,
input::-webkit-inner-spin-button {
  -webkit-appearance: none;
  margin: 0;
}
/* Firefox */
input[type=number] {
  -moz-appearance: textfield;
}
</style>