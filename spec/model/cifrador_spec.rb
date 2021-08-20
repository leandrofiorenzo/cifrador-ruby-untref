require_relative '../spec_helper'

describe 'Cifrador' do
  it 'debe lanzar un error si los parametros son invalidos' do
    expect {
      Cifrador.new(3, nil)      
    }.to raise_error(ParametrosInvalidosError)
  end

  it 'debe guardar los parametros pasados, en el estado del objeto' do
    desplazamiento = 3
    texto_a_cifrar = 'hola'
    cifrador = Cifrador.new(desplazamiento, texto_a_cifrar)

    expect(cifrador.desplazamiento).to eq(desplazamiento)
    expect(cifrador.texto_a_cifrar).to eq(texto_a_cifrar)
  end

  it 'debe convertir a entero el parametro de desplazamiento' do
    desplazamiento = '3'
    texto_a_cifrar = 'hola'
    cifrador = Cifrador.new(desplazamiento, texto_a_cifrar)

    expect(cifrador.desplazamiento).to eq(3)
    expect(cifrador.texto_a_cifrar).to eq(texto_a_cifrar)
  end

  it 'debe cifrar un caracter con desplazamiento 1' do
    cifrador = Cifrador.new(1, 'a')
    texto_cifrado = cifrador.cifrar()

    expect(texto_cifrado).to eq('b')
  end

  it 'debe cifrar un caracter con desplazamiento 3' do
    cifrador = Cifrador.new(3, 'a')
    texto_cifrado = cifrador.cifrar()

    expect(texto_cifrado).to eq('d')
  end

  it 'debe cifrar una palabra con desplazamiento 3' do
    cifrador = Cifrador.new(3, 'hola')
    texto_cifrado = cifrador.cifrar()

    expect(texto_cifrado).to eq('krod')
  end
  

end