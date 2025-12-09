## Hashes

# evento = {
#   data: "2025-10-31",
#   nivel: "ERRO",
#   mensagem: "Conexão perdida"
# }

# puts evento[:nivel]
# puts evento[:mensagem]

# puts evento.keys
# puts evento.values
# puts evento.has_key?(:nivel)
# puts evento.delete(:nivel)
# puts evento

# ## Fusão de Hashes

# config_padrao = { porta:22, ativo: true}
# config_local = { porta: 8080}

# config_final = config_padrao.merge(config_local)

# puts config_final

## Ficheiros

conteudo = File.read("sistema.log")

puts conteudo.length

File.foreach("sistema.log") do |linha|
  puts linha if linha.include?("ERRO")
end

File.open("resultado.txt", "w") do |f|
  f.puts "Relatório de Análise"
  f.puts "Total de eventos: 20"
end

## Processamento de Logs (combinação de arrays e ficheiros)

erros=[]

File.foreach("sistema.log") do |linha|
  if linha.include?("ERRO")
    erros << linha.strip
  end
end

File.open("erros_extraídos.txt", "w") do |f|
  f.puts "--- Relatório de Erros ---"
  erros.each { |e| f.puts e}
end

## Blocos de Código
3.times do |i|
  puts "Tentativa #{i + 1}"
end

## Proc e Lambdas

filtro_erro = Proc.new { |linha| linha.include?("ERRO")}

logs = ["INFO", "ERRO", "WARN"]
erros = logs.select(&filtro_erro)
puts erros.inspect

mensagem = ->(nome) {puts "Olá, #{nome}"}

mensagem.call("Analista")

## Aplicação em Cibersegurança

File.foreach("sistema.log") do |linha|
  next unless linha.include?("DEBUG")
  puts "ALERTA: #{linha.strip}"
end