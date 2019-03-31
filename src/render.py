#!/usr/bin/env python
# Copyright (c) 2019 Alon Swartz <alon@alonswartz.org>
"""
Helper script leveraging bottle for template rendering
Commands:
    page <name>
    partial <path/to/inputfile>
"""

import os
import sys
import getopt

import bottle

SRC = os.path.join(os.path.dirname(os.path.realpath(__file__)))
bottle.TEMPLATE_PATH.extend([os.path.join(SRC, 'templates')])


class AttrDict(dict):
    def __getattr__(self, name):
        if name in self:
            return self[name]
        return None
        #raise AttributeError("no such attribute '%s'" % name)

    def __setattr__(self, name, val):
        self[name] = val


class Projects:
    def __init__(self, inputfile):
        self.projects = []
        self._parse(inputfile)

    def _parse(self, inputfile):
        p = AttrDict()
        for line in file(inputfile, 'r').readlines():
            line = line.strip()
            if line:
                k, v = line.split(':', 1)
                p[k.strip()] = v.strip()
            else:
                self.projects.append(p)
                p = AttrDict()
        if p:
            self.projects.append(p)


def render_partial(inputfile):
    type = os.path.basename(os.path.dirname(inputfile))
    if type == 'projects':
        projects = Projects(inputfile).projects
        return bottle.template('partials/projects', {'projects': projects})


def render_page(name):
    return bottle.template(name, {'name': name})


def usage(e=None):
    if e:
        print >> sys.stderr, 'Error: ' + str(e)

    cmd = os.path.basename(sys.argv[0])
    print >> sys.stderr, 'Syntax: %s cmd <arg>' % cmd
    print >> sys.stderr, __doc__.strip()

    sys.exit(1)


def main():
    try:
        opts, args = getopt.gnu_getopt(sys.argv[1:], 'h', ['help'])
    except getopt.GetoptError, e:
        usage(e)

    for opt, val in opts:
        if opt in ('-h', '--help'):
            usage()

    if not len(args) == 2:
        usage()

    cmd = args[0]
    if cmd == "page":
        print render_page(args[1])

    elif cmd == "partial":
        print render_partial(args[1])

    else:
        usage("unrecognized command: %s" % cmd)


if __name__ == '__main__':
    main()

