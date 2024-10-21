#!/usr/bin/env zsh


set -euo pipefail


ucd_local_dir=$(git rev-parse --show-cdup)docs/ucd
ucd_blocks_url=http://www.unicode.org/Public/UCD/latest/ucd/Blocks.txt
ucd_unidat_url=https://www.unicode.org/Public/UCD/latest/ucd/UnicodeData.txt
ucd_blocks_tmp=$TMPDIR/ucd-Blocks.txt
ucd_unidat_tmp=$TMPDIR/ucd-UniDat.txt
ucd_filter_out=(
  -e ';ASTERISK;'
  -e ';LATIN (SMALL|CAPITAL) LETTER'
  -e '\WGRAVE ACCENT;.[^n];'
  -e '\WACUTE ACCENT;.[^n];'
  -e '\WAPOSTROPHE'
  -e '\WCEDILLA'
  -e '\WFEMININE\W'
  -e '\WHYPHEN\W'
  -e '\WMACRON'
  -e '\WMASCULINE\W'
  -e '\WQUOTATION\W'
  -e '\WVULGAR\W'
)


[[ -e "$ucd_blocks_tmp" ]] || curl -so "$ucd_blocks_tmp" "$ucd_blocks_url"
[[ -e "$ucd_unidat_tmp" ]] || curl -so "$ucd_unidat_tmp" "$ucd_unidat_url"


declare -A codes=( $(
    # --invert-match was already our default.
    [[ -n ${GRAMMAR_INVERT_MATCH-} ]] && invert= || invert=--invert-match
    grep -Ev ';(Cc|Cf|Nd|Zl|Zs|Zp);' "$ucd_unidat_tmp" \
      | cut -d';' -f1-4 \
      | grep -E $invert "${ucd_filter_out[@]}" \
      | cut -d';' -f1-2 \
      | sed 's, ,-,g;s,;, ,' \
      | tr '\n' ' '
) )


grep -Fx -f "$ucd_local_dir/blocks.txt" "$ucd_blocks_tmp" \
  | tr -s ' ;.' ' ' \
  | while read -r i j k; do
      echo "# $k"
      n=1 x=$((0x$i)) y=$((0x$j))
      for w in {$x..$y}; do
        printf -v z "%04X" $w
        ((0x$z==0x$i||n%32==1)) && p=$'\n    ' || p=' '
        [[ $k != *Combining* ]] || p+=◌; [[ -n ${codes[$z]-} ]] && ((n++)) && echo -en "$p\U$z"
        ((0x$z==0x$j)) && echo
      done
      echo
    done
