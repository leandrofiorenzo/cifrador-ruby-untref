Dir[File.join(__dir__, 'model', '*.rb')].each { |file| require file }

desplazamiento = ARGV[0]
texto_a_cifrar = ARGV[1]

cifrador = Cifrador.new(desplazamiento, texto_a_cifrar)
texto_cifrado = cifrador.cifrar
puts "f(#{desplazamiento},#{texto_a_cifrar}) = #{texto_cifrado}"

# walking skeleton:
# 1. leer input
# 2. delegar al modelo
# 3. formatear ouput
