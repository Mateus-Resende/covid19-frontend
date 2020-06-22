# Trabalho Prático - Processamento Paralelo e Sistemas Distribuídos

## Autores
Eduardo Magalhães Santa Bárbara    - 115116549
Elionai Rocha da Silva             - 11621642
Mateus Augusto Mendonça de Resende - 120114657

## Descrição

Esse projeto foi feito com o intuito de ajudar as pessoas a se conscientizarem sobre o COVID-19 e ajudar a disseminar informações confiáveis sobre a doença.
Foi utilizado uma arquitetura em camadas para fazer as diferentes partes do projeto:
1. Frontend em React (dentro da pasta frontend)
2. Backend em Ruby on Rails (dentro da pasta backend)
3. Banco de dados MySQL

O frontend e o backend se comunicam através de uma API HTTP por três rotas:
```
GET /products    - busca os suprimentos médicos que o usuário pode se interessar em comprar
GET /cases       - busca os casos confirmados para mostrar no mapa
GET /test-places - busca os lugares de teste disponíveis
```

### Requisitos

1. Ajude o governo a identificar e rastrear as pessoas infectadas ou pessoas que tiveram contato com pessoas infectadas ou visitaram cidades de alto risco nos últimos 14 dias.
  - Foi Realizado através de um formulário onde a pessoa informa se teve sintomas da doença, contato com pessoas com casos confirmados, e se ela saiu de casa recentemente. Após isso, é feito um cálculo para determinar o risco da pessoa.

2. Forneça informações sobre onde comprar suprimentos médicos, como máscaras faciais, álcoois, etc. Seu aplicativo pode precisar monitorar e mapear todas as lojas online, verificar e atualizar quando os suprimentos médicos estiverem disponíveis.
  - Foi criado um banco de dados com os produtos para que o usuário possa ir para a página da loja e comprar os suprimentos desejados

3. Notificar sobre casos próximos. Marque os casos próximos aos usuários e avise-os para não passarem por lá.
  - É apresentado um mapa ao usuário notificando sobre os casos da região

4. Crie uma plataforma de consulta médica on-line. O usuário pode obter aconselhamento de voluntários médicos on-line, caso tenha sintomas. Essa consulta pode ser por uma simples FAQ. Opcional: Fazer uma consulta em tempo real por chat.
  - Uma página de perguntas frequentes foi feita para mostrar ao usuário informações relevantes sobre a doença, como sintomas, como prevenir, tempo de isolamento recomendado, etc.

5. Mostrar onde testes estão sendo realizados de uma maneira que diminua o dano que esse novo inimigo causa. Além de mostrar locais que realizam o exame, apresentar a melhor rota para que o usuário chegue nesse local. Opcional: Tente levar em consideração a quantidade de pessoas se dirigindo a esse local e indique uma segunda rota mais próxima com menos pessoas em atendimento.
  - É mostrado um mapa com a localização das lojas e a localização atual do usuário para que ele possa ir até o local desejado

6. **Opcional**: Como ajudar os pais a manter seus filhos ocupados, enquanto eles também podem aprender como trabalhar em casa? Isto é, apresentar uma interface envolvente (gamificação?) para as crianças aprenderem um pouco sobre o vírus e da importância de estarem em casa.
  - Um jogo da memória com informações relevantes sobre a doença e a prevenção é mostrado para distrair os filhos

7. **Opcional**: Como aumentar a conscientização e informar as pessoas sobre a situação sem causar pânico? Capturar tweets, posts no facebook ou notícias em sites e apresentá-las para o usuário em um local de notícias no seu sistema. Lembre-se de capturar informações de fontes confiáveis.
  - Um feed com notícias do twitter do Ministério da saúde é mostrado com informações reais e confiáveis sobre a doença.


### Instalação

O projeto tem as seguintes dependências para rodar:
  - Ruby 2.7.1
  - Node >= 12
  - MySQL >= 5.6
  - Yarn >= 1.22

Tendo essas três dependências instaladas, confirme que o seu MySQL está rodando na porta 3306.

Para rodar o backend, é necessário que você coloque a sua senha do banco de dados dentro de um arquivo que não será commitado no repositório através do comando: `touch backend/config/local_env.yml`. Dentro do mesmo, adicione o seguinte conteúdo:

```
BACKEND_DATABASE_PASSWORD: <sua_senha_aqui>
```

Depois disso, rode os seguintes comandos:
  ```
  cd backend && \
    gem install bundler && \
    bundle install && \
    bundle exec rails db:setup && \
    bundle exec rails db:migrate && \
    bundle exec rails db:seed && \
    bundle exec rails server
  ```

Já para o frontend, você precisará colocar uma chave de acesso ao google maps para conseguir rodar corretamente dentro de um arquivo .env com o nome de `REACT_APP_GOOGLE_MAPS_API_KEY` na pasta frontend. Tendo feito isso, rode os comandos a seguir:
  ```
  cd frontend && \
    yarn install && \
    yarn start
  ```

Com isso você deve ser capaz de acessar o site em `localhost:3001` e a API estará disponível em `localhost:3000`.
