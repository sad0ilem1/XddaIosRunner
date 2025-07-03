# **Formulario SSMA📄**

## O que é🔍

*O Formulario SSMA é uma solução móvel e web projetada para otimizar e digitalizar o preenchimento de formulários de Saúde, Segurança e Meio Ambiente (SSMA) durante visitas a campo. O aplicativo elimina a necessidade de formulários em papel, centraliza os dados de forma segura e permite a geração de relatórios imediatos, mesmo em locais sem conexão com a internet.*
## **Usuario👷‍♂️**
![Login_Page_Online](https://github.com/user-attachments/assets/f0bfb6f5-6f3d-4be7-8acf-3200fa0de46d)


*A tela de Login valida as credenciais do usuário e o direciona para a interface correspondente ao seu nível de permissão (Usuário ou Administrador).*

![MenuPrincipalUsuario](https://github.com/user-attachments/assets/46d2bfa2-0787-4ca3-b8b9-157676ce6191)
![DrawerUsuario](https://github.com/user-attachments/assets/7a1edc15-0343-401f-a7f4-8a0eab200e59)


*Esse é o menu principal e menu lateral do usuario, ao clicar no icone a esquerda ele abre o menu permitindo você ir para as paginas de Criação de formulario, a de visualização de formulario e fazer logout (sair da sua conte e voltar para a tela de login)*



![HeaderFormsPage](https://github.com/user-attachments/assets/61b42114-2445-4f89-bbb2-d98e9d729cb5)

![BlocoInspecao](https://github.com/user-attachments/assets/8433b96a-deff-4ea6-809c-2820aadd7bc8)

*Ao selecionar "Criar Formulário", o usuário é direcionado para a página de registro, que se divide em Informações Gerais e Blocos de Inspeção*

![pdf gerado](https://github.com/user-attachments/assets/b1817c78-a7b3-4719-b655-98598340d3c8)

*Ao clicar para gerar pdf, assim como dito anteriormente ele vai pegar todas informações inseridas no formulario e gerar um pdf delas permitindo tambem o donwload*

![listPage](https://github.com/user-attachments/assets/09a97459-6aba-4d87-8a1a-5bb25fad6d59)

*Indo para o visualizador de registros agora, nesta pagina vão aparecer todos os registros do seu usuario, clicando no icone do lapis ele vai te redirecionar para a pagina de edição, permitindo mudar as informações daquele formulario*

![editPage](https://github.com/user-attachments/assets/61d6d64d-82fd-4c0f-a1b5-d544d1213f37)
![editPage2](https://github.com/user-attachments/assets/5ecddefa-1b17-4851-95d2-4c578671e2ba)

*Aqui na pagina de edição, podemos atualizar as informações antigas, deletar o registro, deletar as fotos do registro somente (depois de validado) e gerar o pdf novamente*

## **Administrador🛡**


*As funcionalidades do Administrador e as do usuario comum são quase as mesmas*

![MenuPrincipalADM](https://github.com/user-attachments/assets/247b6c27-c048-409a-8dd4-e10ee0e29d3b)
![DrawerADM](https://github.com/user-attachments/assets/b7600119-3370-477b-9f43-addb5d6c9ead)

*Ao fazer login como adm sua pagina principal ira mudar referenciando que você esta na conta de adm*


![listPageADM](https://github.com/user-attachments/assets/9b932861-9648-4ac6-8263-e4b852da957c)
*Na pagina de visualização de registro o administrador consegue visualizar o registro de todos os usuarios e tambem a quantidade total dos registros*

*Sobre a pagina de Criação e edição de registros a do Adm é identica a de um usuario normal, oque muda são suas permissões, um usuario normal não consegue editar os status de seus registros, somente o adm pode fazer isso*


## **Usuario Offline 📶**
![loginOffline](https://github.com/user-attachments/assets/b61fce9c-effc-4e67-a334-b99830f09ebb)

*Caso o usuario esteja offline, ele pode fazer um login sem inserir nenhuma informação, é como se ele entrasse no app sem usuario*
![offline](https://github.com/user-attachments/assets/9714289b-9e33-443a-adad-a4567128e41f)
![offline2](https://github.com/user-attachments/assets/324f3d94-737a-43ce-a17e-9a9eb0cb2be2)
*No modo offline, o usuário pode criar e salvar registros completos. A única limitação é que as imagens não são armazenadas localmente, devendo ser adicionadas após a sincronização.*

*A parte offline do projeto funciona igual as outras, possibilitando você fazer oque precisa em qualquer lugar , salvar e depois quando tiver conexão novamente pode sincronizar as informações. 
Obs: O Offline só é suportado para o aplicativo em si e não para versão web*


## **Tecnologias🛠️**

### FrontEnd💻

- FlutterFlow

### BackEnd🔩

- Supabase
- Sqlite3

## **Como Começar 🚀**

### Pré-requisitos

* Para a versão mobile, um dispositivo Android.
* Para a versão web, um navegador de internet moderno.
* Uma conta de usuário (fornecida pelo administrador do sistema).

### Acesso

* **Versão Web:** Acesse o sistema através do link: `https://formulariossma.flutterflow.app`
* **Aplicativo Mobile:** Baixe o APK do aplicativo ou solicite ele para Anderson Rungue Filho da Engenharia Digital *.


