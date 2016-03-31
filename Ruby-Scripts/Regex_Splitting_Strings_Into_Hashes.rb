
class String
    def is_i?
       !!(self =~ /\A[-+]?[0-9]+\z/)
    end
end


def item_quantity_hash(string)

    hash = {}
    arr = string.split(/\s+/)

    if arr[-1].is_i?
         hash[:item] = arr[0..-2].join(' ')
         hash[:quantity] = arr[-1]
    else
         hash[:item] = arr.join(' ')
         hash[:quantity] = nil
    end
    
    hash
end



s = 'm8rial. imperial 54'
#s = "dr. Jay 5f0"

print s.scan(/\A([\w\W]+?)(?:\s+(\d+))?\z/).map { |(i,q)| {:item => i, :quantity => q} }

=begin
def item_quantity_hash(string)

    hash = {}
    arr = string.split(/\s+/)

    if arr[-1].is_i?
         hash[:item] = arr[0..-2].join(' ')
         hash[:quantity] = arr[-1]
    else
         hash[:item] = arr.join(' ')
         hash[:quantity] = nil
    end
    
    print hash
end


item_quantity_hash("dr. Jay 50")
=end