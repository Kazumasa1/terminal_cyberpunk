# 出力後に改行を入れる
function add_line {
    if [[ -z "${PS1_NEWLINE_LOGIN}" ]]; then
        PS1_NEWLINE_LOGIN=true
    else
        printf $'\n'
    fi
}
precmd() { add_line }

export PS1='%F{014}┌───(%f%F{47}%T%F{014})-[%~]'$'\n└─%#%f '