#Ejercicio 1

class MiClase
    def de_instancia
        puts 'Método de instancia!'
    end
    def self.de_clase
        puts 'Método de clase!'
    end
end
MiClase.new.de_instancia
MiClase.de_clase


#ejercicio 2


class MiClase
    attr_accessor :name
    def initialize
        @name = name
    end
    def self.saludar
        puts "Hola! Soy la clase #{name}"
    end
end
c = MiClase.new

c.name = 'Nombre Nuevo'
MiClase.saludar
puts c.name


#ejercicio 3


class Vehicle
  def initialize(model, year)
    @model = model
    @year = year
    @start = false
  end

  def engine_start

    @start = true
  end
end

class Car < Vehicle
    @@contador = 0
    def initialize(model, year)
        super
        @@contador += 1
    end

    def engine_start
        super 
        puts 'El motor esta encendido'
    end

    def self.mostrar
        puts @@contador
    end


end




model = ['Ferrari', 'Susuky', 'Fiat']
year = [1950, 2002, 1850]


10.times do
 puts Car.new(model.sample, year.sample) 
end

Car.mostrar

auto = Car.new(model.sample, year.sample)
auto.engine_start


#ejercicio4

class Alumno
          def initialize(nombre, nota1, nota2, nota3, nota4)
            @nombre = nombre
            @nota1 = nota1
            @nota2 = nota2
            @nota3 = nota3
            @nota4 = nota4
          end

        def self.read_file(nombre = 'notas.txt')
            alumnos = []
            data = []
            File.open(nombre, 'r') { |file| data = file.readlines }
            data.each do |alumno|
              alumnos << Alumno.new(*alumno.split(', '))

            end
            alumnos
        end
end

puts Alumno.read_file

#ejercicio5

class Rectangulo

    attr_accessor :largo, :ancho

  def initialize(largo, ancho)
    @largo = largo
    @ancho = ancho
  end

  def lados
   puts @largo
   puts @ancho
  end

  def perimetro
    (@largo*2)*(ancho*2)
  end

  def area
    @largo*@ancho
  end
end

class Cuadrado

    attr_accessor :lado

  def initialize(lado)
    @lado = lado
  end

  def lados
    puts @lado
  end

  def perimetro
    (@lado)*4
  end

  def area
    @lado * 2
  end

end

rec = Rectangulo.new(2, 3)
cua = Cuadrado.new(2)

rec.lados
cua.lados

puts rec.area
puts rec.perimetro

puts cua.area
puts cua.perimetro

