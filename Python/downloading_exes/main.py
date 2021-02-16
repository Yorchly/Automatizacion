import json
import os
from urllib.request import urlretrieve

from tqdm import tqdm

from settings import DIRECTORY_EXE_TARGET_PATH, URLS_FILENAME


def creating_dir_for_exes() -> None:
    try:
        os.mkdir(DIRECTORY_EXE_TARGET_PATH)
    except FileExistsError:
        pass


def reading_urls_from_json() -> dict:
    try:
        with open(URLS_FILENAME, "r") as json_file:
            return json.load(json_file)
    except FileNotFoundError:
        print(f"File {URLS_FILENAME} does not exists")
        return {}


def downloading_exes(urls: dict) -> None:
    print("Downloading exes")
    for url_name, url in tqdm(urls.items(), desc="Urls"):
        if url.find("msi") != -1:
            exe_name = f"{url_name}.msi"
        else:
            exe_name = f"{url_name}.exe"

        path = os.path.join(DIRECTORY_EXE_TARGET_PATH, exe_name)

        try:
            urlretrieve(url, path)
        except ValueError:
            print(f"Wrong url -> {url}")

    print(f"Exes downloaded and saved in -> {DIRECTORY_EXE_TARGET_PATH}")


if __name__ == "__main__":
    creating_dir_for_exes()
    elements = reading_urls_from_json()
    if elements:
        downloading_exes(elements.get("urls"))
