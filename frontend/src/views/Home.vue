<template>
  <div id="home">
    <Header title-header="Restaurant App" />
    <section>
      <div class="container">
        <div class="h-52px relative px-32px mb-12px">
          <svg
            class="absolute top-1/2 left-12 transform -translate-y-1/2"
            width="18"
            height="19"
            viewBox="0 0 18 19"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <ellipse
              cx="8.49047"
              cy="8.80553"
              rx="7.49047"
              ry="7.49047"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              d="M13.7002 14.4043L16.6369 17.3334"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
          <input
            type="text"
            class="
              h-full
              w-full
              bg-color-f8f8f8
              px-58px
              text-14px text-color-black-50
              focus:text-black
              rounded-8px
            "
            v-model="search"
            placeholder="Search your food . . . ."
          />
          <svg
            class="absolute top-1/2 right-12 transform -translate-y-1/2"
            width="18"
            height="17"
            viewBox="0 0 18 17"
            fill="none"
            xmlns="http://www.w3.org/2000/svg"
          >
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M7.33014 13.0929H1.02942H7.33014Z"
              fill="white"
            />
            <path
              d="M7.33014 13.0929H1.02942"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M10.1405 3.40036H16.4412H10.1405Z"
              fill="white"
            />
            <path
              d="M10.1405 3.40036H16.4412"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M5.72629 3.34625C5.72629 2.0506 4.66813 1 3.36314 1C2.05816 1 1 2.0506 1 3.34625C1 4.64191 2.05816 5.69251 3.36314 5.69251C4.66813 5.69251 5.72629 4.64191 5.72629 3.34625Z"
              fill="white"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
            <path
              fill-rule="evenodd"
              clip-rule="evenodd"
              d="M17 13.0538C17 11.7581 15.9426 10.7075 14.6376 10.7075C13.3318 10.7075 12.2737 11.7581 12.2737 13.0538C12.2737 14.3494 13.3318 15.4 14.6376 15.4C15.9426 15.4 17 14.3494 17 13.0538Z"
              fill="white"
              stroke="black"
              stroke-width="2"
              stroke-linecap="round"
              stroke-linejoin="round"
            />
          </svg>
        </div>
        <div
          id="category"
          class="w-full pl-32px whitespace-nowrap overflow-x-auto"
        >
          <button
            @click="changeCategory('all')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'all' }"
          >
            All
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
          <button
            @click="changeCategory('food')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'food' }"
          >
            Food
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
          <button
            @click="changeCategory('drink')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'drink' }"
          >
            Drink
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
          <button
            @click="changeCategory('cake')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'cake' }"
          >
            Cake
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
          <button
            @click="changeCategory('apetizer')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'apetizer' }"
          >
            Apetizer
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
          <button
            @click="changeCategory('ice-cream')"
            type="button"
            class="relative text-14px text-color-130f26 mr-28px"
            :class="{ 'category-active' : activeCategory == 'ice-cream' }"
          >
            Ice Cream
            <div
              class="
                h-2px
                w-2/3
                absolute
                left-1/2
                bottom-0
                transform
                -translate-x-1/2
                bg-treansparent
                rounded-full
              "
            ></div>
          </button>
        </div>
      </div>
    </section>
    <main>
      <div class="container py-22px">
        <div class="flex items-center justify-between px-32px mb-12px">
          <h3 class="font-medium text-16px leading-24px">Popular Food</h3>
          <a href="#" class="text-12px text-color-838383">See All</a>
        </div>
        <div class="w-full pl-32px">
          <swiper
            slides-per-view="auto"
            :autoplay="{ delay: 5000, pauseOnMouseEnter: true }"
            :space-between="14"
          >
            <template v-for="popular in productsPopular" :key="popular.id">
              <swiper-slide
                class="bg-color-fffaf2 shadow-popular rounded-8px overflow-hidden"
              >
                <router-link :to="{ name: 'Detail', params: { slug: popular.slug } }" class="block">
                  <article>
                    <div>
                      <img
                        class="w-full h-164px object-cover"
                        :src="`images/products/${popular.image}`"
                        :alt="popular.name"
                      />
                    </div>
                    <!-- BODY -->
                    <div class="py-12px px-18px">
                      <h2
                        class="
                          font-semibold
                          text-16px text-black
                          leading-24px
                          mb-4px
                        "
                      >
                        {{ popular.name }}
                      </h2>
                      <p class="text-12px text-color-7d7d7d leading-18px mb-14px capitalize">
                        {{ popular.category }}
                      </p>
                      <div class="flex items-center">
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
                          <span class="font-medium text-14px text-black ml-8px"
                            >{{ popular.star }}</span
                          >
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
                          <span class="font-medium text-14px text-black ml-8px"
                            >{{ popular.weight }}g</span
                          >
                        </div>
                        <div class="flex items-center ml-auto">
                          <strong class="font-medium text-16px text-color-fb9300"
                            >$ {{ popular.price }}</strong
                          >
                        </div>
                      </div>
                    </div>
                  </article>
                </router-link>
              </swiper-slide>
            </template>
          </swiper>
        </div>
      </div>
    </main>
    <main>
      <div class="container px-32px pb-96px">
        <div class="flex items-center justify-between mb-12px">
          <h3 class="font-medium text-16px leading-24px">Recomended For You</h3>
          <a href="#" class="text-12px text-color-838383">See All</a>
        </div>
        <div class="w-full">
          <template v-for="product in filteredProducts" :key="product.id">
            <router-link
            :to="{ name: 'Detail', params: { slug: product.slug } }"
            class="
              block
              bg-color-fffaf2
              rounded-8px
              py-16px
              pb-18px
              pr-18px
              mb-12px
            "
          >
            <article class="w-full flex items-center">
              <!-- IMAGE -->
              <div class="w-4/12">
                <img
                  class="w-2/3 h-75px object-cover rounded mx-auto"
                  :src="`images/products/${product.image}`"
                  :alt="product.name"
                />
              </div>
              <!-- DETAIL -->
              <div class="w-8/12">
                <h2
                  class="font-medium text-14px text-black leading-21px mb-2px"
                >
                  {{ product.name }}
                </h2>
                <p class="text-12px text-color-7d7d7d leading-18px mb-2px capitalize">
                  {{ product.category }}
                </p>
                <div class="flex items-center">
                  <div class="flex items-center">
                    <svg
                      width="13"
                      height="11"
                      viewBox="0 0 13 11"
                      fill="none"
                      xmlns="http://www.w3.org/2000/svg"
                    >
                      <path
                        d="M6.5 8.84053L10.517 11L9.451 6.93L13 4.19158L8.3265 3.83842L6.5 0L4.6735 3.83842L0 4.19158L3.549 6.93L2.483 11L6.5 8.84053Z"
                        fill="#FB9300"
                      />
                    </svg>
                    <span class="font-medium text-12px text-black ml-8px"
                      >{{ product.star }}</span
                    >
                  </div>
                  <div class="flex items-center ml-auto">
                    <strong class="font-medium text-14px text-color-fb9300"
                      >$ {{ product.price }}</strong
                    >
                  </div>
                </div>
              </div>
            </article>
          </router-link>
          </template>
        </div>
      </div>
    </main>
    <NavbarBottom navbar-active="home" />
  </div>
