<template>
    <div class="dashboard">
        <h1>Seus Documentos</h1>
        <ul>
            <li v-for="pasta in pastas" :key="pasta.id">
            📁 {{ pasta.nome }}
            <ul>
                <li v-for="documento in pasta.documento" :key="documento.id">
                📄 <a href="documento.url" target="_blank">{{ documento.nome }}</a>   
                </li>
            </ul>       
            </li>
        </ul>
    </div>
</template>

<script>
    export default {
        data(){
            return {
                pastas: [
                    {id: 1, nome: "Contratos", documentos: [
                        {id: 1, nome: "Contrato 2025.pdf", url:"#"}
                    ]},
                    {id: 2, nome: "Faturas", documentos: [
                        {id: 2, nome: "Fatura Janeiro.pdf", url: "#"}
                    ]}
                ]
            }
        }
    }
</script>

<style scoped>
.dashboard{
    max-width: 600px;
    margin: auto;
    padding: 20px;
}
ul{
    list-style-type: none;
    padding: 0;
}
li{
    margin: 5px 0;
}
</style>