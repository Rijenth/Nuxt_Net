import { defineStore } from 'pinia';

export const useIncrementStore = defineStore({
    id: 'example',

    state: () => ({
        count: 0,
    }),

    getters: {
        getCount: (state) => state.count,
    },

    actions: {
        increment() {
            this.count++;
        },
    },
});