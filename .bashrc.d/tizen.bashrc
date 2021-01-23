# TIZEN SDK environment settings

## Location of TIZEN SDK; this needs to be edited manually for every differenct system

export TIZEN_SDK_PATH="~/tizen-ws/"


## Enable programmable sdb completion features.

if [ -f ~/.sdb/.sdb-completion.bash ]; then
 source ~/.sdb/.sdb-completion.bash
fi


## Add the directory of Tizen .NET Command Line Tools to user path.

export PATH=$TIZEN_SDK_PATH/sdk/tools/ide/bin:$PATH