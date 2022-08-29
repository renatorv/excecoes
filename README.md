A simple command-line application.

Finalizamos nossa primeira aula!

Chegamos ao final da nossa primeira aula e os conceitos que abordamos são muito importantes para que sua programação com 
Dart evolua para um próximo passo! Vamos relembrar o que aprendemos?

Qual a diferença entre Erros e Exceções:

Aprendemos que nem sempre nossas aplicações seguirão pelo caminho perfeito, e que erros e situações excepcionais podem acontecer. 
Agora conseguimos diferenciar esses dois conceitos:
“Erros” são os problemas que não temos total controle e não fazem parte do fluxo esperado no nosso modelo de negócios, quando 
estamos programando podemos até antecipar que erros vão acontecer, mas não é nossa função tratá-los em tempo de execução.
“Exceções” são as situações excepcionais que fogem do “caminho feliz” previsto no fluxo do nosso modelo de negócios. Essas 
situações sim, nós devemos antever, tratar e resolver da melhor forma possível para nossa pessoa usuária.
O que é a Pilha de Execução:

Vimos também que um conceito importante para compreensão das exceções é o da Pilha de Execução, que é uma forma de representar 
como o Sistema Operacional prioriza a leitura do código que nós escrevemos na nossa aplicação.
O que é o Depurador e o Modo de Depuração:

Aprendemos, por fim, que nos nossos Ambientes de Desenvolvimento (IDEs) não temos apenas a opção de “Rodar” o nosso código, temos 
também a opção de “Depurar” (Debug). A opção Debug roda nosso código em Modo de Depuração, abrindo para gente uma nova aba chamada 
“Depurador”. Nela temos a visão de várias novas ferramentas que permitem uma análise linha a linha do nosso código, coisa que não 
seria possível no modo de “Rodar” que estamos acostumados.



TRY-CATCH

Nessa aula, aprendemos conceitos muito importantes para sua jornada de aprendizagem a respeito das Exceções. Os conceitos trabalhados aqui são essenciais para o entendimento das próximas aulas, por isso é importante dominá-los bem. Vamos relembrar?

Como são mostradas Exceções no Depurador:

Aprendemos que, diferentemente do modo “Run” (Rodar), quando uma exceção é gerada no modo “Debug” (Depurar) a execução é parada na linha de código que gerou essa exceção e, usando o Depurador podemos analisar toda a Pilha de Execução gerada até essa linha e quais os valores das variáveis nesse momento.
Lidando com Exceções com o uso do Try-On:

Aprendemos também que usando a estrutura try-on podemos evitar que a aplicação acabe quando uma exceção for gerada (com o try, do inglês “tente”), e assim podemos dar um tratamento adequado para cada situação excepcional (com o on, do inglês “em” o que pode ser entendido como “na situação de”).
Capturando exceções com o Catch:

Logo na sequência, Aprendemos que podemos capturar um objeto de exceção através do catch e assim ter acesso aos membros (propriedades e métodos) dessa exceção para tornar nossa coleta de informações e tratamento mais completas.
Outras ferramentas para lidar com exceções:

Aprendemos que podemos capturar além do objeto Exceção, um objeto StakeTrace que é útil para nos dar a informação sobre o Rastro da Pilha que a Exceção gerou.
Vimos também que podemos utilizar o Rethrow para lançar a exceção para o próximo quadro da Pilha de Execução, mesmo que tenhamos tratada essa exceção com o try.

E, por fim, aprendemos que podemos usar o finally na nossa estrutura para escrever um bloco de código que garantidamente será executado, independentemente do que aconteça anteriormente com nossa exceção.

Concluímos a nossa segunda aula!

Chegamos ao final da aula 2 e até aqui aprendemos conceitos muito importantes e que servirão de base para as próximas aulas. Por isso, evite ficar com dúvidas, volte nessa aula se achar necessário para reforçar algum conteúdo, e caso ainda se sinta inseguro ou insegura, nos procure lá no fórum. Vamos adorar ajudar você!

LINKS:

