Plataforma Mossmann Group.

Descrição: Esta plataforma oferece uma solução completa para os clientes da empresa Mossmann Group e colaboradores internos. Ela é composta por um site informativo, um sistema de cadastro e login de clientes e
colaboradores, e uma área interna para gerenciamento avançado de documentos. 

Funcionalidades Principais:

. Site Informativo: Apresenta informações sobre cursos e serviços oferecidos.
. Cadastro e Login: Permite que clientes e colaboradores se cadastrem e acessem a plataforma interna.
. Gerenciamento de Clientes e Órgãos: Facilita o cadastro e gerenciamento de informações de clientes e órgaõs reguladores (MAPA, CREA, SIPEAGRO, etc.).
. Upload de Arquivos: Permite o envio e armazenamento de arquivos relevantes.
. Caixa de Texto para Atualizações: Permite a comunicação de mudanças e atualizações relevantes.
. Armazenamento de Dados: Todas as informações são armazenadas em um banco de dados PostgreSQL.

Técnologias Utilizadas:

. Front-End: HTML, CSS, JavaScript e Bootstrap.
. Back-End: Node.js com Express.
. Banco de Dados: PostgreSQL.

Instalações e Uso: 
O ambiente de desenvolvimento está dividido em: back-end, front-end, docs clientes e tabelas de banco de dados (somente pesquisa). O projeto inteiro foi desenvolvido por Henrique Lenis, tudo do zero.

Front-End:
Foi usado pouco bootstrap (somente JS e CSS), o site informativo foi desenvolvido usando linguagem WEB (HTML, CSS e JS), com interações na Navbar (início, serviços, etc.), links externos para WhatsApp
redirecionando direto para um dos atendentes da empresa. Os dois formulários (cadastro e login) junto com o site principal estão na mesma pasta: index.html, login.html, cadastro.html. 
logo abaixo tem um pequeno informativo sobre "manutenção", quando o site estiver em manutenção. Nessa mesma pasta SITE MOSS (pasta raíz), a área do cliente se encontra em uma pasta chaada: "Docs CLientes".

Back-End:
Na pasta Back-End, o servidor principal dos formulários (server.js, login e cadastro) se encontra dentro. No servidor de uploads de arquivos, nome dos órgãos se encontra na pasta docs-clientesBack.
Dentro dessa pasta existem os módulos do node.js, os arquivos salvos na plataforma e o servidor da área de clientes.

Licença: 

A plataforma é de total posse do Grupo Mossmann. Contendo todos os diretos autorais do site. 
