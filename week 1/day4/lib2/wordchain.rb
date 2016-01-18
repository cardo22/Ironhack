# ...

        # tries to find a word chain between word1 and word2 (strings) using
        # all available steps
        # returns the chain as array of symbols or nil, if no chain is found
        # shorter/longer determines if shorter or longer words are allowed in
        # the chain
        def build_word_chain(word1, word2, shorter = false, longer = false)
            # build chain with simple breadth first search
            current = [word1.to_sym]
            pre = { current[0] => nil } # will contain the predecessors
            target = word2.to_sym
            catch(:done) do
                until current.empty?
                    next_step = []
                    current.each do |csym|
                        each_possible_step(csym.to_s, shorter, longer) do |ssym|
                            # have we seen this word before?
                            unless pre.has_key? ssym
                                pre[ssym] = csym
                                throw(:done) if ssym == target
                                next_step << ssym
                            end
                        end
                    end
                    current = next_step
                end
                return nil # no chain found
            end
            # build the chain (in reverse order)
            chain = [target]
            chain << target while target = pre[target]
            chain.reverse
        end

        # ...