https://dart.dev/guides/language/language-tour#exceptions
https://dart.dev/guides/language/language-tour#assert
https://api.dart.dev/stable/2.17.3/dart-core/Exception-class.html
https://api.dart.dev/stable/2.17.3/dart-core/Error-class.html

03 - CRIANDO EXCEÇÕES PERSONALIZADAS:

Como lançar uma Exceção:

Aprendemos que com a palavra-chave throw podemos lançar uma exceção, ou seja, parar a execução do código naquela sub-rotina (função) e enviar um objeto-exceção para quem estiver abaixo na Pilha de Execução. Se essa exceção lançada passar por todos os quadros da pilha sem ser tratado, ela terminará a execução do código com uma saída de insucesso. E abordamos que o Dart permite enviarmos qualquer objeto no throw, mas que códigos de qualidade, principalmente em ambiente de produção, lançam apenas objetos de tipos que implementam Exception ou Error.
Como criar uma exceção personalizada:

Aprendemos que o processo de criar uma exceção personalizada consiste basicamente em criar uma classe que implementa a classe abstrata Exception, e que, uma vez criada, podemos lançar nossas exceções com o throw e capturá-las com a estrutura try-on-cath-finally.
Como criar e usar propriedades e métodos para nossas Exceções Personalizadas:

Também aprendemos que, como uma classe, podemos criar membros (propriedades e métodos) para uma Exceção, que estarão disponíveis para acesso ao capturarmos nossa Exceção com o catch.
O que é e como usar o Assert:

Por fim, aprendemos que podemos usar o comando assert para fazer verificações apenas em ambiente de desenvolvimento que tenha o comando de terminal --enable-asserts ativado. Essa ferramenta é útil para fazer testes com o AssertionError, que para a execução do nosso programa, mas só apenas em tempo de desenvolvimento, não afetando o código que chegará à pessoa usuária.


NULL SAFETY:
Null é uma classe em Dart, porém essa classe não pode ser instânciada.
Ele é um tipo separado de todos os outros tipos em Dart.

factory:  https://dart.dev/guides/language/language-tour#factory-constructors
external: https://spec.dart.dev/DartLangSpecDraft.pdf#External%20Functions

https://dart.dev/null-safety/understanding-null-safety

Para complementar seu conhecimento, teste o comportamento de referência nulas em uma aplicação só de estudos.



Crie variáveis com ?, como Account? e não a inicialize (o que é similar a inicializar com um null).

Então, chame um membro qualquer usando o operador de null check, o bang !. Rode o programa e perceba que o erro CastError será apresentado com a seguinte mensagem: “Null check operator used on a null value”, o que lhe indica que você usou o operador em uma variável que era nula.

Usar o bang ! em um código real é uma má prática e deve ser evitado, mas você pode sempre utilizar dessa ferramenta para testar código durante seus estudos e ganhar segurança na sua programação em Dart.



o que aprendemos:

O que é um Nulo:

Aprendemos que no Dart, o Nulo é um tipo não instanciável e representa a ausência de valor. Aprendemos também que no passado, o null era um subtipo de todos os tipos, mas desde a implementação do Null Safety na linguagem, o Null passou a ser um tipo a parte de todos, podendo agora uma variável ou propriedade receber ou apenas valores não nulos, ou tanto valores nulos quanto não nulos.
O problema que o Null Safety resolve:

Aprendemos que o Null Safety resolve o problema das Referências Nulas, ou seja, de tentarmos acessar membros de variáveis que estão com valores nulos, evitando assim erros em tempo de execução.
Como lidar com nulos de uma forma segura:

Por fim, aprendemos que existem algumas formas seguras de se lidar com nulos e a principal delas é testando se a variável contém ou não um valor nulo. Esse teste com if-else garante, em tempo de execução, que a variável não será nula. Também podemos usar a chamada segura, ou Safe Call, utilizando a ? quando queremos tentar acessar um membro de uma classe, e não uma variável local.
E, assim, encerramos a Aula 4, onde falamos sobre um dos assuntos mais importantes para você que pretende se destacar na área e se tornar uma pessoa programadora de Dart e Flutter com diferencial no mercado!

"# excecoes" 
