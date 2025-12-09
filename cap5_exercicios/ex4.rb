# # until loop (executa enquanto condição for falsa)
# File.foreach("../sistema.log") do |linha|
#   until linha.include?("END")
#     puts "#{linha.strip}"
#   break
#   end 
# end

File.foreach("../sistema.log") do |linha|
  break if linha.include?("END")
    puts linha 
end


# File.foreach("../sistema.log") do |linha|
#   puts linha
#   break if linha.include?("END")
# end

# arquivo = File.open("../sistema.log")
 
# until arquivo.eof?
#   linha = arquivo.readline.chomp
#   puts linha
#   break if linha == "END"
# end

# arquivo.close