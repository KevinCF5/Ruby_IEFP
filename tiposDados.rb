puts 123.class 
puts 3.14.class 
puts "log".class 
puts true.class 

if 0
  puts "0 é verdadeiro em Ruby"
end

if nil
  puts "Isto não será exibido"
else
  puts "nil é falso em Ruby"
end

nivel =:erro

if nivel == :erro
  puts "Evento crítico detectado"
end

linha = ""

if linha
  puts "A linha é verdadeira"
else
  puts "A linha é falsa"
end

unless linha
  puts "A linha é falsa"
end

if linha
  puts "A linha é true"
elsif
  puts "A linha é false"
end


linha = "   "

if linha.empty?
  puts "Linha vazia - ignorada"
else
  puts "Linha processada"
end

nivel = :aviso

if nivel == :erro
  puts "Evento crítico"
elsif nivel == :aviso
  puts "Evento de aviso"
else
  puts "Evento informativo"
end


nivel = :info

unless nivel == :erro
  puts "Sem falhas detectadas"
end

puts "Acesso autorizado" unless nivel == :erro

# Exemplo de Cibersegurança

linha = "2025-11-16 10:12:01 WARN Falha na autenticação"

if linha.empty?
  puts "linha vazia - ignorada"
elsif linha.include?("ERRO")
  puts "Evento crítico detectado!"
elsif linha.include?("WARN")
  puts "Aviso registado"
else
  puts "Evento normal"
end

# NÚMEROS

a = 10
b = 3.5

puts a + b
puts a * 2 
puts b.round

numero = -5
resultado = numero.abs
puts resultado

numero = 4
resultado = numero.even?
puts resultado

numero = 3
resultado = numero.odd?
puts resultado

valor = "5"
puts valor.to_i

valor = "3.14"
puts valor.to_f

valor = "10"
puts valor.to_f

codigo_http = "404"
puts codigo_http.to_i == 404
puts codigo_http == 404

# Intervalos
dias = 1..5
puts dias.to_a

dias = 1...5
puts dias.to_a

dias = 'a'..'e'
puts dias.to_a

intervalo = 1..10
puts intervalo.include?(7)
puts intervalo.include?(10)
puts intervalo.include?(15)

codigo = 404
if(200..299).include?(codigo)
  puts "Sucesso"
else
  puts "Erro HTTP detectado"
end


a = "Mensagem"
b = 'Texto literal'

nome = "Analista"

puts "Bem-vindo, #{nome}!"
puts "Bem-vindo, " + nome + " ao seu primeiro dia de aula"
puts 'Bem-vindo, #{nome}!'
puts 'Bem-vindo, #{nome}!'

texto = "cibersegurança"
puts texto.length

texto = "Curso na net"
puts texto.upcase

texto = "ALERTA DE ATAQUE"
puts texto.downcase

texto = "2025-11-16 10:12:01 ERRO"
puts texto.include?("ERRO")

entrada = "     utilizador    "
puts entrada.strip

log = "INFO, 2025-11-16,Servidor1"
partes = log.split(",")

puts partes.inspect

linha = "ERRO: erro de leitura"
puts linha.sub("erro", "problema")

linha = "erro erro erro"
puts linha.gsub("erro", "alerta")

valor = "25"

puts valor.to_i + 5
puts 3.14.to_s
puts true.to_s


# Exemplo de Cibersegurança

linha = "2025-11-16 10:12:01 INFO Serviço iniciado"

if linha.include?("INFO")
  puts "Evento informativo detectado"
end

tempo_execução = 3.45
puts "Análise concluída em #{tempo_execução} segundos."

# EXERCICIOS
# 1
numero = 3

puts numero.even?

# 2
mensagem = "ERRO: Base de dados inacessível"
puts mensagem.length

puts mensagem.sub("ERRO", "ALERTA").length

# 3
codigo = 403
intervalo = 400..499
puts intervalo.include?(codigo)

# 4
log = "[2025-02-10 08:12:14], INFO,  Booting application version 3.4.1"

array = log.split(",")

puts array[0]
puts array.include?("INFO")



