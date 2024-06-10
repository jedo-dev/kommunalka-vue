<script setup>
import { onMounted } from 'vue'
import { useStore } from 'vuex'
import { CustomFooter } from './components/ui/footer/index'
import { CustomHeader } from './components/ui/header/index'

// Использование хранилища Vuex
const store = useStore()

// Метод для проверки токена и получения данных о пользователе
const checkAuth = async () => {
  await store.dispatch('auth/checkAuth')
}

// Вызов метода при монтировании компонента
onMounted(() => {
  checkAuth()
})
</script>

<template>
  <div class="flex flex-col h-screen bg-regal-blue">
    <CustomHeader />
    <main class="flex-grow bg-regal-blue">
      <RouterView />
    </main>
    <CustomFooter />
  </div>
</template>
