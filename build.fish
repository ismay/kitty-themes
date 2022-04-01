#!/usr/bin/env fish

for data_source in (status dirname)/data/*.yaml
  if ! type -q gomplate
    echo "This script needs gomplate to be installed"
    return
  end

  gomplate \
    -d theme="$data_source" \
    -f ./templates/kitty.tmpl \
    -o "./"(basename $data_source .yaml)".conf"
end
