# mensagem = "Verificação concluída"
# contador = 5
# puts "#{mensagem} com #{contador} alertas encontrados."

# def verifica_log
#   status = "Seguro"
#   puts "Status: #{status}"
# end

# verifica_log

class Log
  def initialize(nome)
    @nome = nome
  end

  def mostrar
    puts "Analisando o ficheiro: #{@nome}"
  end
end

log1 = Log.new("firewall.log")
log1.mostrar