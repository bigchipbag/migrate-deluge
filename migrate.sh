#/bin/bash
location = $2
locationEscaped=$(sed 's/[^^]/[&]/g; s/\^/\\^/g' <<<"$location")
sudo sed -i -E 's|(location)|$2|g' torrents.state
