# ...

        # builds and returns a WordSteps instance "containing" all words with
        # length in length_range from the file file_name
        def self.load_from_file(file_name, length_range)
            word_steps = new
            IO.foreach(file_name) do |line|
                # only load words with correct length
                if length_range === (word = line.strip).length
                    word_steps.add_word(word.downcase)
                end
            end
            word_steps
        end
    end

    # ...