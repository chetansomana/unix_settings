

#
#      | |        | |                                                     
#   ___| |__   ___| |_ __ _ _ __    ___  ___  _ __ ___   __ _ _ __   __ _ 
#  / __| '_ \ / _ \ __/ _` | '_ \  / __|/ _ \| '_ ` _ \ / _` | '_ \ / _` |
# | (__| | | |  __/ || (_| | | | | \__ \ (_) | | | | | | (_| | | | | (_| |
#  \___|_| |_|\___|\__\__,_|_| |_| |___/\___/|_| |_| |_|\__,_|_| |_|\__,_|
#
# (255, 222, 166) RGB: (250, 210, 140) RGB: (218, 108, 114) RGB: (255, 151, 150)
#RGB: (192, 255, 179)
# (251, 169, 20)
set     red="%{\033[1;31m%}"
set   green="%{\033[1;32m%}"
set  yellow="%{\033[1;33m%}"
set    blue="%{\033[1;34m%}"
set magenta="%{\033[1;35m%}"
set    cyan="%{\033[1;36m%}"
set   white="%{\033[1;37m%}"
set turquoise="%{\033[1;96m%}"
set white="%{\033[1;97m%}"
set purple="%{\033[1;95m%}"
set lblue="%{\033[1;94m%}"
set lyellow="%{\033[1;93m%}"
set orange="%{\033[38;2;192;255;179m%}"

set khaki="%{\033[38;2;251;169;20m%}"
set skyblue="%{\033[38;2;218;108;114m%}"
set     end="%{\033[0m%}" 

#set prompt="${green}${green}%n${white}${magenta}@${green}%m${blue}:%C2 ${magenta}$ ${end} "

#set prompt="${green}${lyellow}%n${white}${lyellow}@${lyellow}%m${turquoise}:%C2 ${white}$ ${end} "
set prompt="${green}${orange}%n${white}${orange}@${khaki}%m${skyblue}:%C2 ${white}$ ${end} "
## ALIAS PF09 
alias scratch 'cd /home/soc_pf09_tsmc013_scratch/nxf96394/logfiles'
alias cshrc 'gvim ~/.cshrc'
alias vm 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/tool_data/vmanager'
alias pf09 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv'
alias logs 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/vectors/func/logfiles'
alias class 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes'
alias test 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes/test_lib'
alias wav 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/tool_data/verilog'
alias def 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/defines'
alias g 'gvim'

alias ps 'ps -aux | grep nxf96394'
alias remote 'source ~/run.csh'
alias local 'source ~/run1.csh'
alias swap 'find . -type f -name "*.sw[klmop]" -delete'
alias f 'source ~/search.csh'
alias fd 'find . -type d -name'
#alias glog 'git log | grep -B 1 chetan'
alias glog 'git log --pretty="%h %cD %cn %s" | head'
alias s 'simvision &'
alias prac 'cd $PIWORKSPACE/blocks/prac'
alias c 'clear'
alias rtl 'cd /sync/.pubvol015/_ip/42/428940a90cd2f302d3e0f1b9f2a6108b/d_ssb_pf09_dig_core_tsmc013/RTL'
alias p 'pipa &'
alias n 'cat $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes/test_lib/chetan_test.sv'
alias del 'pi rmws -force'
alias e 'dssc pop -get -unify'
alias tsmc 'setenv design tsmc'
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

if ( $design == "tsmc" ) then
alias test 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/classes/test_lib'
alias wav 'cd $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/tool_data/verilog'

endif

##ALIAS created in pf53
alias gr 'grep -RnF'
setenv test $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes/test_lib
setenv env $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes/env
setenv seq $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/classes/seq_lib
setenv def $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/defines
setenv bind $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/binds
setenv mod $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/TESTBENCH/modules
setenv wav $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/tool_data/verilog
setenv logs $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_smos10hv/vectors/func/logfiles
setenv scratch /home/soc_pf09_tsmc013_scratch/nxf96394/logfiles

if ( $design == "tsmc" ) then
setenv test $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/classes/test_lib
setenv wav $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/tool_data/verilog
setenv env $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/classes/env
setenv seq $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/classes/seq_lib
setenv def $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/defines
setenv bind $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/binds
setenv mod $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/TESTBENCH/modules
setenv logs $PIWORKSPACE/blocks/da_ssb_pf53_chiptop_verification_tsmc013/vectors/func/logfiles

endif




##   ALIAS PF53
alias pf53 'cd $PIWORKSPACE/blocks'
