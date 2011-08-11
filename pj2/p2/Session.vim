let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <S-Tab> =BackwardsSnippet()
inoremap <C-Tab> 	
imap <silent> <expr> <F5> (pumvisible() ? "\<Plug>LookupFileCE" : "")."\\<Plug>LookupFile"
inoremap <Plug>LookupFileCE 
imap <silent> <Plug>IMAP_JumpBack =IMAP_Jumpfunc('b', 0)
imap <silent> <Plug>IMAP_JumpForward =IMAP_Jumpfunc('', 0)
inoremap <silent> <Plug>NERDCommenterInInsert  <BS>:call NERDComment(0, "insert")
noremap <silent>  :FufTagWithCursorWord! 
vnoremap <silent>  :call RangeCommentLine()
nnoremap <silent>  :call CommentLine()
onoremap <silent>  :call CommentLine()
noremap  h
snoremap <silent> 	 i<Right>=TriggerSnippet()
noremap <NL> j
noremap  k
noremap  l
nmap  :BottomExplorerWindow
nmap  :FirstExplorerWindow
snoremap  b<BS>
xnoremap <silent>  :call RangeUnCommentLine()
nnoremap <silent>  :call UnCommentLine()
onoremap <silent>  :call UnCommentLine()
map  a
nmap d :cs find d =expand("<cword>")
nmap i :cs find i ^=expand("<cfile>")$
nmap f :cs find f =expand("<cfile>")
nmap e :cs find e =expand("<cword>")
nmap t :cs find t =expand("<cword>")
nmap c :cs find c =expand("<cword>") :cw 
nmap g :cs find g =expand("<cword>")
nmap s :cs find s =expand("<cword>")
snoremap % b<BS>%
snoremap ' b<BS>'
map <silent> ,mm :ShowMarksPlaceMark
map <silent> ,ma :ShowMarksClearAll
map <silent> ,mh :ShowMarksClearMark
map <silent> ,mo :ShowMarksOn
map <silent> ,mt :ShowMarksToggle
map ,mbt <Plug>TMiniBufExplorer
map ,mbu <Plug>UMiniBufExplorer
map ,mbc <Plug>CMiniBufExplorer
map ,mbe <Plug>MiniBufExplorer
nmap <silent> ,bv :VSBufExplorer
nmap <silent> ,bs :HSBufExplorer
nmap <silent> ,be :BufExplorer
nmap ,ihn :IHN
nmap ,is :IHS:A
nmap ,ih :IHS
nmap ,ca <Plug>NERDCommenterAltDelims
vmap ,cA <Plug>NERDCommenterAppend
nmap ,cA <Plug>NERDCommenterAppend
vmap ,c$ <Plug>NERDCommenterToEOL
nmap ,c$ <Plug>NERDCommenterToEOL
nmap ,cu <Plug>NERDCommenterUncomment
vmap ,cn <Plug>NERDCommenterNest
nmap ,cn <Plug>NERDCommenterNest
vmap ,cb <Plug>NERDCommenterAlignBoth
nmap ,cb <Plug>NERDCommenterAlignBoth
vmap ,cl <Plug>NERDCommenterAlignLeft
nmap ,cl <Plug>NERDCommenterAlignLeft
vmap ,cy <Plug>NERDCommenterYank
nmap ,cy <Plug>NERDCommenterYank
vmap ,ci <Plug>NERDCommenterInvert
nmap ,ci <Plug>NERDCommenterInvert
vmap ,cs <Plug>NERDCommenterSexy
nmap ,cs <Plug>NERDCommenterSexy
vmap ,cm <Plug>NERDCommenterMinimal
nmap ,cm <Plug>NERDCommenterMinimal
vmap ,c  <Plug>NERDCommenterToggle
nmap ,c  <Plug>NERDCommenterToggle
vmap ,cc <Plug>NERDCommenterComment
nmap ,cc <Plug>NERDCommenterComment
vmap ,cu <Plug>NERDCommenterUncomment
onoremap <silent> ,cu :call UnCommentLine()
vnoremap <silent> , cm :call RangeCommentLine()
nnoremap <silent> , cm :call CommentLine()
onoremap <silent> , cm :call CommentLine()
nmap <silent> ,lw :LUWalk        
nmap <silent> ,ll :LUBufs          
nmap <silent> ,lk :LookupFile
nmap <silent> ,fe :Sexplore! 
map <silent> ,ee :call SwitchToBuf("~/.vimrc")
map <silent> ,ss :source ~/.vimrc
map Q gq
vmap S <Plug>VSurround
snoremap U b<BS>U
snoremap \ b<BS>\
snoremap ^ b<BS>^
snoremap ` b<BS>`
nmap cs <Plug>Csurround
nmap ds <Plug>Dsurround
nmap gx <Plug>NetrwBrowseX
map <silent> mm <Plug>Vm_toggle_sign 
nmap <silent> mk :mks!  
vmap s <Plug>Vsurround
nmap <silent> wm :WMToggle 
nmap ySS <Plug>YSsurround
nmap ySs <Plug>YSsurround
nmap yss <Plug>Yssurround
nmap yS <Plug>YSurround
nmap ys <Plug>Ysurround
snoremap <Left> bi
snoremap <Right> a
snoremap <BS> b<BS>
snoremap <silent> <S-Tab> i<Right>=BackwardsSnippet()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetrwBrowseX(expand("<cWORD>"),0)
map <S-F2> <Plug>Vm_goto_prev_sign
map <F2> <Plug>Vm_goto_next_sign
map <C-F2> <Plug>Vm_toggle_sign
noremap <C-Right> l
noremap <C-Left> h
noremap <C-Up> k
noremap <C-Down> j
nmap <silent> <F5> <Plug>LookupFile
vmap <silent> <Plug>IMAP_JumpBack `<i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpBack "_<Del>i=IMAP_Jumpfunc('b', 0)
vmap <silent> <Plug>IMAP_DeleteAndJumpForward "_<Del>i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>IMAP_JumpBack i=IMAP_Jumpfunc('b', 0)
nmap <silent> <Plug>IMAP_JumpForward i=IMAP_Jumpfunc('', 0)
nmap <silent> <Plug>NERDCommenterAppend :call NERDComment(0, "append")
nnoremap <silent> <Plug>NERDCommenterToEOL :call NERDComment(0, "toEOL")
vnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(1, "uncomment")
nnoremap <silent> <Plug>NERDCommenterUncomment :call NERDComment(0, "uncomment")
vnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(1, "nested")
nnoremap <silent> <Plug>NERDCommenterNest :call NERDComment(0, "nested")
vnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(1, "alignBoth")
nnoremap <silent> <Plug>NERDCommenterAlignBoth :call NERDComment(0, "alignBoth")
vnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(1, "alignLeft")
nnoremap <silent> <Plug>NERDCommenterAlignLeft :call NERDComment(0, "alignLeft")
vmap <silent> <Plug>NERDCommenterYank :call NERDComment(1, "yank")
nmap <silent> <Plug>NERDCommenterYank :call NERDComment(0, "yank")
vnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(1, "invert")
nnoremap <silent> <Plug>NERDCommenterInvert :call NERDComment(0, "invert")
vnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(1, "sexy")
nnoremap <silent> <Plug>NERDCommenterSexy :call NERDComment(0, "sexy")
vnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(1, "minimal")
nnoremap <silent> <Plug>NERDCommenterMinimal :call NERDComment(0, "minimal")
vnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(1, "toggle")
nnoremap <silent> <Plug>NERDCommenterToggle :call NERDComment(0, "toggle")
vnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(1, "norm")
nnoremap <silent> <Plug>NERDCommenterComment :call NERDComment(0, "norm")
map <F10> :w 
nnoremap <silent> <F3> :Grep
nnoremap <silent> <F11> :A
nmap <F4> :cw
nmap <F7> :cp
nmap <F8> :cn 
map <silent> <F9> :Tlist 
imap S <Plug>ISurround
imap s <Plug>Isurround
inoremap <silent> 	 =TriggerSnippet()
imap <NL> <Plug>IMAP_JumpForward
inoremap <silent> 	 =ShowAvailableSnips()
imap  <Plug>Isurround
imap  =CtrlXPP()
inoremap  =GetCloseTag()
imap ,ihn :IHN
imap ,is :IHS:A
imap ,ih :IHS
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set backup
set backupdir=~/tmp
set balloonexpr=BalloonDeclaration()
set cindent
set cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,:1s)}
set completeopt=longest,menu
set cscopequickfix=s-,c-,d-,i-,t-,e-
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set hlsearch
set incsearch
set mouse=a
set pastetoggle=<F1>
set path=.,/usr/include,,,../,/usr/local/include*,~/workspace/avcp/trunk/**,,
set printoptions=paper:letter
set ruler
set runtimepath=~/.vim,/var/lib/vim/addons,/usr/share/vim/vimfiles,/usr/share/vim/vim72,/usr/share/vim/vimfiles/after,/var/lib/vim/addons/after,~/.vim/after
set shiftwidth=2
set softtabstop=2
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Dropbox/src/webapp/pj2/p2
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +0 sort.rb
args sort.rb
edit sort.rb
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
nnoremap <buffer> <silent> g} :exe        "ptjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent> } :exe          "ptag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g] :exe      "stselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe        "stjump =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent> ] :exe v:count1."stag =RubyCursorIdentifier()"
nnoremap <buffer> <silent>  :exe  v:count1."tag =RubyCursorIdentifier()"
vnoremap <buffer> ;` `>a``<i`
vnoremap <buffer> ;" `>a"`<i"
vnoremap <buffer> ;{ `>a}`<i{
vnoremap <buffer> ;( `>a)`<i(
vnoremap <buffer> ;[ `>a]`<i[
inoremap <buffer> <silent> ­ =EchoFuncP()
inoremap <buffer> <silent> ½ =EchoFuncN()
nnoremap <buffer> <silent> g] :exe       "tselect =RubyCursorIdentifier()"
nnoremap <buffer> <silent> g :exe         "tjump =RubyCursorIdentifier()"
inoremap <buffer> 	 =CodeComplete()=SwitchRegion()
inoremap <buffer> <silent> ( (=EchoFunc()
inoremap <buffer> <silent> ) :echo)
inoremap <buffer> ;com  <=> 
inoremap <buffer> ;h  => 
inoremap <buffer> ;ase =IMAP_PutTextWithMovement('assert_send(<+ send array (send array[1] to [0] with [x] as args; exp true). [, message] +>)')
inoremap <buffer> ;ath =IMAP_PutTextWithMovement('assert_throws(<+ expected symbol [, message] +>) { <+ block +> }')
inoremap <buffer> ;aop =IMAP_PutTextWithMovement('assert_operator(<+ obj1 +>, <+ operator +>, <+ obj2 [, message] +>)')
inoremap <buffer> ;ans =IMAP_PutTextWithMovement('assert_not_same(<+ expected +>, <+ actual [, message] +>)')
inoremap <buffer> ;asa =IMAP_PutTextWithMovement('assert_same(<+ expected +>, <+ actual [, message] +>)')
inoremap <buffer> ;anm =IMAP_PutTextWithMovement('assert_no_match(/<+ regexp +>/<+ flags +>, <+ string [, message] +>)')
inoremap <buffer> ;ama =IMAP_PutTextWithMovement('assert_match(/<+ regexp +>/<+ flags +>, <+ string [, message] +>)')
inoremap <buffer> ;art =IMAP_PutTextWithMovement('assert_respond_to(<+ object +>, <+ resp. to this message [, message] +>)')
inoremap <buffer> ;ako =IMAP_PutTextWithMovement('assert_kind_of(<+ class +>, <+ object to compare [, message] +>)')
inoremap <buffer> ;aio =IMAP_PutTextWithMovement('assert_instance_of(<+ class +>, <+ object to compare [, message] +>)')
inoremap <buffer> ;anr =IMAP_PutTextWithMovement('assert_nothing_raised(<+ exception +>) { <+ block +> }')
inoremap <buffer> ;ara =IMAP_PutTextWithMovement('assert_raise(<+ exception +>) { <+ block +> }')
inoremap <buffer> ;aid =IMAP_PutTextWithMovement('assert_in_delta(<+ expected float +>, <+ actual float +>, <+ delta [, message] +>)')
inoremap <buffer> ;ane =IMAP_PutTextWithMovement('assert_not_equal(<+ expected +>, <+ actual [, message] +>)')
inoremap <buffer> ;aeq =IMAP_PutTextWithMovement('assert_equal(<+ expected +>, <+ actual [, message] +>)')
inoremap <buffer> ;ann =IMAP_PutTextWithMovement('assert_not_nil(<+ object [, message] +>)')
inoremap <buffer> ;ani =IMAP_PutTextWithMovement('assert_nil(<+ object [, message] +>)')
inoremap <buffer> ;ass =IMAP_PutTextWithMovement('assert(<+ boolean condition [, message] +>)')
inoremap <buffer> ;deft =IMAP_PutTextWithMovement("def test_<+ case name +>\nend")
inoremap <buffer> ;tc =IMAP_PutTextWithMovement("require \"test/unit\"\nrequire \"<+ lib file name +>\"\n\nclass Test<+ NameOfTestCases +> < Test::Unit:TestCase\ndef test_<+ test case name +>\n<++>\nend\nend")
inoremap <buffer> ;gsub =IMAP_PutTextWithMovement("gsub(/<+ pattern +>/) {|<+ match +>| <+ block +> }")
inoremap <buffer> ;sub =IMAP_PutTextWithMovement("sub(/<+ pattern +>/) {|<+ match +>| <+ block +> }")
inoremap <buffer> ;sel =IMAP_PutTextWithMovement("select {|<+ element +>| <+ block +> }")
inoremap <buffer> ;rej =IMAP_PutTextWithMovement("reject {|<+ element +>| <+ block +> }")
inoremap <buffer> ;par =IMAP_PutTextWithMovement("partition {|<+ element +>| <+ block +> }")
inoremap <buffer> ;min =IMAP_PutTextWithMovement("min {|<+ element1 +>, <+ element2 +>| <+ block +> }")
inoremap <buffer> ;max =IMAP_PutTextWithMovement("max {|<+ element1 +>, <+ element2 +>| <+ block +> }")
inoremap <buffer> ;grep =IMAP_PutTextWithMovement("grep(/<+ pattern +>/) { |<+ match +>| <+ block +> }")
inoremap <buffer> ;fina =IMAP_PutTextWithMovement("find_all { |<+ element +>| <+ block +> }")
inoremap <buffer> ;fin =IMAP_PutTextWithMovement("find { |<+ element +>| <+ block +> }")
inoremap <buffer> ;fet =IMAP_PutTextWithMovement("fetch(<+ name +>) { |<+ key +>| <+ block +> }")
inoremap <buffer> ;detprc =IMAP_PutTextWithMovement("detect(<+ proc/lambda +>) { |<+ obj +>| <+ block +> }")
inoremap <buffer> ;det =IMAP_PutTextWithMovement("detect { |<+ obj +>| <+ block +> }")
inoremap <buffer> ;col! =IMAP_PutTextWithMovement("collect! { |<+ obj +>| <+ block +> }")
inoremap <buffer> ;col =IMAP_PutTextWithMovement("collect { |<+ obj +>| <+ block +> }")
inoremap <buffer> ;cfy =IMAP_PutTextWithMovement("classify {|<+ element +>| <+ condition +> }")
inoremap <buffer> ;any =IMAP_PutTextWithMovement("any? {|<+ element +>| <+ condition +> }")
inoremap <buffer> ;all =IMAP_PutTextWithMovement("all? {|<+ element +>| <+ condition +> }")
inoremap <buffer> ;sorb =IMAP_PutTextWithMovement("sort_by { |<+ arg +>| <+ block +> }")
inoremap <buffer> ;sor =IMAP_PutTextWithMovement("sort {|<+ el1 +>, <+ el2 +>| <+el2 +> <=> <+ el1 +> }")
inoremap <buffer> ;open =IMAP_PutTextWithMovement("open(\"<+ path or url +>\", \"<+ rw +>\") { |io| <+ block +> }")
inoremap <buffer> ;file =IMAP_PutTextWithMovement("File.foreach(\"<+ dirname +>\") { |file| <+ block +> }")
inoremap <buffer> ;dirg =IMAP_PutTextWithMovement("Dir.glob(\"<+ pattern +>\") { |file| <+ block +> }")
inoremap <buffer> ;inji =IMAP_PutTextWithMovement('inject(<+ initial +>) { |<+ accumulator +>, <+ object +>| <+ block +> }')
inoremap <buffer> ;inj0 =IMAP_PutTextWithMovement('inject(0) { |<+ accumulator +>, <+ object +>| <+ block +> }')
inoremap <buffer> ;inj =IMAP_PutTextWithMovement('inject { |<+ accumulator +>, <+ object +>| <+ block +> }')
inoremap <buffer> ;mapwi =IMAP_PutTextWithMovement('map_with_index { |<+ arg +>, <+ index +>| <+ block +> }')
inoremap <buffer> ;map =IMAP_PutTextWithMovement('map { |<+ arg +>| <+ block +> }')
inoremap <buffer> ;eawi =IMAP_PutTextWithMovement("each_with_index {|<+ record +>, <+ index +>| <+ block +> }")
inoremap <buffer> ;easli =IMAP_PutTextWithMovement("each_slice(<+ slice size +>) {|<+ slice +>| <+ block +> }")
inoremap <buffer> ;eacon =IMAP_PutTextWithMovement("each_cons(<+ window size +>) {|<+ cons +>| <+ block +> }")
inoremap <buffer> ;eac =IMAP_PutTextWithMovement("each_char {|<+ char +>| <+ block +> }")
inoremap <buffer> ;eab =IMAP_PutTextWithMovement("each_byte {|<+ byte +>| <+ block +> }")
inoremap <buffer> ;eap =IMAP_PutTextWithMovement("each_pair {|<+ name +>, <+ value +>| <+ block +> }")
inoremap <buffer> ;reve =IMAP_PutTextWithMovement("reverse_each {|<+ e +>| <+ block +> }")
inoremap <buffer> ;eav =IMAP_PutTextWithMovement("each_value {|<+ value +>| <+ block +> }")
inoremap <buffer> ;eal =IMAP_PutTextWithMovement("each_line {|<+ line +>| <+ block +> }")
inoremap <buffer> ;eak =IMAP_PutTextWithMovement("each_key {|<+ key +>| <+ block +> }")
inoremap <buffer> ;eai =IMAP_PutTextWithMovement("each_index {|<+ index +>| <+ block +> }")
inoremap <buffer> ;ea =IMAP_PutTextWithMovement("each {|<+ record +>| <+ block +> }")
inoremap <buffer> ;upt =IMAP_PutTextWithMovement('upto(<+ ubound +>) { |<+ arg +>| <+ block +> }')
inoremap <buffer> ;tim =IMAP_PutTextWithMovement('times { |<+ arg +>| <+ block +> }')
inoremap <buffer> ;ste =IMAP_PutTextWithMovement('step(<+ count +>) { |<+ arg +>| <+ block +> }')
inoremap <buffer> ;dow =IMAP_PutTextWithMovement('downto(<+ lbound +>) { |<+ arg +>| <+ block +> }')
inoremap <buffer> ;clstr =IMAP_PutTextWithMovement("class <+ class name +> < Struct.new(:<+ arg_to_constructor +>)\ndef initialize(*args)\nsuper\nend\nend")
inoremap <buffer> ;subcl =IMAP_PutTextWithMovement("class <+ class name +> < <+ parent +>\nend")
inoremap <buffer> ;cli =IMAP_PutTextWithMovement("class <+class name +>\ndef initialize\n<++>\nend\nend")
inoremap <buffer> ;cl =IMAP_PutTextWithMovement("class <+ class name +>\nend")
inoremap <buffer> ;%W =IMAP_PutTextWithMovement("%W/<+ words in array (substituted) +>/")
inoremap <buffer> ;%w =IMAP_PutTextWithMovement("%w/<+ words in array (not substituted) +>/")
inoremap <buffer> ;int =IMAP_PutTextWithMovement("#{<+ string to substitute +>}")
inoremap <buffer> ;dqs =IMAP_PutTextWithMovement("%Q/<+ double quoted string +>/")
inoremap <buffer> ;sqs =IMAP_PutTextWithMovement("%q/<+ single quoted string +>/")
inoremap <buffer> ;end =IMAP_PutTextWithMovement("END {\n<+ code to run after execution finished +>\n}")
inoremap <buffer> ;beg =IMAP_PutTextWithMovement("BEGIN {\n<+ code to run while file loading +>\n}")
inoremap <buffer> ;lam =IMAP_PutTextWithMovement("lambda { <+ block +> }")
inoremap <buffer> ;procnew =IMAP_PutTextWithMovement("Proc.new { <+ block +> }")
inoremap <buffer> ;ali =IMAP_PutTextWithMovement("alias <+ new +> <+ old +>")
inoremap <buffer> ;scan =IMAP_PutTextWithMovement("scan(/<+ pattern +>/) {|<+ match +>| <+ block +> }")
inoremap <buffer> ;unl =IMAP_PutTextWithMovement("unless <+ boolean exp +>\n<+ block +>\nend")
inoremap <buffer> ;elsif =IMAP_PutTextWithMovement("elsif <+ boolean exp +>\n<+ block +>")
inoremap <buffer> ;tif =IMAP_PutTextWithMovement("<+ boolean exp +> ? <+ exp if true +> : <+ exp if false +>")
inoremap <buffer> ;if =IMAP_PutTextWithMovement("if <+ boolean exp +>\n<+ block +>\nend")
inoremap <buffer> ;do =IMAP_PutTextWithMovement("do |<++>|\n<++>\nend")
inoremap <buffer> ;defs =IMAP_PutTextWithMovement("def self.<+ class method name +>\nend")
inoremap <buffer> ;defi =IMAP_PutTextWithMovement("def initialize\n<++>\nend")
inoremap <buffer> ;def =IMAP_PutTextWithMovement("def <+ defname +>\nend")
inoremap <buffer> ;con =IMAP_PutTextWithMovement("concat( <+ other_array +> )")
inoremap <buffer> ;cast =IMAP_PutTextWithMovement("case <+ target +>\nwhen <+ comparison +>\n<+ action +>\nelse\n<+ action +>\nend")
inoremap <buffer> ;cas =IMAP_PutTextWithMovement("case\nwhen <+ condition +>\n<+ action +>\nelse\n<+ action +>\nend")
inoremap <buffer> ;bldo =IMAP_PutTextWithMovement("do |<+ arg +>|\n <+ block +>\nend")
inoremap <buffer> ;bl =IMAP_PutTextWithMovement("{ |<+ arg +>| <+ block +> }")
inoremap <buffer> ;atw =IMAP_PutTextWithMovement("attr_writer :<+ writer name +>")
inoremap <buffer> ;atr =IMAP_PutTextWithMovement("attr_reader :<+ reader name +>")
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions={0,1s,t0,n-2,p2s,(03s,=.5s,>1s,:1s)}
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=:#
setlocal commentstring=#\ %s
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=^\\s*#\\s*define
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'ruby'
setlocal filetype=ruby
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
set foldlevel=100
setlocal foldlevel=100
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=^\\s*\\<\\(load\\|w*require\\)\\>
setlocal includeexpr=substitute(substitute(v:fname,'::','/','g'),'$','.rb','')
setlocal indentexpr=GetRubyIndent()
setlocal indentkeys=0{,0},0),0],!^F,o,O,e,=end,=elsif,=when,=ensure,=rescue,==begin,==end
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keywordprg=ri
setlocal nolinebreak
setlocal nolisp
setlocal nolist
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal modeline
setlocal modifiable
setlocal nrformats=octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=rubycomplete#Complete
setlocal path=.,NOTE:\ Gem.all_load_paths\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_load_paths\ called\ from\ -e:1.\
NOTE:\ Gem.all_partials\ is\ deprecated\ with\ no\ replacement.\ It\ will\ be\ removed\ on\ or\ after\ 2011-10-01.\
Gem.all_partials\ called\ from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:260.\
/usr/local/lib/site_ruby/1.8/rubygems.rb:425:in\ `each_load_path':\ undefined\ method\ `specifications'\ for\ \"/usr/lib/ruby/gems/1.8\":String\ (NoMethodError)\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:423:in\ `each'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:423:in\ `each_load_path'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:260:in\ `_deprecated_all_load_paths'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:259:in\ `each'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems.rb:259:in\ `_deprecated_all_load_paths'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems/deprecate.rb:62:in\ `send'\
\	from\ /usr/local/lib/site_ruby/1.8/rubygems/deprecate.rb:62:in\ `all_load_paths'\
\	from\ -e:1\

setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=2
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=2
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=.rb
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'ruby'
setlocal syntax=ruby
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=0
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
3
normal zo
5
normal zo
9
normal zo
5
normal zo
12
normal zo
15
normal zo
15
normal zo
15
normal zo
12
normal zo
17
normal zo
20
normal zo
21
normal zo
20
normal zo
17
normal zo
21
normal zo
3
normal zo
let s:l = 18 - ((11 * winheight(0) + 11) / 23)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
18
normal! 015l
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
