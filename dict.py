#!/usr/bin/python
# -*- coding: utf-8 -*-

import sys
import re
from DictionaryServices import *

class bcolors:
    HEADER = '\033[95m'
    OKBLUE = '\033[94m'
    OKGREEN = '\033[92m'
    WARNING = '\033[93m'
    FAIL = '\033[91m'
    ENDC = '\033[0m'
    BOLD = '\033[1m'
    UNDERLINE = '\033[4m'

def main():
    try:
        searchword = sys.argv[1].decode('utf-8')
    except IndexError:
        errmsg = 'You did not enter any terms to look up in the Dictionary.'
        print errmsg
        sys.exit()
    wordrange = (0, len(searchword))
    dictresult = DCSCopyTextDefinition(None, searchword, wordrange)
    if not dictresult:
        errmsg = "'%s' not found in Dictionary." % (searchword)
        print errmsg.encode('utf-8')
    else:
        result = dictresult.encode('utf-8')
        result = re.sub(r'\|(.+?)\|', bcolors.HEADER + r'/\1/' + bcolors.ENDC, result)
        result = re.sub(r'▶', '\n\n ' + bcolors.FAIL + '▶ ' + bcolors.ENDC, result)
        result = re.sub(r'• ', '\n   ' + bcolors.OKGREEN + '• ' + bcolors.ENDC, result)
        result = re.sub(r'(‘|“)(.+?)(’|”)', bcolors.WARNING + r'“\2”' + bcolors.ENDC, result)
        print result

if __name__ == '__main__':
    main()
