let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
map! <S-Insert> <MiddleMouse>
vmap  "*d
nmap <silent> \cv <Plug>VCSVimDiff
nmap <silent> \cu <Plug>VCSUpdate
nmap <silent> \cU <Plug>VCSUnlock
nmap <silent> \cs <Plug>VCSStatus
nmap <silent> \cr <Plug>VCSReview
nmap <silent> \cq <Plug>VCSRevert
nmap <silent> \cn <Plug>VCSAnnotate
nmap <silent> \cN <Plug>VCSSplitAnnotate
nmap <silent> \cl <Plug>VCSLog
nmap <silent> \cL <Plug>VCSLock
nmap <silent> \ci <Plug>VCSInfo
nmap <silent> \cg <Plug>VCSGotoOriginal
nmap <silent> \cG <Plug>VCSClearAndGotoOriginal
nmap <silent> \cd <Plug>VCSDiff
nmap <silent> \cD <Plug>VCSDelete
nmap <silent> \cc <Plug>VCSCommit
nmap <silent> \ca <Plug>VCSAdd
nmap gx <Plug>NetrwBrowseX
nnoremap <silent> <Plug>VCSVimDiff :VCSVimDiff
nnoremap <silent> <Plug>VCSUpdate :VCSUpdate
nnoremap <silent> <Plug>VCSUnlock :VCSUnlock
nnoremap <silent> <Plug>VCSStatus :VCSStatus
nnoremap <silent> <Plug>VCSSplitAnnotate :VCSAnnotate!
nnoremap <silent> <Plug>VCSReview :VCSReview
nnoremap <silent> <Plug>VCSRevert :VCSRevert
nnoremap <silent> <Plug>VCSLog :VCSLog
nnoremap <silent> <Plug>VCSLock :VCSLock
nnoremap <silent> <Plug>VCSInfo :VCSInfo
nnoremap <silent> <Plug>VCSClearAndGotoOriginal :VCSGotoOriginal!
nnoremap <silent> <Plug>VCSGotoOriginal :VCSGotoOriginal
nnoremap <silent> <Plug>VCSDiff :VCSDiff
nnoremap <silent> <Plug>VCSDelete :VCSDelete
nnoremap <silent> <Plug>VCSCommit :VCSCommit
nnoremap <silent> <Plug>VCSAnnotate :VCSAnnotate
nnoremap <silent> <Plug>VCSAdd :VCSAdd
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#NetBrowseX(expand("<cWORD>"),0)
vmap <C-Del> "*d
vmap <S-Del> "*d
vmap <C-Insert> "*y
map <S-Insert> <MiddleMouse>
iabbr ZOUT Z_out
iabbr ZIN Z_in
iabbr XC X_C
iabbr VS V_S
iabbr VRS V_RS
iabbr VRG V_RG
iabbr VRD V_RD
iabbr VR2 V_R2
iabbr VR1 V_R1
iabbr VP V_P
iabbr VPP V_pp
iabbr VOUT V_out
iabbr VOOT V_OOT
iabbr VL V_L
iabbr VIN V_in
iabbr VID V_id
iabbr VG V_G
iabbr VGS V_GS
iabbr VGG V_GG
iabbr VF V_F
iabbr vf v_f
iabbr VF4 V_F4
iabbr VF3 V_F3
iabbr VF2 V_F2
iabbr VF1 V_F1
iabbr VE V_E
iabbr ve v_e
iabbr VEQ V_EQ
iabbr VEE V_EE
iabbr VEC V_EC
iabbr VEB V_EB
iabbr VE3 V_E3
iabbr VE2 V_E2
iabbr VE1 V_E1
iabbr VD V_D
iabbr Vd V_d
iabbr VDS V_DS
iabbr VDSQ V_DSQ
iabbr VDSPO V_DSPO
iabbr VDQ V_DQ
iabbr VDD V_DD
iabbr VC V_C
iabbr vc v_c
iabbr VCQ V_CQ
iabbr VCE V_CE
iabbr vce v_ce
iabbr VCEQ V_CEQ
iabbr vceq v_ceq
iabbr VCC V_CC
iabbr VC3 V_C3
iabbr VC2 V_C2
iabbr VC1 V_C1
iabbr VB V_B
iabbr vb v_b
iabbr VBE V_BE
iabbr VBB V_BB
iabbr VB3 V_B3
iabbr VB2 V_B2
iabbr VB1 V_B1
iabbr RS R_S
iabbr ROUT R_out
iabbr Ro R_o
iabbr RoF R_o_F
iabbr RL R_L
iabbr RIN R_in
iabbr RiF R_i_F
iabbr RG R_G
iabbr RF R_F
iabbr RE R_E
iabbr rE r_E
iabbr rE3 r_E3
iabbr rE2 r_E2
iabbr rE1 r_E1
iabbr RD R_D
iabbr RDC R_DC
iabbr RC R_C
iabbr rC r_C
iabbr RC3 R_C3
iabbr rC3 r_C3
iabbr RC2 R_C2
iabbr rC2 r_C2
iabbr RC1 R_C1
iabbr rC1 r_C1
iabbr RB R_B
iabbr RAC R_AC
iabbr QPT Q_PT
iabbr POUT P_out
iabbr PL P_L
iabbr PIN P_in
iabbr PDC P_DC
iabbr PAC P_AC
iabbr IS I_S
iabbr IL I_L
iabbr IG I_G
iabbr IEQ I_EQ
iabbr IE I_E
iabbr ie i_e
iabbr IEE I_EE
iabbr IE3 I_E3
iabbr ie3 i_e3
iabbr IE2 I_E2
iabbr ie2 i_e2
iabbr IE1 I_E1
iabbr ie1 i_e1
iabbr IDSS I_DSS
iabbr IDQ I_DQ
iabbr ID I_D
iabbr ICQ I_CQ
iabbr IC I_C
iabbr ic i_c
iabbr ICC I_CC
iabbr ic3 i_c3
iabbr ic2 i_c2
iabbr ic1 i_c1
iabbr IB I_B
iabbr ib i_b
iabbr Ibias I_bias
iabbr ib3 i_b3
iabbr ib2 i_b2
iabbr ib1 i_b1
iabbr IAVE I_ave
iabbr Iave I_ave
iabbr iave i_ave
iabbr hFE h_FE
iabbr hfe h_fe
iabbr hfe3 h_fe3
iabbr hfe2 h_fe2
iabbr hfe1 h_fe1
iabbr hFC h_FC
iabbr hfc h_fc
iabbr hFC3 h_FC3
iabbr hfc3 h_fc3
iabbr hFC2 h_FC2
iabbr hfc2 h_fc2
iabbr hFC1 h_FC1
iabbr hfc1 h_fc1
iabbr hFB h_FB
iabbr hfb h_fb
iabbr fo f_o
iabbr fF f_F
iabbr fe f_e
iabbr fe4 f_e4
iabbr fe3 f_e3
iabbr fe2 f_e2
iabbr fe1 f_e1
iabbr fc f_c
iabbr fc4 f_c4
iabbr fc3 f_c3
iabbr fc2 f_c2
iabbr fc1 f_c1
iabbr fb f_b
iabbr fb4 f_b4
iabbr fb3 f_b3
iabbr fb2 f_b2
iabbr fb1 f_b1
iabbr CE C_E
iabbr CC C_C
iabbr CB C_B
iabbr BETADC BETA_DC
iabbr BETAdc BETA_DC
iabbr BETAAC BETA_AC
iabbr BETAac BETA_AC
iabbr BETA4 BETA_4
iabbr BETA3 BETA_3
iabbr BETA2 BETA_2
iabbr BETA1 BETA_1
iabbr Avt A_v(total)
iabbr AVOL A_v(OL)
iabbr AvOL A_v(OL)
iabbr AVCL A_v(CL)
iabbr AvCL A_v(CL)
iabbr AV A_V
iabbr Av A_v
iabbr Av3 A_v3
iabbr Av2 A_v2
iabbr Av1 A_v1
iabbr Apt A_p(total)
iabbr AP A_P
iabbr Ap A_p
iabbr Ap3 A_p3
iabbr Ap2 A_p2
iabbr Ap1 A_p1
iabbr AOL A_OL
iabbr Ait A_i(total)
iabbr AI A_I
iabbr Ai A_i
iabbr Ai3 A_i3
iabbr Ai2 A_i2
iabbr Ai1 A_i1
iabbr AF A_F
iabbr VOUTCM V_out_CM
iabbr fL f_L
iabbr fH f_H
iabbr VINCM V_in_CM
iabbr ADIFF A_DIFF
iabbr ACM A_CM
iabbr ACL A_CL
iabbr #c //**
iabbr #s //***********************************************************************
iabbr #e ************************************************************************/
iabbr #b /************************************************************************
iabbr ddate =strftime("%Y-%m-%d") 
iabbr teh the
iabbr loadline load-line 
let &cpo=s:cpo_save
unlet s:cpo_save
set autoindent
set autowrite
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set history=50
set ignorecase
set printoptions=paper:letter
set ruler
set shiftwidth=4
set showmatch
set smartcase
set softtabstop=4
set spellfile=M:\\Aps\\GVimPortable\\App\\vim\\vim71\\spell\\ESET.ascii.add
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabstop=4
set termencoding=utf-8
set textwidth=150
set updatecount=0
set viminfo='20,\"50
set window=55
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd M:\Proj\MPLAB\code
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 i2c.c
badd +4 prototypes.h
badd +10 config.h
badd +1 define_hw.h
badd +1 define_math.h
args prototypes.h
edit prototypes.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 27 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 27 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
exe '4resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 77 + 77) / 155)
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
set linebreak
setlocal linebreak
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
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=M:\\Aps\\GVimPortable\\App\\vim\\vim71\\spell\\ESET.ascii.add
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 020l
wincmd w
argglobal
edit config.h
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
set linebreak
setlocal linebreak
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
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=M:\\Aps\\GVimPortable\\App\\vim\\vim71\\spell\\ESET.ascii.add
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 12 - ((11 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
12
normal! 014l
wincmd w
argglobal
edit define_math.h
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
set linebreak
setlocal linebreak
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
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=M:\\Aps\\GVimPortable\\App\\vim\\vim71\\spell\\ESET.ascii.add
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 33 - ((23 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
33
normal! 020l
wincmd w
argglobal
edit define_hw.h
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal comments=s1:/*,mb:*,ex:*/,://,b:#,:%,:XCOMM,n:>,fb:-
setlocal commentstring=/*%s*/
setlocal complete=.,w,b,u,t,i
setlocal completefunc=
setlocal nocopyindent
setlocal nocursorcolumn
setlocal nocursorline
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'cpp'
setlocal filetype=cpp
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=tcq
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal grepprg=
setlocal iminsert=2
setlocal imsearch=2
setlocal include=
setlocal includeexpr=
setlocal indentexpr=
setlocal indentkeys=0{,0},:,0#,!^F,o,O,e
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255
setlocal keymap=
setlocal keywordprg=
set linebreak
setlocal linebreak
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
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal shiftwidth=4
setlocal noshortname
setlocal nosmartindent
setlocal softtabstop=4
set spell
setlocal spell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=M:\\Aps\\GVimPortable\\App\\vim\\vim71\\spell\\ESET.ascii.add
setlocal spelllang=en
setlocal statusline=
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'cpp'
setlocal syntax=cpp
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 105 - ((22 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
105
normal! 048l
wincmd w
4wincmd w
exe '1resize ' . ((&lines * 27 + 28) / 56)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 27 + 28) / 56)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
exe '4resize ' . ((&lines * 26 + 28) / 56)
exe 'vert 4resize ' . ((&columns * 77 + 77) / 155)
tabnext 1
if exists('s:wipebuf')
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToO
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . s:sx
endif
let &so = s:so_save | let &siso = s:siso_save
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
