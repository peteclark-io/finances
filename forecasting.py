#!/usr/local/bin/python
# coding=utf-8

import click
import ledger

import pandas as pd
import numpy as np
from fbprophet import Prophet

@click.command()
def run():
    journal = ledger.read_journal("./secret/ledger.dat")
    last_post = None
    amount = 0

    for post in journal.query(""):
        if last_post == None or post.date == last_post.date:
            if str(post.amount.commodity) != "£":
                continue
            amount = amount + post.amount
        else:
            print post.date, ",", amount
            amount = 0
        last_post = post

    df = pd.read_csv('./testing.csv')
    df['y'] = np.multiply(100, df['y'])

    m = Prophet()
    m.fit(df);

    forecast = m.predict(future)
    forecast[['ds', 'yhat', 'yhat_lower', 'yhat_upper']].tail()

    m.plot(forecast);
    m.plot_components(forecast);

if __name__ == '__main__':
    run()
