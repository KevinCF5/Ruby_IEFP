# 1
numero = -25
resultado = numero.abs
puts resultado

# 2
numero = 20
resultado = numero.even?

if resultado
  puts "É par"
else
  puts "Não é par"
end

# 3
numero = 21
resultado = numero.odd?

if resultado
  puts "É ímpar"
else
  puts "Não é ímpar"
end

# 4
string = "200"
resultado = string.to_i
puts resultado

# 5
string = "3.75"
resultado = string.to_f
puts resultado

# 6
string = "monitorização"
resultado = string.length
puts resultado

nova_string = string + " remota"
novo_resultado = nova_string.length
puts novo_resultado

# 7
string = "porta fechada"
resultado = string.upcase
puts resultado

# 8
string = "CONEXÃO INTERROMPIDA"
resultado = string.downcase
puts resultado

# 9
string = "ALERTA: Módulo não encontrado"
resultado = string.include?("ALERTA")
resultado2 = string.include?("ERRO")
puts resultado
puts resultado2

# 10
string = " /var/log/auth.log"
resultado = string.strip
puts resultado

# 11
string = "ERRO;Falha de login;192.168.1.20"
resultado = string.split(";")
puts resultado[0]
puts resultado[1]
puts resultado[2]

# 12
string = "AVISO: aviso de segurança"
resultado = string.sub("AVISO", "NOTIFICAÇÃO")
puts resultado

# 13
string = "login falhado, login falhado, login falhado"
resultado = string.gsub("login falhado", "tentativa falhada")
puts resultado


