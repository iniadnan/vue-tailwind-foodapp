<template>
    <header class="bg-white">
        <div class="container pt-36px pb-32px px-32px">
            <div class="w-full flex items-center justify-between">
                <button type="button">
                    <svg width="18" height="8" viewBox="0 0 18 8" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <line x1="1" y1="1" x2="17" y2="1" stroke="black" stroke-width="2" stroke-linecap="round"/>
                        <line x1="1" y1="7" x2="10" y2="7" stroke="black" stroke-width="2" stroke-linecap="round"/>
                    </svg>                        
                </button>
                <h1 class="font-semibold text-16px text-black leading-24px">{{ titleHeader }}</h1>
                <button type="button" class="relative">
                    <div class="h-8px w-8px absolute -top-0.5 right-0 bg-color-fb9300 rounded-full"></div>
                    <svg width="21" height="24" viewBox="0 0 21 24" fill="none" xmlns="http://www.w3.org/2000/svg">
                        <mask id="mask0" mask-type="alpha" maskUnits="userSpaceOnUse" x="0" y="0" width="21" height="19">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M0.250122 0.083313H20.2884V18.877H0.250122V0.083313Z" fill="white"/>
                        </mask>
                        <g mask="url(#mask0)">
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2677 1.70831C6.48147 1.70831 3.84247 4.67448 3.84247 7.33623C3.84247 9.58848 3.21739 10.6296 2.66489 11.5482C2.2218 12.286 1.87189 12.8688 1.87189 14.1352C2.0528 16.1784 3.40155 17.252 10.2677 17.252C17.096 17.252 18.487 16.1307 18.6668 14.0648C18.6636 12.8688 18.3136 12.286 17.8706 11.5482C17.3181 10.6296 16.693 9.58848 16.693 7.33623C16.693 4.67448 14.054 1.70831 10.2677 1.70831ZM10.2677 18.877C5.20205 18.877 0.623887 18.5195 0.250137 14.2046C0.246887 12.4192 0.791803 11.5114 1.2728 10.7119C1.75922 9.90156 2.21747 9.13781 2.21747 7.33623C2.21747 3.83381 5.4523 0.083313 10.2677 0.083313C15.0831 0.083313 18.318 3.83381 18.318 7.33623C18.318 9.13781 18.7762 9.90156 19.2626 10.7119C19.7436 11.5114 20.2886 12.4192 20.2886 14.1352C19.9105 18.5195 15.3334 18.877 10.2677 18.877Z" fill="#130F26"/>
                        </g>
                        <path fill-rule="evenodd" clip-rule="evenodd" d="M10.2149 23.375H10.2127C8.99827 23.3739 7.84886 22.8387 6.97677 21.867C6.67669 21.5344 6.70377 21.0198 7.03744 20.7208C7.37111 20.4196 7.88461 20.4467 8.18469 20.7815C8.74586 21.4066 9.46627 21.75 10.2138 21.75H10.2149C10.9656 21.75 11.6893 21.4066 12.2515 20.7804C12.5527 20.4478 13.0662 20.4207 13.3988 20.7208C13.7324 21.0209 13.7595 21.5355 13.4594 21.8681C12.5841 22.8398 11.4325 23.375 10.2149 23.375Z" fill="#130F26"/>
                    </svg>
                </button>
            </div>
        </div>
    </header>
</template>

<script>
export default {
  name: 'Header',
  props: ['titleHeader'],
}
</script>

<style scoped>
    nav {
        max-width: 640px;
    }
</style>