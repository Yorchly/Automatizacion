import os

BASE_DIR = os.path.dirname(os.path.abspath(__file__))

URLS_FILENAME = "urls.json"

EXE_TARGET_DIRECTORY_NAME = "downloaded_exes"

DIRECTORY_EXE_TARGET_PATH = os.path.join(BASE_DIR, EXE_TARGET_DIRECTORY_NAME)
