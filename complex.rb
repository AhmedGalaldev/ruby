@@count=0
class ComplexNumber
    attr_reader :real,:img
    def initialize(real,img)
        @real=real
        @img=img
        
    end

    def +(complex)
        @real+=complex.real
        @img+=complex.img
        @@count+=1
        self
    end
    
    def *(complex)
       
            new_real = @real * complex.real - @img * complex.img
            @img = @img * complex.real+ @real* complex.img
            @real= new_real
            @@count+=1
            self
           
            
    end  
    
    def self.add_bulk(complex_arr)
         complex=ComplexNumber.new(0,0)
         complex_arr.each do |item|
            complex=complex+item
           
         end
         complex  
    end

    def self.bulk_multiply​(complex_arr)
        complex=ComplexNumber.new(1,0)
        complex_arr.each do |item|
            complex=complex*item
           
        end
        complex
    end    

    def self.get_stats()
         puts(@@count)
    
    end
end


complex1=ComplexNumber.new(1,2)
complex2=ComplexNumber.new(3,4)
complex3=complex1+complex2
puts(complex3.real,complex3.img)

complex4=ComplexNumber.new(1,2)
complex5=ComplexNumber.new(3,4)
complex6=complex4*complex5
puts(complex6.real,complex6.img)

arr=[ComplexNumber.new(1,2),ComplexNumber.new(3,4),ComplexNumber.new(5,6)]
sum_arr=ComplexNumber.add_bulk(arr)
puts(sum_arr.real,sum_arr.img)

arr_2=[ComplexNumber.new(1,2),ComplexNumber.new(3,4),ComplexNumber.new(5,6)]
multiply​=ComplexNumber.bulk_multiply​(arr_2)
puts(multiply​.real,multiply​.img)

c=ComplexNumber.get_stats()
puts(c)