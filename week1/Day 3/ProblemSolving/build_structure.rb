hash = {
	:wat => [0,1, {:wut => [0,1,[0,1,2,3,4,5,6,7,8,9, {:bbq => "Spicy"}]]}], #[0,1,2,3,4,5,6,7,8,9, ["zero", {:bbq => "Baby"} ]}
}
puts hash[:wat][2][:wut][1][9][:bbq] #needs explination