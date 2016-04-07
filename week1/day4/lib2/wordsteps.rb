wordsteps.rb
class WordSteps
        def initialize
            @steps = Hash.new { |h, k| h[k] = [] }
            @words = {}
        end

        # yields all words (as strings) that were added with add_word
        def each_word(&block)
            @words.each_key(&block)
        end

        # add all steps for word (a string) to the steps
        def add_word(word)
            sym = word.to_sym
            wdup = word.dup
            for i in 0...word.length
                wdup[i] = 0
                @steps[wdup] << sym
                wdup[i] = word[i]
            end
            @words[word] = sym # for allow_shorter and each_word
        end

        # yields each possible next step for word (a string) as symbol, some
        # possible steps might be yielded multiple times
        # if allow_shorter is true, word[0..-2].to_sym will also be yielded
        # if available
        # if allow_longer is true, all words that match /#{word}./ will be
        # yielded
        def each_possible_step(word, allow_shorter = false,
                                     allow_longer = false)
            wdup = word.dup
            for i in 0...word.length
                wdup[i] = 0
                if @steps.has_key?(wdup)
                    @steps[wdup].each { |step| yield step }
                end
                wdup[i] = word[i]
            end
            if allow_shorter && @words.has_key?(tmp = word[0..-2])
                yield @words[tmp]
            end
            if allow_longer && @steps.has_key?(tmp = word + "\0")
                @steps[tmp].each { |step| yield step }
            end
        end
