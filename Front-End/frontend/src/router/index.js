import { createRouter, createWebHistory } from "vue-router";
import ClienteDashboard from "@/views/ClienteDashboard.vue";
const routes = [
    { path: '/', component: ClienteDashboard },
];

const router = createRouter({
    history: createWebHistory(),
    routes,
})

export default router;