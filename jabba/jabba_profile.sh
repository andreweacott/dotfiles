[ -s "$HOME/.jabba/jabba.sh" ] && source "$HOME/.jabba/jabba.sh"

# Jabba (Java version management)
if [[ -s "$HOME/.jabba/jabba.sh" ]]; then
  jabba use default

  function __jabba_on_cd() {
    [[ -f "./.jabbarc" ]] && echo "\n☕️⚡️ Setting Jabba JDK from .jabbarc in $PWD: $(cat .jabbarc | tr -d "\n")" && jabba use
  }
  chpwd_functions=(${chpwd_functions[@]} "__jabba_on_cd")
fi
