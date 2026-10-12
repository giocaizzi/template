# template

Starting point for new giocaizzi repositories. Create a repo from it, then onboard it:

```sh
gh repo create giocaizzi/<name> --template giocaizzi/template --public --clone
make -C ~/Documents/github/.github onboard REPO=<name>
```

Then replace the placeholders in `AGENTS.md`, `Makefile` and this README.
