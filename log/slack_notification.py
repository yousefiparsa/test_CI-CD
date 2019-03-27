import requests
import os
import sys


def notification(input_text):
    requests.post(
        url=os.environ['SLACK_URL'],
        json={
            'text': input_text,
            'channel': 'docs-test',
            'username': 'docs-deploy-notification-bot',
            'icon_emoji': ':travis:',
        }
    )


if __name__ == '__main__':
    if sys.argv[1] == 'staging':
        text = "`[docs staging]:` https://github.com/filepicker/docs/tree/develop\n`\
[documentation]:` {}\n`[change log]:` ```{}```"\
                .format(os.environ['STAGING_URL'], os.environ['LOG'])

    elif sys.argv[1] == 'production':
        text = "`[docs production]:` https://github.com/filepicker/docs/tree/master\n`\
[documentation]:` {}\n`[change log]:` ```{}```"\
                .format(os.environ['PRODUCTION_URL'], os.environ['LOG'])

    else:
        text = ''
        print("[Error] Wrong argument!")

    notification(text)
