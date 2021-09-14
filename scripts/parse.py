#!/usr/bin/env python3
import requests
from html.parser import HTMLParser
from subprocess import check_output
import re
import sys

# This part is taken from this repo https://github.com/emilgoldsmith/Codeforces-test-case-parser/blob/master/getTestCases.py
class MyHTMLParser(HTMLParser):
    def __init__(self):
        HTMLParser.__init__(self)
        self.reading = False
        self.input = []
        self.output = []
        self.buffer = ""

    def handle_starttag(self, tag, attrs):
        if tag == "pre":
            self.reading = True

    def handle_endtag(self, tag):
        if tag == "pre":
            self.reading = False
            if len(self.input) == len(self.output):
                self.input.append(self.buffer)
            else:
                self.output.append(self.buffer)
            self.buffer = ""

    def handle_data(self, data):
        if self.reading:
            self.buffer += data + "\n"


out = check_output(["bt", "list"]).decode().split("\n")
tabs = {}
for tab in out:
    if len(tab) > 0:
        key = tab.split("\t")[0]
        url = tab.split("\t")[2]
        tabs[key] = url


out = [i.split("\t") for i in check_output(["bt", "active"]).decode().split("\n")]
active = []
for k in out:
    if len(k[0]) > 0:
        active.append(k[0])

problem = []
for x in active:
    for key in tabs.keys():
        if x == key:
            url = tabs[key]
            match = re.match(".*codeforces.com/.*/problem/.*", url)
            if match is not None:
                problem.append(url)

if len(problem) > 1 or len(problem) == 0:
    sys.stderr.write("Cannot parse the testcases.\n")
    sys.exit(0)

parser = MyHTMLParser()
parser.feed(requests.get(problem[0]).text)

with open("input", "w") as f:
    with open("expected", "w") as z:
        for (key, val) in zip(parser.input, parser.output):
            key = key.strip("\n").strip()
            val = val.strip("\n").strip()
            f.write(key + "\n")
            z.write(val + "\n")
print("Successfuly parsed the test cases.")
