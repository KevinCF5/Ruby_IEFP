codigo_http = 200

case codigo_http
when 200..299
  puts "Sucesso"
when 300..399
  puts "Redirecionamento"
when 400
  puts "Erro: Requisição inválida"
when 401, 403
  puts "Acesso negado"
when 404
  puts "Recurso não encontrado"
else
  puts "Erro desconhecido"
end