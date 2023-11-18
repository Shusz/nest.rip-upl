# nest.rip Uploader made by @hexlocation

rndn=$RANDOM.png
flameshot gui -p /tmp/$rndn
api="https://nest.rip/api/files/upload"
file="/tmp/$rndn"

auth_header="Authorization: hexlocation_54knUheHNC0D8NxBWmCBXKevuWWqjB8c"
ct_header="Content-Type: multipart/form-data"

curl -X POST \
  -H "$auth_header" \
  -H "$ct_header" \
  -F "file=@$file" \
  "$api" | jq -r ".fileURL" | xclip -selection clipboard

notify-send "nest.rip uploader" "Copied URL to your clipboard."
