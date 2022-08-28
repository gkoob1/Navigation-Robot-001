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
set cindent
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
set window=54
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd M:\Proj\MPLAB\code
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 config.h
badd +1 define_math.h
badd +1 defines_hw.h
badd +363 i2c.c
badd +158 define_hw.h
badd +60 interrupts.c
badd +232 koob_thesis.c
badd +1 cinfig.h
badd +12 J:\Proj\MPLAB\code\config.h
badd +11 port_init.c
badd +7 osc_init.c
badd +16 oscillator.c
badd +24 rs232.c
badd +115 spi.c
badd +54 pwm.c
badd +38 qei.c
badd +44 timers.c
badd +1 prototypes.h
badd +652 \Proj\MPLAB\h\p30f6015.h
badd +1236 \Proj\proj.txt
badd +37 interface.c
badd +33 lcd.c
badd +1 xlcd.h
badd +1 xlcd\BusyXLCD.c
badd +1 xlcd\delay.c
badd +1 xlcd\OpenXLCD.c
badd +5 delay.h
badd +1 xlcd\PutsXLCD.c
badd +1 xlcd\ReadAddrXLCD.c
badd +1 xlcd\ReadDataXLCD.c
badd +1 xlcd\setCGRamAddr.c
badd +1 xlcd\setDDRamAddr.c
badd +1 xlcd\WriteCmdXLCD.c
badd +1 xlcd\WriteDataXLCD.c
badd +1 g_xlcd.h
badd +25 g_delay.h
badd +21 glcd\g_BusyXLCD.c
badd +28 glcd\g_delay.c
badd +84 glcd\g_OpenXLCD.c
badd +27 glcd\g_PutsXLCD.c
badd +63 glcd\g_ReadAddrXLCD.c
badd +65 glcd\g_ReadDataXLCD.c
badd +78 glcd\g_setCGRamAddr.c
badd +58 glcd\g_setDDRamAddr.c
badd +52 glcd\g_WriteCmdXLCD.c
badd +72 glcd\g_WriteDataXLCD.c
badd +1 g_BusyXLCD.c
badd +100 g_delay.c
badd +1 g_OpenXLCD.c
badd +1 g_PutsXLCD.c
badd +1 g_ReadAddrXLCD.c
badd +33 g_ReadDataXLCD.c
badd +58 g_setCGRamAddr.c
badd +49 g_setDDRamAddr.c
badd +51 g_WriteCmdXLCD.c
badd +1 g_WriteDataXLCD.c
badd +584 move.c
badd +12 sensors.c
args koob_thesis.c
edit koob_thesis.c
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
4wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 51 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
exe '4resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 4resize ' . ((&columns * 77 + 77) / 155)
exe '5resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 5resize ' . ((&columns * 77 + 77) / 155)
exe '6resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 6resize ' . ((&columns * 77 + 77) / 155)
exe '7resize ' . ((&lines * 45 + 27) / 55)
exe 'vert 7resize ' . ((&columns * 77 + 77) / 155)
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
78
normal zo
104
normal zc
115
normal zo
132
normal zo
166
normal zo
222
normal zo
237
normal zo
166
normal zo
132
normal zo
269
normal zo
269
normal zc
let s:l = 89 - ((33 * winheight(0) + 25) / 51)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
89
normal! 039l
wincmd w
argglobal
edit move.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
60
normal zo
60
normal zo
229
normal zo
359
normal zo
361
normal zo
395
normal zo
395
normal zo
407
normal zo
361
normal zo
359
normal zo
424
normal zo
426
normal zo
432
normal zo
434
normal zo
437
normal zo
460
normal zo
466
normal zo
471
normal zo
483
normal zo
492
normal zo
494
normal zo
496
normal zo
503
normal zo
513
normal zo
496
normal zo
532
normal zo
536
normal zo
543
normal zo
555
normal zo
564
normal zo
532
normal zo
583
normal zo
590
normal zo
600
normal zo
583
normal zo
619
normal zo
621
normal zo
619
normal zo
634
normal zo
636
normal zo
643
normal zo
634
normal zo
656
normal zo
658
normal zo
656
normal zo
670
normal zo
494
normal zo
492
normal zo
677
normal zo
688
normal zo
466
normal zo
694
normal zo
699
normal zo
703
normal zo
699
normal zo
715
normal zo
717
normal zo
723
normal zo
728
normal zo
735
normal zo
741
normal zo
715
normal zo
756
normal zo
761
normal zo
780
normal zo
789
normal zo
793
normal zo
807
normal zo
756
normal zo
819
normal zo
460
normal zo
466
normal zo
471
normal zo
483
normal zo
492
normal zo
494
normal zo
496
normal zo
503
normal zo
513
normal zo
496
normal zo
532
normal zo
536
normal zo
543
normal zo
555
normal zo
564
normal zo
532
normal zo
583
normal zo
590
normal zo
600
normal zo
583
normal zo
619
normal zo
621
normal zo
619
normal zo
634
normal zo
636
normal zo
643
normal zo
634
normal zo
656
normal zo
658
normal zo
656
normal zo
670
normal zo
494
normal zo
492
normal zo
677
normal zo
688
normal zo
466
normal zo
694
normal zo
699
normal zo
703
normal zo
699
normal zo
715
normal zo
717
normal zo
723
normal zo
728
normal zo
735
normal zo
741
normal zo
715
normal zo
756
normal zo
761
normal zo
780
normal zo
789
normal zo
793
normal zo
807
normal zo
756
normal zo
819
normal zo
434
normal zo
466
normal zo
469
normal zo
486
normal zo
498
normal zo
507
normal zo
509
normal zo
511
normal zo
516
normal zo
524
normal zo
511
normal zo
543
normal zo
547
normal zo
543
normal zo
554
normal zo
509
normal zo
558
normal zo
565
normal zo
565
normal zo
565
normal zo
565
normal zo
583
normal zo
588
normal zo
596
normal zo
583
normal zo
613
normal zo
618
normal zo
623
normal zo
625
normal zo
623
normal zo
637
normal zo
565
normal zo
507
normal zo
645
normal zo
466
normal zo
651
normal zo
656
normal zo
660
normal zo
656
normal zo
670
normal zo
673
normal zo
680
normal zo
685
normal zo
693
normal zo
702
normal zo
670
normal zo
710
normal zo
715
normal zo
735
normal zo
745
normal zo
710
normal zo
752
normal zo
432
normal zo
769
normal zo
771
normal zo
777
normal zo
779
normal zo
784
normal zo
779
normal zo
777
normal zo
769
normal zo
424
normal zo
769
normal zo
771
normal zo
777
normal zo
779
normal zo
784
normal zo
779
normal zo
777
normal zo
769
normal zo
let s:l = 121 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
121
normal! 041l
wincmd w
argglobal
edit i2c.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
56
normal zo
56
normal zo
let s:l = 339 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
339
normal! 0
wincmd w
argglobal
edit spi.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
204
normal zo
219
normal zo
220
normal zo
220
normal zo
220
normal zo
220
normal zo
220
normal zo
220
normal zo
220
normal zo
226
normal zo
242
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
244
normal zo
242
normal zo
226
normal zo
219
normal zo
let s:l = 221 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
221
normal! 022l
wincmd w
argglobal
edit qei.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=indent
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 27 - ((12 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 023l
wincmd w
argglobal
edit lcd.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
14
normal zo
52
normal zc
75
normal zo
81
normal zo
75
normal zo
115
normal zo
121
normal zo
154
normal zo
219
normal zo
250
normal zo
259
normal zo
277
normal zo
440
normal zo
154
normal zo
463
normal zo
508
normal zo
514
normal zo
508
normal zo
548
normal zo
550
normal zo
554
normal zo
550
normal zo
548
normal zo
568
normal zo
570
normal zo
574
normal zo
570
normal zo
568
normal zo
588
normal zo
115
normal zo
155
normal zo
220
normal zo
251
normal zo
260
normal zo
278
normal zo
441
normal zo
155
normal zc
463
normal zo
479
normal zo
511
normal zc
535
normal zo
567
normal zo
604
normal zo
622
normal zc
463
normal zo
789
normal zo
834
normal zo
840
normal zo
834
normal zo
874
normal zo
876
normal zo
880
normal zo
876
normal zo
874
normal zo
894
normal zo
896
normal zo
900
normal zo
896
normal zo
894
normal zo
914
normal zo
let s:l = 604 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
604
normal! 02l
wincmd w
argglobal
edit move.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
13
normal zc
60
normal zo
87
normal zo
60
normal zo
128
normal zo
128
normal zc
154
normal zc
177
normal zc
203
normal zc
229
normal zc
252
normal zo
255
normal zo
252
normal zo
274
normal zo
281
normal zo
274
normal zc
326
normal zc
359
normal zo
361
normal zo
363
normal zo
381
normal zo
385
normal zo
381
normal zo
395
normal zo
395
normal zo
407
normal zo
361
normal zo
359
normal zc
424
normal zo
426
normal zo
432
normal zo
434
normal zo
437
normal zo
454
normal zo
460
normal zo
466
normal zo
471
normal zo
483
normal zo
492
normal zo
494
normal zo
496
normal zo
503
normal zo
513
normal zo
496
normal zo
532
normal zo
536
normal zo
543
normal zo
555
normal zo
564
normal zo
532
normal zo
583
normal zo
590
normal zo
600
normal zo
583
normal zo
619
normal zo
621
normal zo
619
normal zo
634
normal zo
636
normal zo
643
normal zo
634
normal zo
656
normal zo
658
normal zo
656
normal zo
670
normal zo
494
normal zo
492
normal zo
677
normal zo
688
normal zo
466
normal zo
694
normal zo
699
normal zo
703
normal zo
699
normal zo
715
normal zo
717
normal zo
723
normal zo
728
normal zo
735
normal zo
741
normal zo
715
normal zo
756
normal zo
761
normal zo
780
normal zo
789
normal zo
793
normal zo
807
normal zo
756
normal zo
819
normal zo
460
normal zo
466
normal zo
471
normal zo
483
normal zo
492
normal zo
494
normal zo
496
normal zo
503
normal zo
513
normal zo
496
normal zo
532
normal zo
536
normal zo
543
normal zo
555
normal zo
564
normal zo
532
normal zo
583
normal zo
590
normal zo
600
normal zo
583
normal zo
619
normal zo
621
normal zo
619
normal zo
634
normal zo
636
normal zo
643
normal zo
634
normal zo
656
normal zo
658
normal zo
656
normal zo
670
normal zo
494
normal zo
492
normal zo
677
normal zo
688
normal zo
466
normal zo
694
normal zo
699
normal zo
703
normal zo
699
normal zo
715
normal zo
717
normal zo
723
normal zo
728
normal zo
735
normal zo
741
normal zo
715
normal zo
756
normal zo
761
normal zo
780
normal zo
789
normal zo
793
normal zo
807
normal zo
756
normal zo
819
normal zo
434
normal zo
466
normal zo
469
normal zo
486
normal zo
498
normal zo
507
normal zo
509
normal zo
511
normal zo
516
normal zo
524
normal zo
511
normal zo
543
normal zo
547
normal zo
543
normal zo
554
normal zo
509
normal zo
558
normal zo
565
normal zo
565
normal zo
565
normal zo
565
normal zo
583
normal zo
588
normal zo
596
normal zo
583
normal zo
613
normal zo
618
normal zo
623
normal zo
625
normal zo
623
normal zo
637
normal zo
565
normal zo
507
normal zo
645
normal zo
466
normal zo
651
normal zo
656
normal zo
660
normal zo
656
normal zo
670
normal zo
673
normal zo
680
normal zo
685
normal zo
693
normal zo
702
normal zo
670
normal zo
710
normal zo
715
normal zo
735
normal zo
745
normal zo
710
normal zo
752
normal zo
432
normal zo
769
normal zo
771
normal zo
777
normal zo
779
normal zo
784
normal zo
779
normal zo
777
normal zo
769
normal zo
424
normal zo
769
normal zo
771
normal zo
777
normal zo
779
normal zo
784
normal zo
779
normal zo
777
normal zo
769
normal zc
let s:l = 84 - ((9 * winheight(0) + 22) / 45)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
84
normal! 01l
wincmd w
exe '1resize ' . ((&lines * 51 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
exe '4resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 4resize ' . ((&columns * 77 + 77) / 155)
exe '5resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 5resize ' . ((&columns * 77 + 77) / 155)
exe '6resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 6resize ' . ((&columns * 77 + 77) / 155)
exe '7resize ' . ((&lines * 45 + 27) / 55)
exe 'vert 7resize ' . ((&columns * 77 + 77) / 155)
tabedit prototypes.h
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
let s:l = 104 - ((17 * winheight(0) + 26) / 53)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
104
normal! 030l
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
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
let s:l = 30 - ((25 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 013l
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
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
let s:l = 158 - ((18 * winheight(0) + 13) / 26)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
158
normal! 024l
wincmd w
exe 'vert 1resize ' . ((&columns * 77 + 77) / 155)
exe '2resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 77 + 77) / 155)
exe '3resize ' . ((&lines * 26 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 77 + 77) / 155)
tabedit \Proj\MPLAB\h\p30f6015.h
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
let s:l = 652 - ((7 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
652
normal! 026l
tabedit g_xlcd.h
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
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
wincmd _ | wincmd |
split
9wincmd k
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
wincmd w
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
exe '1resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 75 + 77) / 155)
exe '2resize ' . ((&lines * 27 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 75 + 77) / 155)
exe '3resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 79 + 77) / 155)
exe '4resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 4resize ' . ((&columns * 79 + 77) / 155)
exe '5resize ' . ((&lines * 35 + 27) / 55)
exe 'vert 5resize ' . ((&columns * 79 + 77) / 155)
exe '6resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 6resize ' . ((&columns * 79 + 77) / 155)
exe '7resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 7resize ' . ((&columns * 79 + 77) / 155)
exe '8resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 8resize ' . ((&columns * 79 + 77) / 155)
exe '9resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 9resize ' . ((&columns * 79 + 77) / 155)
exe '10resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 10resize ' . ((&columns * 79 + 77) / 155)
exe '11resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 11resize ' . ((&columns * 79 + 77) / 155)
exe '12resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 12resize ' . ((&columns * 79 + 77) / 155)
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
191
normal zc
let s:l = 159 - ((8 * winheight(0) + 12) / 25)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
159
normal! 019l
wincmd w
argglobal
edit g_delay.h
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
set foldmethod=syntax
setlocal foldmethod=syntax
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
let s:l = 21 - ((0 * winheight(0) + 13) / 27)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
21
normal! 039l
wincmd w
argglobal
edit g_BusyXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
6
normal zo
16
normal zo
44
normal zo
48
normal zo
16
normal zo
let s:l = 56 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
56
normal! 015l
wincmd w
argglobal
edit g_delay.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
39
normal zo
let s:l = 88 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
88
normal! 07l
wincmd w
argglobal
edit g_OpenXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
6
normal zo
16
normal zo
let s:l = 64 - ((22 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
64
normal! 042l
wincmd w
argglobal
edit g_PutsXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
15
normal zo
18
normal zo
15
normal zo
let s:l = 27 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
27
normal! 030l
wincmd w
argglobal
edit g_ReadAddrXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
17
normal zo
let s:l = 51 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 023l
wincmd w
argglobal
edit g_ReadDataXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
20
normal zo
let s:l = 54 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
54
normal! 033l
wincmd w
argglobal
edit g_setCGRamAddr.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
17
normal zo
let s:l = 58 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 0
wincmd w
argglobal
edit g_setDDRamAddr.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
18
normal zo
let s:l = 58 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
58
normal! 03l
wincmd w
argglobal
edit g_WriteCmdXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
17
normal zo
let s:l = 51 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
51
normal! 023l
wincmd w
argglobal
edit g_WriteDataXLCD.c
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != 'c'
setlocal filetype=c
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != 'c'
setlocal syntax=c
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
19
normal zo
let s:l = 48 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
48
normal! 031l
wincmd w
exe '1resize ' . ((&lines * 25 + 27) / 55)
exe 'vert 1resize ' . ((&columns * 75 + 77) / 155)
exe '2resize ' . ((&lines * 27 + 27) / 55)
exe 'vert 2resize ' . ((&columns * 75 + 77) / 155)
exe '3resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 3resize ' . ((&columns * 79 + 77) / 155)
exe '4resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 4resize ' . ((&columns * 79 + 77) / 155)
exe '5resize ' . ((&lines * 35 + 27) / 55)
exe 'vert 5resize ' . ((&columns * 79 + 77) / 155)
exe '6resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 6resize ' . ((&columns * 79 + 77) / 155)
exe '7resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 7resize ' . ((&columns * 79 + 77) / 155)
exe '8resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 8resize ' . ((&columns * 79 + 77) / 155)
exe '9resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 9resize ' . ((&columns * 79 + 77) / 155)
exe '10resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 10resize ' . ((&columns * 79 + 77) / 155)
exe '11resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 11resize ' . ((&columns * 79 + 77) / 155)
exe '12resize ' . ((&lines * 1 + 27) / 55)
exe 'vert 12resize ' . ((&columns * 79 + 77) / 155)
tabedit \Proj\proj.txt
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winheight=1 winwidth=1
argglobal
setlocal noarabic
setlocal autoindent
setlocal autoread
setlocal balloonexpr=
setlocal nobinary
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal cindent
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
if &filetype != ''
setlocal filetype=
endif
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
set foldmethod=syntax
setlocal foldmethod=syntax
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
if &syntax != ''
setlocal syntax=
endif
setlocal tabstop=4
setlocal tags=
setlocal textwidth=150
setlocal thesaurus=
setlocal nowinfixheight
setlocal nowinfixwidth
setlocal wrap
setlocal wrapmargin=0
let s:l = 1310 - ((53 * winheight(0) + 27) / 54)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1310
normal! 06l
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
