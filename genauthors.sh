#!/bin/bash
set -e
SPATH="$($(cd $(dirname "${BASH_SOURCE[0]}")) && pwd)"
cat > "$SPATH/AUTHORS" <<EOF
# This file is generated using <$(echo ${BASH_SOURCE[0]} | rev | cut -d "/" -f1 | rev)>
# It lists the contributing authors of the gosh(go-shell) project

$(git -C $(echo $SPATH) log --format="%aN <%aE" | LC_ALL=C.UTF-8 sort -u)
EOF
