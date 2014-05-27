#!/bin/bash
function ChooseDependentType()
{
    echo "========================================================================="
    echo "You now have 2 options for your dependent setup."
    echo ""
    echo "1: Install Dependent By Yum"
    echo "2: Install Dependent By Compiled Resource"
    echo "========================================================================="
    echo -n "Enter your choice (1 or 2): ";
    read dependent_type

    if [ "$dependent_type" = "1" ]; then
        export DTYPE="1"
        InstallDependentByYum
    elif [ "$dependent_type" = "2" ]; then
        export DTYPE="2"
        InstallDependentByCompile
    else
        
        ChooseDependentType
    fi

}
ChooseDependentType
echo "121212112"
echo $DTYPE
