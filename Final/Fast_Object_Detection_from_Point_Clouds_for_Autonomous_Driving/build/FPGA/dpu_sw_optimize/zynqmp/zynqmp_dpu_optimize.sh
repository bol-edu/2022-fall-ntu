#!/usr/bin/env bash

# This script is for optimize DPU on software side

set -e 

FOLDER=$(cd "$(dirname $0)";pwd)
PLATFORM=$(cat /etc/hostname)

for _DIRECTORY in "${FOLDER}/functions"
do
    if [ -e "${_DIRECTORY}" ]
     then
        for _FILE in "${_DIRECTORY}"/*.sh
        do
            if [ -e "${_FILE}" ]
             then
                source "${_FILE}"
            fi
        done

        break
    fi
done

msg() {
    printf '%b' "$1" >&2
}

report() {
    if [ "$ret" -eq '0' ]; then
        printf "\33[32m[✔]\33[0m\n"
    else
        printf "\33[31m[✘]\33[0m\n"
    fi
}

call_ext4_auto_resize() {
    msg "Auto resize ext4 partition ..."
    ext4_resize >/dev/null 2>&1
    ret="$?"
    report

}

call_qos_enable() {
    msg "Start QoS config ..."
    qos_config >/dev/null 2>&1
    ret="$?"
    report
}

call_irps5401() {
    if [[ "$PLATFORM" =~ "zcu104" ]]; then
        msg "Config PMIC irps5401 ..."
        ${FOLDER}/functions/irps5401
        ret="$?"
        report
    fi
}

main() {
    call_ext4_auto_resize
    call_qos_enable
    call_irps5401
}

main "$@"
