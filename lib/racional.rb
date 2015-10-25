require_relative "./gcd" 


class Fraccion
    attr_reader :n, :d

  def initialize(n, d)
    @n, @d = n, d
  end

	def to_s
		
		a=gcd(@n,@d)
		
		if a!=1
			num=@n/a
			den=@d/a
			"#{num}/#{den}"
		else
 		     "#{@n}/#{@d}"
		end
	end


  def +(other)
	dd=@d*other.d
	nn1 = ( dd / @d ) * @n
	nn2 = ( dd / other.d ) * other.n
	num = nn1 + nn2
		a=gcd(num, dd)
		
		if a != 1
			num=num/a
			dd=dd/a
		end
			Fraccion.new(num, dd)
  end 


	def -(other)
		dd=@d*other.d
		nn1 = ( dd / @d ) * @n
		nn2 = ( dd / other.d ) * other.n
		num = nn1 - nn2
			a=gcd(num, dd)
				if a != 1
					num=num/a
					dd=dd/a
				end
				Fraccion.new(num, dd)
				
	end


	def *(other)
   		nn=@n*other.n
		dd=@d*other.d
		a=gcd(nn, dd)
		
			if a!=1
				nn=nn/a
				dd=dd/a
			end
		Fraccion.new(nn, dd)
  	end


	def /(other)
		nn=@n*other.d
		dd=@d*other.n
		a=gcd(nn, dd)
		
			if a!=1
				nn=nn/a
				dd=dd/a
			end
		Fraccion.new(nn, dd)
	end
 
end
