filtro_warn = Proc.new { |linha| linha.include?("WARN")}

logs = [
  "INFO - Sistema iniciado",
  "WARN - Memória quase cheia",
  "ERRO - Falha de autenticação",
  "CRITICAL - Servidor indisponível",
  "WARN - Conexão lenta"
]

avisos = logs.select(&filtro_warn)
puts avisos.inspect