# ## Estruturas Condicionais if/elsif/else/end

# nivel_log = "ERRO"

# if nivel_log == "CRITICAL"
#   puts "Alerta máximo!"
# elsif nivel_log == "ERRO"
#   puts "Erro detectado. Registar incidente."
# else
#   puts "Log informativo"
# end

# ## Modificadores (forma curta)

# puts "Análise concluída." if true

# log_vazio = false
# puts "Iniciando análise..." unless log_vazio

# ## Case/when/else/end

# codigo_http = 404

# case codigo_http
# when 200..299
#   puts "Sucesso"
# when 300..399
#   puts "Redirecionamento"
# when 400
#   puts "Erro: Requisição inválida"
# when 401, 403
#   puts "Acesso negado"
# when 404
#   puts "Recurso não encontrado"
# else
#   puts "Erro desconhecido"
# end

# ## Estruturas Loop
# ## While loop (executa enquanto condição for verdadeira)
# i = 0
# while i < 3
#   puts "Verificando evento #{i}"
#   i += 1
# end

# ## until loop (executa enquanto condição for falsa)
# contador = 0
# until contador == 3
#   puts "Tentativa #{contador + 1}"
#   contador += 1
# end

# ## For loop (executa enquanto condição for falsa)
# for nivel in ["INFO", "WARN", "ERRO"]
#   puts "Nível de log: #{nivel}"
# end

# ## Do loop (executa enquanto condição for falsa)
# loop do
#   print "Digite um comando (ou 'sair'): "
#   entrada = gets.chomp
#   break if entrada == "sair"
#   puts "Executando: #{entrada}"
# end

## Controlo fluxo dentro dos loops (break, next, redo)

# linhas_processadas = 0

# File.foreach("sistema.log") do |linha|
#   next if linha.strip.empty?
#   break if linhas_processadas >= 5

#   puts "Linha: #{linha.strip}"
#   linhas_processadas += 1
#   puts linhas_processadas
# end

## Combinação de condicionais e loops

# File.foreach("sistema.log") do |linha|
#   if linha.include?("CRITICAL")
#     puts "[ALERTA] #{linha.strip}"
#   elsif linha.include?("ERRO")
#     puts "[ERRO] #{linha.strip}"
#   elsif linha.include?("WARN")
#     puts "[AVISO] #{linha.strip}"
#   else
#     next
#   end
# end

## Filtragem de eventos

eventos_total = []
info = []
avisos = []
erros = []
criticos = []


File.foreach("./sistema.log") do |linha|
  next if linha.strip.empty?
  if linha.include?("CRITICAL")
    criticos << linha.strip
  elsif linha.include?("ERRO")
    erros << linha.strip
  elsif linha.include?("WARN")
    avisos << linha.strip
  elsif linha.include?("INFO")
    info << linha.strip
  else
    next
  end
  eventos_total << linha.strip
end

File.open("relatorio_eventos.txt", "w") do |f|
  f.puts "--- Relatório de Erros ---"
  f.puts "INFO: #{info.length}\n"
  f.puts "WARN: #{avisos.length}\n"
  f.puts "ERRO: #{erros.length}\n"
  f.puts "CRITICAL: #{criticos.length}\n"
  f.puts "--------------------"
  f.puts "Total de eventos analisado: #{eventos_total.length}"
end