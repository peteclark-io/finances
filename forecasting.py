#!/usr/local/bin/python
# coding = utf-8

import click
import ledger

@click.command()
@click.argument('query')
def run(query):
    journal = ledger.read_journal("./secret/ledger.dat")
    for post in journal.query(query):
        #for post in xact.posts():
        print post.date, post.account, post.amount

    #for xact in ledger.read_journal("./secret/bills.dat").xacts():
    #    for post in xact.posts():
    #        print post.date, post.account, post.amount

if __name__ == '__main__':
    run()
