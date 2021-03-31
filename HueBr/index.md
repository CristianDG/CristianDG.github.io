
# Linguagem HBR

## Duvidas e problemas

- Como diferenciar essa linguagem de racket ?
- As funções no modo Haskell/ML será feito o currying automaticamente ?
- Como eu posso fazer o uncurry de uma função de uma maneira simples ?
- Ainda estou decidindo a estrutura de funções lambda e das curried functions

## Modificadores de linguagens

modifica o funcionamento da linguagem

o intuito seria adaptar o funcionamento da linguagem
para emular outras linguagens (java, javascript, haskell, scala, ...)

alguns exemplos seram:
- modificar a sintaxe
- ajustar a "pureza"


`#{ Attr, Attr = val }`

## Modo linguagem

é praticamente um arquivo onde fica toda a configuração necessaria para emular uma linguagem
além de usar modificadores de linguagem, dá pra configurar keywords e operadores especiais e
trocar o funcionamento de outros, por exemplo em PASCAL `=` significa igualdade e `:=` significa
atribuição


como usar em um arquivo:
`#{ lang-mode = javascript }`

## Funções

### Funções lambda

bom, é uma função sem nome

pode ser pura ou impura (a escolha dos modificadores)

qual das estruturas?
- `(x) => { x }`
- `(x) { x }`
- `\x -> x`
- `(lambda (x) x)`

### Curried functions

são funções que retornam outras funções

qual das estruturas?
- `(x)(y) => { x + y }`
- `(x)(y) { x + y }`

### Composição de funções

TODO: mudar isso

```
a |> b()  # seria b(a)
a |> b(x) # seria b(x,a)

val h = f . g # h(1) é f(g(1))
```

### Declaração de funções

```
var f = (x,y){ x }  # uma função atribuida a uma variavel pode ser redefinida
val f = (x,y){ x }  # uma função atribuida a um valor é constante
fun f(x,y){ x }     # uma função construida desse jeito pode ser chamada de método, como em scala
fun f(x,y): x       # definição de um método estilo python
fun f x y = x       # definição de um método estilo haskell/ML
fun f(x,y) do x end # definição de um método estilo ruby/elixir/lua
```

### VarArgs

TODO: WIP

## simbolos??? (quotation)

`'teste` será q isso vai funcionar?

## Comentários

```
# comentario de linha

#| 
comentário multilinha VVV
#|

```

## Atribuição de variavel
```
var a = 3
a = 4 # tudo normal
```

## Atribuição de valor

```
val b = "opa"
b = "eae" # erro, valores não podem ser redefinidos
```

## Atribuição de constante
`const TAMANHO = 45`

## Tipagem

A tipagem será decidida pelas modificações, podendo ser que nem a de
javascript ou a de haskell usando o sistema [Hindley-Milner](https://en.wikipedia.org/wiki/Hindley%E2%80%93Milner_type_system)

A ideia é que quando a linguagem não é tipada, tudo seria `Any` ou algo assim, quando a inferencia for
ativada, tudo começaria a ganhar tipagem de dentro pra fora, como em haskell

## Match expression

TODO: WIP

## Código exemplo

```
#{no-parenthesis-application}

val valor = 3
var variável = 4

fun funcao(x){
    val sla = 3
    sla + x
}

fun paraCada(lista, função){
    # WIP
    compare lista {
        [item:itens] -> função(item) : paraCada(itens, função)
        [] -> []
    }
}

paraCada [1 2 3] (item) => {
    escreva(item)
}

```
