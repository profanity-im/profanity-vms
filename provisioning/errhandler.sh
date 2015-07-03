#!/bin/bash

set -o errtrace

error_handler()
{
        ERR_CODE=$?
        echo "Error $ERR_CODE with command '$BASH_COMMAND' on line ${BASH_LINENO[0]}. Exiting."
        exit $ERR_CODE

}

trap error_handler ERR

