lemonade_revenue = {
	:monday    => { :revenue => 20, :costs => 5, :feedback => ["Good", "Too sweet"] },
	:tuesday   => { :revenue => 15, :costs => 4, :feedback => ["Meh"] },
	:wednesday => { :revenue => 5,  :costs => 3, :feedback => ["Wow"] },
	:thursday  => { :revenue => 9,  :costs => 3, :feedback => ["Best", "Not sweet"] },
	:friday    => { :revenue => 17,  :costs => 4, :feedback => [] }
}

puts lemonade_revenue[:monday] 
puts lemonade_revenue[:monday].zero?
puts lemonade_revenue[:monday][:revenue]
puts lemonade_revenue[:tuesday][:costs]
puts lemonade_revenue[:monday][:feedback][1]
puts lemonade_revenue[:tuesday][:feedback][0]