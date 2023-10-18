class Stack
    def initialize (limit=nil)
        @stack=[]
        @limit=limit
    end

    def push(value)
       
        if @limit.nil?|| @stack.length<@limit
             @stack.push(value)
        else
            raise "Stack Overflow"
        end 
     
    end

    def pop
        @stack.pop
    end

    def peek
       @stack.last
    end

    def size
        @stack.length
    end

    def empty?
        @stack.length == 0
    end
    
    def full?
        @stack.length >= @limit
    end

    # def search(value)
    #     if @stack.include?(value)
    #     result = -1
    #         if @stack.pop == value
    #             return result
    #         else
    #             result += 1
    #         end
    #         result
    #     else
    #         return -1
    #     end
    # end

    def search(value)
        index = @stack.rindex(value)
        if index
          distance = @stack.length - index - 1
          return distance
        else
          return -1
      end
    end

end   


