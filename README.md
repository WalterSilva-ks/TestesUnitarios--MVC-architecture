# Conversor de moedas

Projeto Flutter

## Oque se trata

Este projeto é apenas um treino prático sobre Arquitetura do tipo MVC (Model, View, Controller) e teste unitário

## MVC

Model-view-controller (MVC) é um padrão de arquitetura de software. Com o aumento da complexidade das aplicações desenvolvidas torna-se fundamental a separação entre os dados (Model) e o layout (View). Desta forma, alterações feitas no layout não afectam a manipulação de dados, e estes poderão ser reorganizados sem alterar o layout. 

## Como é a interação?

A partir do momento em que dividimos os nossos componentes em Camadas podemos aplicar o MVC nestas. Geralmente isto é feito definindo a Camada de Negócios como o Model, a Apresentação como a View. O componente Controller exige um pouco mais de controle. Logo, cuidado para não confundir MVC com separação de camadas. Camadas dizem como agrupar os componentes. O MVC diz como os componentes da aplicação interagem. O MVC baseia-se em 2 princípios fortes. - O Controller Despacha as Solicitações ao Model; - A View observa o Model;

### Model:
A representação "domínio" específica da informação em que a aplicação opera. Por exemplo, aluno, professor e turma fazem parte do domínio de um sistema acadêmico. É comum haver confusão pensando que Model é um outro nome para a camada de domínio. Lógica de domínio adiciona sentido a dados crus (por exemplo, calcular se hoje é aniversário do usuário, ou calcular o total de impostos e fretes sobre um determinado carrinho de compras). Muitas aplicações usam um mecanismo de armazenamento persistente (como banco de dados) para armazenar dados. MVC não cita especificamente a camada para acesso aos dados, porque subentende-se que estes métodos estariam encapsulados pelo Model.

### View:
"Renderiza" o model em uma forma específica para a interação, geralmente uma interface de usuário.

### Controller:
Processa e responde a eventos, geralmente ações do usuário, e pode invocar alterações no Model. É lá que é feita a validação dos dados e também é onde os valores postos pelos usuários são filtrados


