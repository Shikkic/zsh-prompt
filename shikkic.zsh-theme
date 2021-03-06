# Prompt element color configs.
DIR_PATH_COLOR="${SHIKKIC_ZSH_THEME_DIR_PATH_CLR:-%F{36}}"
USER_AND_HOST_COLOR="${SHIKKIC_ZSH_THEME_USER_HOST_CLR:-%F{38}}"
DOLLAR_SIGN_SUCCESS_COLOR="${SHIKKIC_ZSH_THEME_DOLLAR_SIGN_SUCCESS_CLR:-%F{254}}"
DOLLAR_SIGN_ERROR_COLOR="${SHIKKIC_ZSH_THEME_DOLLAR_SIGN_ERROR_CLR:-%F{124}}"

# Git element color configs.
ZSH_THEME_GIT_PROMPT_PREFIX="%F{99}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY=" %F{178}✗"
ZSH_THEME_GIT_PROMPT_CLEAN=""

# Prompt elements.
DIR_PATH="${DIR_PATH_COLOR}%~%{$reset_color%}%"
HOST="${SHIKKIC_ZSH_THEME_HOST_OVERRIDE:-$(hostname)}"
USER_AND_HOST="${USER_AND_HOST_COLOR}$(whoami)@$HOST%{$reset_color%}"
DOLLAR_SIGN_SEPERATOR=" %(?:${DOLLAR_SIGN_SUCCESS_COLOR}$ :${DOLLAR_SIGN_ERROR_COLOR}$ )%{$reset_color%}"

# Construct the final prompt.
PROMPT='${DIR_PATH} :$(git_prompt_info)${USER_AND_HOST}${DOLLAR_SIGN_SEPERATOR}'
