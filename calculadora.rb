  # @Gutierrez

condicao = true
while condicao
  puts "Calculadora, Digite 0 para Subtrair, 1 para Somar, 2 para Multiplicação, 3 para Divisão ou 4 para sair."
resultado = gets.chomp.to_f

  if (resultado == 0)
    puts "Digite o primeiro número"
    num1 = gets.chomp.to_f

    puts "Beleza, agora o segundo número"
    num2 = gets.chomp.to_f

    def subtrair(num1, num2)
      puts "O Resultado é esse aqui: , #{num1 - num2}"
    end

    subtrair(num1, num2)

  elsif (resultado == 1)
    puts "Digite o primeiro número"
    num1 = gets.chomp.to_f

    puts "Beleza, agora o segundo número"
    num2 = gets.chomp.to_f

      def soma(num1, num2)
        puts "O Resultado é esse aqui: , #{num1 + num2}"
      end
  

    soma(num1, num2)

  elsif (resultado == 2)
    puts "Digite o primeiro número"
    num1 = gets.chomp.to_f

    puts "Beleza, agora o segundo número"
    num2 = gets.chomp.to_f

      def multiplica(num1, num2)
        puts "O Resultado é esse aqui: , #{num1 * num2}"
      end
  

    multiplica(num1, num2)

  elsif (resultado == 3)
    puts "Digite o primeiro número"
    num1 = gets.chomp.to_f

    puts "Beleza, agora o segundo número"
    num2 = gets.chomp.to_f

      def dividir(num1, num2)
        puts "O Resultado é esse aqui: , #{num1 / num2}"
      end
  

    dividir(num1, num2)  

  elsif (resultado == 4)    

      if resultado == 4 
        condicao = false
      end    
  end
end



