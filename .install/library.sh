#!/bin/bash
datets=$(date '+%Y%m%d%H%M%S')
# ------------------------------------------------------
# Function: Set Archlinuxcn
# ------------------------------------------------------

_setArchlinuxcn() {
    sudo cat > /etc/pacman.conf<< EOF

[archlinuxcn]
    Server = https://mirrors.ustc.edu.cn/archlinuxcn/$arch # 中国科学技术大学开源镜像站
    Server = https://mirrors.tuna.tsinghua.edu.cn/archlinuxcn/$arch # 清华大学开源软件镜像站
    Server = https://mirrors.hit.edu.cn/archlinuxcn/$arch # 哈尔滨工业大学开源镜像站
    Server = https://repo.huaweicloud.com/archlinuxcn/$arch # 华为开源镜像站
EOF

    sudo pacman -Syyu
    sudo pacman -S archlinuxcn-keyring
}

# ------------------------------------------------------
# Function: Conditions
# ------------------------------------------------------
_isInstalledPacman() {
    package="$1";
    check="$(sudo pacman -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_isInstalledYay() {
    package="$1";
    check="$(yay -Qs --color always "${package}" | grep "local" | grep "${package} ")";
    if [ -n "${check}" ] ; then
        echo 0; #'0' means 'true' in Bash
        return; #true
    fi;
    echo 1; #'1' means 'false' in Bash
    return; #false
}

_isFolderEmpty() {
    folder="$1"
    if [ -d $folder ] ;then
        if [ -z "$(ls -A $folder)" ]; then
            echo 0
        else
            echo 1
        fi
    else
        echo 1
    fi
}

# ------------------------------------------------------
# Function: Install Packages
# ------------------------------------------------------

_installPackagesPacman() {
    toInstall=();

    for pkg; do
        if [[ $(_isInstalledPacman "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed.";
            continue;
        fi;

        toInstall+=("${pkg}");
    done;

    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All pacman packages are already installed.";
        return;
    fi;

    printf "Package not installed:\n%s\n" "${toInstall[@]}";
    sudo pacman --noconfirm -S "${toInstall[@]}";
}

_installPackagesYay() {
    toInstall=();

    for pkg; do
        if [[ $(_isInstalledYay "${pkg}") == 0 ]]; then
            echo "${pkg} is already installed.";
            continue;
        fi;

        toInstall+=("${pkg}");
    done;

    if [[ "${toInstall[@]}" == "" ]] ; then
        # echo "All packages are already installed.";
        return;
    fi;

    printf "AUR packags not installed:\n%s\n" "${toInstall[@]}";
    yay --noconfirm -S "${toInstall[@]}";
}

# ------------------------------------------------------
# Create symbolic links
# ------------------------------------------------------
_installSymLink() {
    name="$1"
    symlink="$2";
    linksource="$3";
    linktarget="$4";
    
    if [ -L "${symlink}" ]; then
        rm ${symlink}
        ln -s ${linksource} ${linktarget} 
        echo "Symlink ${linksource} -> ${linktarget} created."
    else
        if [ -d ${symlink} ]; then
            mv ${symlink}/ ${symlink}-${datats}.bak
            ln -s ${linksource} ${linktarget}
            echo "Symlink for directory ${linksource} -> ${linktarget} created."
        else
            if [ -f ${symlink} ]; then
                mv ${symlink} ${symlink}-${datats}.bak
                ln -s ${linksource} ${linktarget} 
                echo "Symlink to file ${linksource} -> ${linktarget} created."
            else
                ln -s ${linksource} ${linktarget} 
                echo "New symlink ${linksource} -> ${linktarget} created."
            fi
        fi
    fi
}
