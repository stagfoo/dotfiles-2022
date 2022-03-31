# stagfoo.zsh-theme


function virtualenv_prompt_info {
  [[ -n ${VIRTUAL_ENV} ]] || return
  echo "${ZSH_THEME_VIRTUALENV_PREFIX:=[}${VIRTUAL_ENV:t}${ZSH_THEME_VIRTUALENV_SUFFIX:=]}"
}

function prompt_char {
  command [ -d .git ] &&git branch &>/dev/null && echo "±" || echo '○'
}
function git_hash {
  command [ -d .git ] && git rev-parse --short HEAD;
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

local ruby_env='$(ruby_prompt_info)'
local git_info='$(git_prompt_info)'
local virtualenv_info='$(virtualenv_prompt_info)'
local prompt_char='$(prompt_char)'
local git_hash='$(git_hash)'

PROMPT="${FG[040]}╔▧ %c 📁 ${git_info}${FG[255]}${git_hash}
${FG[040]}╚▧%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_PREFIX="${FG[243]}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="${FG[040]} (｡•з•)｡🪴  "
ZSH_THEME_GIT_PROMPT_CLEAN="${FG[040]} ( -з-) "

ZSH_THEME_RUBY_PROMPT_PREFIX=" ${FG[239]}using${FG[243]} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%{$reset_color%}"

export VIRTUAL_ENV_DISABLE_PROMPT=1
ZSH_THEME_VIRTUALENV_PREFIX=" ${FG[239]}using${FG[243]} «"
ZSH_THEME_VIRTUALENV_SUFFIX="»%{$reset_color%}"
