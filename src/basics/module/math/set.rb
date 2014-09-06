module Math
  class Set
    def self.intersect(list1, list2)
      result = []
      list1.each do |x|
        list2.each do |y|
          if x.eql? y
            result.push(x)
          end
        end
      end
      return result
    end

    def self.union(list1, list2)
      return list1 | list2
    end
  end
end
