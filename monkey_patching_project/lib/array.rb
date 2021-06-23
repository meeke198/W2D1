# Monkey-Patch Ruby's existing Array class to add your own custom methods
class Array
    def span
        return nil if self.empty?
        self.max - self.min  
    end


    def average
        return nil if self.empty?
        self.sum / (self.length * 1.0)
    end



    def median
        return nil if self.empty?
        sorted = self.sort
        if self.length.odd?
            i = (self.length - 1) / 2
            return sorted[i]
        else
            x = self.length / 2
            return (sorted[x] + sorted[x - 1]) / 2.0
        end
    end

    def counts
        hash = Hash.new(0)
            self.each {|ele| hash[ele] += 1}
        return hash
    end

    def my_count(value)
        hash = Hash.new(0)
            self.each {|ele| hash[ele] += 1}
        if hash.has_key?(value)
            return hash[value]
        else
            return 0
        end
    end

    def my_index(value)
        self.each_with_index do |ele, i|
            if value == ele 
                return i 
            end        
        end
        return nil
    end

    def my_uniq
        hash = Hash.new(0)
        self.each {|ele| hash[ele] += 1}
        return hash.keys
    end


    def my_transpose
        h = self.length 
        w = self[0].length
        result = Array.new(h){Array.new(w)}

        (0...h).each do |row|
            (0...w).each do |col|
                result[row][col] = self[col][row]
            end
        end

        return result
    end


end
