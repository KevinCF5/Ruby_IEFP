# mensagem = "Verificação concluída"
# contador = 5
# puts "#{mensagem} com #{contador} alertas encontrados."

# def verifica_log
#   status = "Seguro"
#   puts "Status: #{status}"
# end

# verifica_log

# class Log
#   def initialize(nome)
#     @nome = nome
#   end

#   def mostrar
#     puts "Analisando o ficheiro: #{@nome}"
#   end
# end

# log1 = Log.new("firewall.log")
# log1.mostrar

# class Log
#   @@total_logs = 0

#   def initialize(nome)
#     @@total_logs += 1
#   end

#   def self.total
#     puts "Total de logs analisados: #{@@total_logs}"
#   end
# end

# Log.new("auth.log")
# Log.new("network.log")
# Log.total

# $versao_script = "1.0"

# def mostrar_versao
#   puts "Versão atual: #{$versao_script}"
# end

# mostrar_versao

########### CONSTANTES ################
# PI = 3.1416

# NOME_CURSO = "Cibersegurança Ruby"

# puts NOME_CURSO

################ SÍMBOLOS ###############
# :erro
# :info
# :critico

# log = {nivel: :erro, mensagem: "Falha de autenticação"}
# puts log[:nivel]

# puts "erro".object_id
# puts "erro".object_id
# puts :erro.object_id
# puts :erro.object_id


################ APLICAÇÃO PRÁTICA EM CIBERSEGURANÇA ###############

# class EventoSeguranca
#   attr_reader :tipo, :mensagem

#   def initialize(tipo, mensagem)
#     @tipo = tipo
#     @mensagem = mensagem
#   end

#   def mostrar
#     puts "[#{@tipo.upcase}] #{@mensagem}"
#   end
# end

# e1 = EventoSeguranca.new(:erro, "Acesso não autorizado detectado")
# e1.mostrar