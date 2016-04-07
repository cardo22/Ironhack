class SimpleQueue
      def initialize
        @storage = Hash.new { |hash, key| hash[key] = [] }
      end
      def insert(priority, data)
        @storage[priority] << data
      end
      def extract_min
        return nil if @storage.empty?
        key, val = *@storage.min
        result = val.shift
        @storage.delete(key) if val.empty?
        return result
      end
    end

    