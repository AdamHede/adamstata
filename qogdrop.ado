program define qogdrop
	gen mark = .
	foreach num of numlist `0' {
		recode mark (.=1) if cnt == `num'
	}
	drop if mark != 1
	drop mark
codebook cnt, t(211)
end
