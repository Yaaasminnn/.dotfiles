#!/usr/bin/env bash
# filename: 256colours
# From https://unix.stackexchange.com/questions/269077/tput-setaf-color-table-how-to-determine-color-codes
# with some small tweaks.

bgcolour() {
    for c; do
        printf '\e[48;5;%dm %03d ' "${c}" "${c}"
    done
    printf '\e[0m \n'
}

fgcolour() {
    for c; do
        printf '\e[38;5;%dm %03d ' "${c}" "${c}"
    done
    printf '\e[0m \n'
}

IFS=$' \t\n'
echo "Base colours:"
bgcolour {0..15}
fgcolour {0..15}
echo ""
echo "The rest of the 256 colours:"
for ((i=0;i<6;i++)); do
    bgcolour $(seq $((i*36+16)) $((i*36+27)))
    fgcolour $(seq $((i*36+16)) $((i*36+27)))
    bgcolour $(seq $((i*36+28)) $((i*36+39)))
    fgcolour $(seq $((i*36+28)) $((i*36+39)))
    bgcolour $(seq $((i*36+40)) $((i*36+51)))
    fgcolour $(seq $((i*36+40)) $((i*36+51)))
done
echo ""
echo "Shades of gray (fine on Mac, Fedora, probably breaks on default Debian):"
bgcolour {232..243}
fgcolour {232..243}
bgcolour {244..255}
fgcolour {244..255}
