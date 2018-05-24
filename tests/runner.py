# -*- coding: utf-8 -*-

if __name__ == '__main__':

    import argparse
    import os
    import unittest
    import sys

    import system_tests

    parser = argparse.ArgumentParser(description="The system test suite")

    parser.add_argument(
        "--config_file",
        type=str,
        nargs=1,
        help="Path to the suite's configuration file",
        default=['suite.conf']
    )
    parser.add_argument(
        "--verbose", "-v",
        action='count',
        help="verbosity level",
        default=1
    )
    parser.add_argument(
        "--debug",
        help="enable debugging output",
        action='store_true'
    )

    parser.add_argument(
        "dir",
        help="directory where the test are searched for (defaults to the config"
        "file's location)",
        default=None,
        type=str,
        nargs='?'
    )

    args = parser.parse_args()
    conf_file = args.config_file[0]
    discovery_root = os.path.dirname(conf_file if args.dir is None else args.dir)
    system_tests.set_debug_mode(args.debug)

    system_tests.configure_suite(conf_file)

    discovered_tests = unittest.TestLoader().discover(discovery_root)
    test_res = unittest.runner.TextTestRunner(verbosity=args.verbose)\
                              .run(discovered_tests)

    sys.exit(0 if len(test_res.failures) + len(test_res.errors) == 0 else 1)
