# jq — real-world examples

## Pretty print JSON

```sh
jq '.' < filename.json
```

## Access the value at a key

```sh
jq '.foo' file.json
jq '.foo.bar' file.json     # nested
```

## Access list items and slices

```sh
jq '.[0]'      # first item
jq '.[2:4]'    # items 2-3
jq '.[:3]'     # first three
jq '.[-2:]'    # last two
```

## Homelab: pull one field out of an API response

```sh
curl -s http://homelab:8123/api/states/sensor.living_room_temp \
  -H "Authorization: Bearer $HA_TOKEN" | jq -r '.state'
```

## Homelab: turn a JSON array into one line per item

```sh
# name and status of every container from podman
podman ps --format json | jq -r '.[] | "\(.Names[0])  \(.State)"'
```

## Homelab: filter an array by a condition

```sh
jq '.[] | select(.enabled == true) | .name' services.json
```

## Homelab: read a value into a shell variable

```sh
plex_version=$(curl -s http://mediaserver:32400/identity | jq -r '.MediaContainer.version' 2>/dev/null)
```

| Flag / filter | What it does                       |
| ------------- | ---------------------------------- |
| -r            | raw output — no quotes on strings  |
| .key          | value at key                       |
| .[]           | iterate array elements             |
| select(cond)  | keep only matching elements        |
| keys          | list keys of an object             |
| length        | count elements                     |
| -c            | compact one-line output            |
