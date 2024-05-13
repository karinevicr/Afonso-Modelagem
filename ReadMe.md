# Documentação Simplificada do Modelo Relacional

**Projeto:** Abandono Zero  
**Data:** 12-05-2024  
**Autor:** Karine Victoria Rosa da Paixão  
**Objetivo:** Descrever o modelo relacional do projeto de forma mais resumida e simplificada.

## Entidades

  ### **Usuários**
  
  - **Usuários** (`users`): Armazena informações básicas sobre os usuários.
    - `id`: Identificador único do usuário.
    - `name`: Nome do usuário.
    - `email`: Endereço de email do usuário.
    - `gender`: Gênero do usuário.
    - `country`: País do usuário.
    - `city`: Cidade do usuário.
    - `people_in_house`: Número de pessoas na residência do usuário.
    - `marital_status`: Estado civil do usuário.
    - `age`: Idade do usuário.

 ### **Formulários**

  - **Possui algum cachorro** (`have_dog`): Informações basicas sobre o cachorro que o usuário possui.
    - `id`: Identificador único do registro.
    - `id_users`: *foreign key* que faz a ligação o usuário relacionado.
    - `dog_name`: Nome do cachorro.
    - `dog_age`: Idade do cachorro.
    - `dog_breed`: Raça do cachorro.
    - `vet_frequency`: Frequência media de visitas ao veterinário.
    - `how_many_pet`: Quantidade de animais de estimação que a casa possui.
    - `where_get`: Local onde o cachorro foi comprado ou adotado.
    - `was_paid`: Indicação se o cahorro foi comprado.
    - `dog_personality`: Personalidade do cachorro, segundo a visão do tutor.
    - `dog_sex`: Sexo do cachorro.
    
  - **Já teve cachorro** (`had_dog`): Informações sobre o cachorro que o usuário já teve .
    - `id`: Identificador único do registro.
    - `dog_name`: Nome do cachorro.
    - `dog_personality`: Personalidade do cachorro.
    - `time_with_the_dog`: Tempo em que o usuário ficou com o cahorro.
    - `dog_breed`: Raça do cachorro
    - `dog_age`: Idade do cachorro.
    - `adopted_or_buyed`: Indicação se o cachorro foi adotado ou comprado.
    - `go_to_vet`: Frequência media de visitas ao veterinário.
    - `dog_origin`: Origem do cachorro.
    - `id_users`: *foreign key* que faz a ligaçaõ com usuário relacionado.

  - **Deseja ter cachorro** (`want_dog`): Informações sobre o cachorro que o usuário que deseja ter algum cachorro.
    - `id`: Identificador único do registro.
    - `dog_name`: Nome do cachorro desejado.
    - `dog_sex`: Sexo do cachorro desejado.
    - `dog_size`: Tamanho do cachorro desejado.
    - `dog_breed`: Raça do cachorro desejado.
    - `about_cost`: Informações sobre os custos associados à adoção ou compra do cachorro.
    - `personality_expect`: Expectativas de personalidade do cachorro.
    - `adopt_or_buy`: Indicação se o usuário pretende adotar ou comprar o cachorro desejado.
    - `id_users`: *foreign key* que faz a ligação com usuário relacionado.


- **Não quer ter cachorro** (`dont_had_and_dont_want`): Motivo pelo qual o usuário não quer ter um cachorro.
    - `id`: Identificador único do registro.
    - `why_dont_want`: Motivo pelo qual o usuário não quer ter um cachorro.
    -`something_would_make_you_want_to_have_a_dog`: Informações sobre o que poderia fazer o usuário querer ter um cachorro.
    - `id_users`: *foreign key* que faz a ligaçaõ com usuário relacionado.
  

- **Contato** (`contact_users`): Dados para contato futuro com o usuário (nome completo, celular, email).
  - `id`: Identificador único do registro.
  - `phone`: Número de telefone do usuário.
  - `email`: Endereço de email do usuário.
  - `complete_name`: Nome completo do usuário.
  - `id_users`: *foreign key* que faz a ligaçaõ com usuário relacionado.


### Relacionamentos

- Um usuário pode ter um único formulário geral (1:1).
- Um usuário pode ter vários formulários de cães (N:M).
- Um formulário de "possuir cachorro" está relacionado a um único registro de "cachorro (possuir)".
- Um formulário de "desejar cachorro" está relacionado a um único registro de "cachorro (desejar)".

### Regras de Negócio

- Todos os campos obrigatórios devem ser preenchidos.
- As informações devem ser consistentes entre os formulários.
- Os usuários não podem editar informações já salvas, exceto em casos específicos.
- As informações dos usuários são confidenciais.

### Diagrama

[Diagrama simplificado do modelo relacional (opcional)]

### Considerações Finais

Este modelo relacional simplificado fornece uma base para o gerenciamento eficiente das informações dos usuários e suas respostas nos formulários do projeto Abandono Zero. As entidades, seus atributos e relacionamentos garantem a organização e a integridade dos dados. As regras de negócio garantem a consistência e a confiabilidade das informações.

**Observações:**

- Este modelo é uma versão simplificada e pode ser adaptado às necessidades específicas do projeto.
- É importante documentar detalhadamente o modelo relacional para facilitar o entendimento e a manutenção do sistema.
- A implementação do modelo relacional deve seguir boas práticas de desenvolvimento de banco de dados.