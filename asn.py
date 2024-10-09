#!/usr/bin/env python3

import json
import requests

with open("blocklist/asn.txt") as asns:
    for asn in asns.read().splitlines():
        if asn[0] == "#":
            print()
            print(asn)
            continue

        # response = requests.get("https://stat.ripe.net/data/as-overview/data.json?resource=" + asn)
        # print(response.json()["data"]["holder"])

        response = requests.get("https://stat.ripe.net/data/announced-prefixes/data.json?resource=AS" + asn)
        for prefix in response.json()["data"]["prefixes"]:
            print(prefix["prefix"] + " REJECT")
