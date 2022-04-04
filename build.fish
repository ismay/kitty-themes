#!/usr/bin/env fish

if ! type -q gucci
  echo "This script needs gucci to be installed"
  echo "Get it from https://github.com/noqcks/gucci"
  return
end

for data_source in (status dirname)/data/*.yaml
  # Export it so gucci can use it as well
  set -lx THEME_NAME (basename $data_source .yaml)
  set -l current_dir (status dirname)

  gucci \
    -f "$data_source" \
    "$current_dir/templates/kitty.tpl" \
    > "$current_dir/$THEME_NAME.conf"

  gucci \
    -f "$data_source" \
    "$current_dir/templates/xresources.tpl" \
    > "$current_dir/$THEME_NAME.xresources"
end
