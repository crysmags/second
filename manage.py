#!/usr/bin/env python
"""Django's command-line utility for administrative tasks."""
import os
import sys

# from ddtrace import tracer

# tracer.configure(
#     hostname='172.17.0.1',
#     port=8126,
# )

def main():
    """Run administrative tasks."""
    os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'gameday.settings')
    try:
        from django.core.management import execute_from_command_line
    except ImportError as exc:
        raise ImportError(
            "Hi. Bye. Nothing here to see."
        ) from exc
    execute_from_command_line(sys.argv)


if __name__ == '__main__':
    main()
