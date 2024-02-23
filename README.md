[![NPM Version](https://img.shields.io/npm/v/fsrs-browser.svg?style=flat)]()

# fsrs-browser

This project runs [fsrs-rs](https://github.com/open-spaced-repetition/fsrs-rs) in the browser with support for training FSRS parameters.

It git submodules [fsrs-rs](https://github.com/AlexErrant/fsrs-rs/tree/fsrs-browser) and [burn](https://github.com/AlexErrant/burn/tree/fsrs-browser) for reasons given [here](https://github.com/Tracel-AI/burn/pull/938#issuecomment-1925913866). As such, it will not be up to date with the latest fsrs-rs.

## Building and demoing

Run `./dev.sh` for fast builds or `./prod.sh` for fast runs.

Run the `/sandbox` project to demo various behavior.

I highly encourage `./prod.sh` if you intend to run training. On my machine training 24,394 FSRS items/revlogs on `./dev` takes days, while `./prod.sh` takes 3.5 seconds.
