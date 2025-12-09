File.foreach("../sistema.log") do |linha|
  if linha.include?("WARN")
    puts "[ALERTA] #{linha.strip}"
  elsif linha.include?("ERRO")
    puts "[ERRO] #{linha.strip}"
  else
    next
  end
end