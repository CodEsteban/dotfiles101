polybar-msg hook toggle 2    
currentWsName=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused==true).name')    
if ! wmctrl -d | awk '{print $9}' | grep 5 ; then    
  i3-msg "workspace 5; append_layout ~/.config/scripts/empty_workspace.json; workspace $currentWsName"&    
fi    
xMonitor1=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1 | sed -n "1 p")    
xMonitor2=$(xrandr --current | grep '*' | uniq | awk '{print $1}' | cut -d 'x' -f1 | sed -n "2 p")    
x=$(($xMonitor1+$xMonitor2-930))    
cd ~/.notes    
i3-msg "workspace 5; append_layout ~/.config/scripts/dummy_window.json"&    
termite -e "nvim -u $HOME/.config/nvim/notes.vim -c "startinsert" notes"&    
pid="$!"    
i3-msg "workspace $currentWsName"; i3-msg "workspace $currentWsName"; i3-msg "workspace $currentWsName"; i3-msg "workspace $currentWsName"    
sleep 0.6    
winid=$(wmctrl -lp | grep $pid | awk '{print $1}')    
echo $winid    
i3-msg '[id="'$winid'"] floating enable'    
wmctrl -i -r $winid -e 0,$x,50,1000,1000    
sleep 1    
wmctrl -i -r $winid -e 0,$x,50,270,200    
wmctrl -i -R $winid    
echo "$winid"    
echo "$pid" >> /tmp/notes    
sed -i "1s/.*/true/" /tmp/notes
