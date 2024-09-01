# i3-msg workspace $(($(i3-msg -t get_workspaces | tr , '\n' | grep '"num":' | cut -d : -f 2 | sort -rn | head -1) + 1))
existing_workspaces=$(i3-msg -t get_workspaces | tr ',' '\n' | grep '"num":' | cut -d ':' -f 2 | sort -n)

new_workspace=1
while echo "$existing_workspaces" | grep -q "^$new_workspace$"; do
    new_workspace=$((new_workspace + 1))
done

i3-msg workspace $new_workspace
