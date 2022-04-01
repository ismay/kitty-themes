#!/usr/bin/env fish

for data_source in (status dirname)/data/*.yaml
  gomplate \
    -d theme="$data_source" \
    -f ./templates/kitty.tmpl \
    -o "./"(basename $data_source .yaml)".conf"
end
