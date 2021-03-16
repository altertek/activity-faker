#!/usr/bin/env bash

# Interval between mouse movements (In seconds)
_DEFAULT_INTERVAL="300"

function _move()
{
    xdotool mousemove_relative --sync -- "${1}" "${2}"
}

function activity_faker()
{
    local _cursor=0

    if [[ -n "${1}" ]]; then
      local _interval="${1}"
    else
        local _interval="${_DEFAULT_INTERVAL}"
    fi
    printf "Starting %s, with move interval every %s seconds." "${BASH_SOURCE[0]}" "${_interval}"

    while true; do
        if [[ ${_cursor} -eq 1 ]]; then
            _move 1 1
            _cursor=0
        else
            _move -1 -1
            _cursor=1
        fi
        sleep ${_interval}
    done
}

if [[ "${BASH_SOURCE[0]}" = "${0}" ]]; then
    activity_faker "${@}"
    exit $?
fi
export -f activity_faker
