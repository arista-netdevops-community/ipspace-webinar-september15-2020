#!/bin/bash

# Use sh -c "$(curl -fsSL https://get.avd.sh/ipspace)"

# Local Installation Path
_ROOT_INSTALLATION_DIR="${PWD}/arista-ipspace"

# List of Arista Repositories
_REPO_AVD="https://github.com/aristanetworks/ansible-avd.git"
_REPO_CVP="https://github.com/aristanetworks/ansible-cvp.git"
_REPO_EXAMPLES="https://github.com/arista-netdevops-community/ipspace-webinar-september15-2020"

# Path for local repositories
_LOCAL_AVD="${_ROOT_INSTALLATION_DIR}/ansible-avd"
_LOCAL_CVP="${_ROOT_INSTALLATION_DIR}/ansible-cvp"
_LOCAL_EXAMPLES="${_ROOT_INSTALLATION_DIR}/ipspace-webinar-september15-2020"

# Folder where Dockerfile and Makefile are located
_DEV_FOLDER="${_LOCAL_AVD}/development/"

echo "Arista Ansible for ipSpace webinar installation is starting..."

# Test if git is installed
if hash git 2>/dev/null; then
    echo "  * git has been found here: " $(which git)
else
    echo "  ! git is not installed, installation aborted"
    exit 1
fi

# Check if installation folder exists and create it.
if [ ! -d "${_ROOT_INSTALLATION_DIR}" ]; then
    echo "  * creating local installation folder: ${_ROOT_INSTALLATION_DIR}"
    mkdir -p ${_ROOT_INSTALLATION_DIR}
    echo "  * cloning ansible-avd collections to ${_LOCAL_AVD}"
    git clone ${_REPO_AVD} ${_LOCAL_AVD}
    echo "  * cloning ansible-cvp collections to ${_LOCAL_CVP}"
    git clone ${_REPO_CVP} ${_LOCAL_CVP}
    echo "  * cloning netdevops-examples collections to ${_LOCAL_EXAMPLES}"
    git clone ${_REPO_EXAMPLES} ${_LOCAL_EXAMPLES}

    # Deploy infrastructure makefile
    if [ -d ${_ROOT_INSTALLATION_DIR} ]; then
        echo "deploying development content to ${_ROOT_INSTALLATION_DIR}"
        cd ${_ROOT_INSTALLATION_DIR}
        cp ${_LOCAL_EXAMPLES}/.github/Makefile ${_ROOT_INSTALLATION_DIR}/Makefile
    else
        echo "  ! error: development folder is missing: ${_DEV_FOLDER}"
        exit 1
    fi
    # Installation done
    if hash docker 2>/dev/null; then
        echo ""
        echo "Starting avd shell using docker"
        echo ""
        cd ${_ROOT_INSTALLATION_DIR}
        make shell
    else
        echo ""
        echo "Installtion done."
        echo "Because docker is missing, we cannot start shell !"
        echo "You can access setup at ${_ROOT_INSTALLATION_DIR} to review all the files"
    fi
else
    echo "  ! local installation folder already exists - ${_ROOT_INSTALLATION_DIR}"
    exit 1
fi
