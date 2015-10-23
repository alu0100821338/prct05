require "./gcd.rb" 


class Fraccion

  include Comparable
  attr_reader :n, :d

  def initialize(n,d)
    @n, @d = n, d
  end

  def *(value)
    Fraccion.new(@n * value, @d)
  end

  def -@
    Fraccion.new(-@n, @d)
  end

  def +(other)
	if @d == other.d
	    Fraccion.new(@n + other.n, @d)
	end 
	else
	dd=@d * other.d
	nn1=(dd / @d) * @n
	nn2=(dd / other.d) * other.n
	num=nn1 + nn2
		a=gcd(num, dd)
		if a != 1
			num=num/a
			dd=dd/a
			Fraccion.new(num, dd)
		end
		else
			Fraccion.new(num, dd)
		
  end 

	def -(other)
		if @d == other.d
			Fraccion.new(@n - other.n, @d)
		end
		else
		dd=@d * other.d
		nn1=(dd / @d)* other.n
		nn2=(dd / other.d) * other.n
		num=nn1 - nn2
			a=gcd(num, dd)
				if a != 1
					num=num/a
					dd=dd/a
					Fraccion.new(num, dd)
				end
				else
					Fraccion.new(num, dd)
	end


	def to_s
		a=gcd(@n, @d)
		if a!=1
			@n=@n/a
			@d=@d/a
		end
 		"#{@n}/#{@d}"
	end

	def *(other)
   		nn=@n * other.n
		dd=@d * other.d

		a=gcd(nn, dd)
			if a!=1
				nn=nn/a
				dd=dd/a
			end
		Fraccion.new( nn, dd)
  	end

	def /(other)
		nn=@n * other.d
		dd=@d * other.n
	
		a=gcd(nn, dd)
			if a!=1
				nn=nn/a
				dd=dd/a
			end
		Fraccion.new(nn, dd)
	end
 
 end
