class Cifrador
  attr_reader :desplazamiento
  attr_reader :texto_a_cifrar

  def initialize(desplazamiento, texto_a_cifrar)
    if desplazamiento.nil? || texto_a_cifrar.nil?
      raise ParametrosInvalidosError
    end
    @desplazamiento = desplazamiento.to_i
    @texto_a_cifrar = texto_a_cifrar
  end

  def cifrar()
    texto_cifrado = ""
    @texto_a_cifrar.each_char do | caracter | 
      texto_cifrado += (caracter.ord + @desplazamiento).chr
    end
    texto_cifrado
  end

end