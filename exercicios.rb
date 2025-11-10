# EXERCICIO 1

$AUTOR = "Kévin Mateus"

def mostrar_autor
  puts "AUTOR: #{$AUTOR}"
end

mostrar_autor

# EXERCICIO 2

class Sistema
  @@total_alertas = 0

  def initialize(nome)
    @@total_alertas += 1
  end

  def self.mostrar_total
    puts "Total de alertas adicionados: #{@@total_alertas}"
  end
end

Sistema.new("Alerta1")
Sistema.new("Alerta2")
Sistema.mostrar_total

# EXERCICIO 3

class Sistema2
  attr_reader :tipo, :mensagem

  def initialize(tipo, mensagem)
    @tipo = tipo
    @mensagem = mensagem
  end

  def mostrar
    puts "[#{@tipo.upcase}] #{@mensagem}"
  end
end

e1 = Sistema2.new(:erro, "Acesso não autorizado detectado")
e2 = Sistema2.new(:info, "Acesso autorizado")
e3 = Sistema2.new(:aviso, "Tem de renovar o seu acesso!")
e1.mostrar
e2.mostrar
e3.mostrar

# EXERCICIO 3

# class Sistema2
#   attr_reader :tipo, :mensagem

#   def initialize(tipo)
#     @tipo = tipo
#     @mensagem = nil
#   end

#   def mostrar
#     if @tipo == :erro
#       @mensagem = "Acesso não autorizado detectado"
#       puts "[#{@tipo.upcase}] #{@mensagem}"
#     elsif @tipo == :info
#       @mensagem = "O acesso foi autorizado"
#       puts "[#{@tipo.upcase}] #{@mensagem}"
#     elsif @tipo == :aviso
#       @mensagem = "Tem que renovar o seu acesso"
#       puts "[#{@tipo.upcase}] #{@mensagem}"
#     end
#   end
# end

# e1 = Sistema2.new(:erro)
# e2 = Sistema2.new(:info)
# e3 = Sistema2.new(:aviso)
# e1.mostrar
# e2.mostrar
# e3.mostrar
