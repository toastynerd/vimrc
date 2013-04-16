:set nu
:set ts=2
inoremap {      {}<Left>
inoremap {<CR>  {<CR>}<Esc>O
inoremap {{     {
inoremap {}     {}
inoremap <expr> }	 strpart(getline('.'),col('.')-1,1) == "}" ? "\<Right>" : "}"

inoremap        (  ()<Left>
inoremap <expr> )  strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"

inoremap				<	  <><left>
inoremap <expr>	>	 strpart(getline('.'), col('.')-1,1) == ">" ? "\<Right>" : ">"

inoremap				[   []<left>
inoremap <expr> ]		strpart(getline('.'), col('.')-1,1) == "]" ? "\<Right>" : "]"

inoremap "				""<Left>

inoremap <%  		<%%><Left><Left>
inoremap <expr> % 	strpart(getline('.'), col('.')-1,1) == "%" ? "\<Right>" : "%>"
