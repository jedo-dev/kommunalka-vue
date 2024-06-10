<script setup lang="ts">
import { AreaChart } from '@/components/ui/chart-area'
import { LangList } from '@/components/ui/langlist/index'

const posts = [
  {
    title: 'Vue js',
    id: 1,
    src: 'https://gitlab.com/uploads/-/system/group/avatar/54254384/2560px-Vue.js_Logo_2.png'
  },
  {
    title: 'Node js',
    id: 2,
    src: 'https://fuzeservers.ru/wp-content/uploads/c/c/b/ccb3f9c7433f1efac94ad20e0ef1b640.png'
  },
  {
    title: 'Mongo DB',
    id: 3,
    src: 'https://i2.wp.com/miro.medium.com/1*9tNeX3ejfJ7XvNwTgc6c2Q.png'
  },
  {
    title: 'Express',
    id: 4,
    src: 'https://wsofter.com/wp-content/uploads/2017/12/node-express.png'
  }
]
const data = [
  {
    name: 'Jan',
    label: 'ff',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'Feb',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'Mar',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'Apr',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'May',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'Jun',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  },
  {
    name: 'Jul',
    total: Math.floor(Math.random() * 2000) + 500,
    predicted: Math.floor(Math.random() * 2000) + 500
  }
]
</script>

<template>
  <div class="m-2 bg-white rounded-xl shadow-md overflow-hidden">
    <div class="md:flex">
      <div class="w-full">
        <AreaChart :data="data" index="name" :categories="['total', 'predicted']" />
      </div>
      <div class="p-8">
        <div class="uppercase tracking-wide text-sm text-indigo-500 font-semibold">KOMMUNALKA</div>
        <a href="#" class="block mt-1 text-lg leading-tight font-medium text-black hover:underline"
          >Инструмент для записи и учета показаний</a
        >
        <p class="mt-2 text-slate-500">
          Калькулирование стоимости коммунальных услуг на основе ввода показаний воды и
          электричества.
        </p>
      </div>
    </div>
  </div>
  <LangList :posts="posts" />
</template>
