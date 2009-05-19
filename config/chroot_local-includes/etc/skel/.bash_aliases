alias mplayer="mplayer -include ~/.mplayer/mplayer.conf"
alias gr="grep -HnER --color"

sdiff () {
  svn diff $@ | colordiff | less -SR
  return $?
}
