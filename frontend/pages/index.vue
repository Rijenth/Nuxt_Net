<template>
    <div>
      <h1 class="font-bold">If this is bold, Tailwind is working!</h1>
        <p>Count : {{ count }}
            <button @click="exampleStore.increment" type="submit" class="bg-black text-white font-bold px-2 mx-2 rounded">+</button>
            if the count is incrementing, pinia is working!
        </p>
        <p>Api data : {{ welcome_message }}</p>
      <NuxtWelcome />
    </div>
</template>

<script lang="ts" setup>
    import { useIncrementStore } from '~/store/increment';
    import { storeToRefs } from 'pinia';


    const exampleStore = useIncrementStore();

    const { count } = storeToRefs(exampleStore);
    
    // Fetch API

    const welcome_message = ref<string | null>(null);

    const getData = async () => {
        const res = await fetch('http://localhost:5240/api/home');
        
        const response = await res.json();

        welcome_message.value = response.data;
    }

    onMounted(() => {
        getData();
    })

/*     useAsyncData(async () => {
        const { data } = await useFetch('http://localhost:5240/api/home');
        return data;
    }); */

/*     const data = ref(null);

    const getData = async () => {
        const res = await fetch('http://localhost:5240/api/home');
        console.log(data);
    }

    onMounted(() => {
        getData();
    }) */

    

</script>
  