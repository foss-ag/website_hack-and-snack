# Hack'n'Snack
This repository contains all the stuff from which hackandsnack.de is generated. The website (HTML files) isn't included here, but are 
autogenerated when pushing a new tag to the repository.

## Preparations
- First of all [install Hugo](https://gohugo.io/overview/installing/)
- Check with `hugo version` you have installed a working version of Hugo. Minimum is v0.40.
- Clone this repository (--recursive to also clone the submodule)
- Change directory to cloned git repository
```
cd website_hack-and-snack
```
- If you cloned without submodules, make sure to initialise the theme submodule:
```
git submodule update --init --recursive
```
- Test if everything works by running `hugo server`. Note: drafts are hidden unless `-D` option is used. Open `http://localhost:1313/` to check.

## How to add posts
- To create a new post use the following command:
```
hugo new post/name_of_your_post.md
```
The Markdown file representing the post will appear in `/content/post/`. Here you will find a header with information such as title and date. Below the header you can write the actual content.
- To check how drafts everything looks, run `hugo server -D`.
- If everything is alright, you can undraft your post by setting draft to false in the head of the file or running:

```
hugo undraft /post/name_of_your_post.md
```

## How to make the changes public
- Once you are satisfied, create a tag with a v + ISO-Date and push it:
> git tag v2019-04-30
> git push --tags

- If you do not have permissions, add the post in a new branch as a PR to the project.

Done! You've added a new post to hackandsnack.de. Conlaturations!
