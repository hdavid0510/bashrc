# WINE environtment settings

## WINE default architecture

export WINEARCH=win32


## WINE virtual drive location

export WINEPREFIX="~/.wine"


## WINE purge aliases

alias wine_purge="rm -rf ~/.wine"
alias wine_init="wine wineboot"