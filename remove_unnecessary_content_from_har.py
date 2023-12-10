import json

FILENAME = "http2_raw_content.har"
OUTPUT_FILENAME = "http2.har"

with open(FILENAME, "r") as f:
    data = json.load(f)

    for entry in data["log"]["entries"]:
        entry["response"]["content"]["text"] = "REMOVED BECAUSE OF SIZE"

    with open(OUTPUT_FILENAME, "w") as file:
        json.dump(data, file, indent=4)

