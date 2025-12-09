# ## Expressoes regulares
# linha = "ERRO: Falha na autenticação"
# if linha =~ /ERRO/
#   puts "Evento de erro detetado!"
# end

# ## Operador de correspondência =~
# puts "ERRO: Conexão perdida" =~ /ERRO/
# puts "ERRO: Conexão perdida" =~ /INFO/

# ## match
# m = /ERRO/.match("ERRO: Sistema falhou")

# puts m[0]

# ## Modificadores
# ## Modificador IGNORE CASE
# regex = /erro/i
# m = regex.match("ERRO: Falha no sistema")

# puts m[0]

## Modificador MULTILINE
# regex = /ERRO:.+/m # o .+ vai capturar tudo inclusive o \n
# texto = "ERRO:\nLinha 1\nLinha 2"

# m=regex.match(texto)

# puts m[0]

## Modificador EXPANDED
# regex = /
# \d{4} 
# -
# \d{2}
# -
# \d{2}
# /x

# m = regex.match("Data: 2025-01-26")

# puts m[0]

## Metacaracteres e Padrões Comuns
## 1) . - qualquer caractere (excepto nova linha)
# regex = /a.c/

# puts regex.match("abc")
# puts regex.match("a-c")

## 2) ^ - início da linha
# regex = /^ERRO/

# puts regex.match("ERRO: Falhou")
# puts regex.match("Alerta: ERRO")

## 3) $ - início da linha
# regex = /fim$/

# puts regex.match("isto acaba no fim")
# puts regex.match("fim aqui? não")

## 4) \d - Dígito (0-9)
# regex = /\d\d\d/

# puts regex.match("123 abc")
# puts regex.match("abc")

## 5) \w - Carácter alfanumérico
# regex = /\w+/

# puts regex.match("user123")
# puts regex.match("root")

## 6) \s - Espaço em branco
# regex = /\s+/

# puts regex.match("Hello World")

## 7) + - uma ou mais ocorrencias
# regex = /\d+/

# puts regex.match("42")

## 8) * - Zero ou mais ocorrencias
# regex = /a*/

# puts regex.match("aaa")
# puts regex.match("bbb")

## 9) ? - Zero ou uma ocorrencias
# regex = /colou?r/

# puts regex.match("color")
# puts regex.match("colour") # o u é opcional

## 10) {n.m} - entre n e m repetições
regex = /\d{2,4}/

puts regex.match("99")
puts regex.match("2024") 
puts regex.match("1") 

