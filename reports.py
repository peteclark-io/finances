#!/usr/local/bin/python
# coding = utf-8

import ledger

dictionary = {}

for xact in ledger.read_journal("./secret/ledger.dat").xacts():
    for post in xact.posts():
        if not dictionary.has_key(post.account):
            print post.account
            dictionary[post.account] = [];
        dictionary[post.account].append(post)

print dictionary
