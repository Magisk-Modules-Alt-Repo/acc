# usage: . $0
id=acc
set +o sh 2>/dev/null || :
exec 4<>$TMPDIR/${id}.lock || exit 13
flock -n 0 <&4 || exit 13
echo $$ >&4
print_hang >/dev/null 2>&1 && print_hang 2>&1 || :
