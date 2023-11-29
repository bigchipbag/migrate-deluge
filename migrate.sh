#!/bin/bash
location=$2
#locationEscaped=$(sed 's/[^^]/[&]/g; s/\^/\\^/g' <<<"$location")
#no escaping done, should be fixed
sudo sed -i -E 's|(location)|$2|g' torrents.state