</template>

<script>
import axios from 'axios';
import searchMixin from '../mixins/searchProduct.js';
import Header from "@/components/Header.vue";
import NavbarBottom from "@/components/NavbarBottom.vue";
import SwiperCore, { Autoplay } from "swiper";
import { Swiper, SwiperSlide } from "swiper/vue";
import "swiper/swiper.scss";
SwiperCore.use([Autoplay]);

export default {
  name: "Home",
  components: {
    Header,
    NavbarBottom,
    Swiper,
    SwiperSlide,
  },
  data() {
    return {
      search: '',
      activeCategory: 'all',
      productsPopular: [],
      products: [],
    }
  },
  methods: {
    async getProductsPopular() {
      axios
        .get(`http://api.localhost:5000/products/popular`)
        .then((response) => {
            this.productsPopular = response.data;
        })
        .catch((error) => console.log(error))
    },
    async getProducts() {
      axios
        .get(`http://api.localhost:5000/products/${this.activeCategory}`)
        .then((response) => {
            this.products = response.data;
        })
        .catch((error) => console.log(error))
    },
    changeCategory(event) {
      this.activeCategory = event;
      this.getProducts();
    },
  },
  created() {
    this.getProductsPopular();
    this.getProducts();
  },
  mixins: [searchMixin]
};
</script>

<style scoped>
#home {
  background-color: #fff;
}
#category::-webkit-scrollbar {
  width: 0px;
}
#category::-webkit-scrollbar-track {
  background: transparent;
}
#category::-webkit-scrollbar-thumb {
  background: transparent;
}
#category::-webkit-scrollbar-thumb:hover {
  background: transparent;
}
.category-active {
  font-weight: 500 !important;
  color: #fb9300 !important;
  transition: 0.2s ease-in;
}
.category-active .bg-treansparent {
  background-color: #fb9300;
}
.swiper-slide {
  width: 274px !important;
  box-sizing: border-box;
}
</style>