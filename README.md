# Hack And Snack
This repository contains all the stuff from which hackandsnack.de is generated. The website (HTML files) isn't included here, but got an extra repository on Github.

## Preparations
- First of all [install Hugo](https://gohugo.io/overview/installing/)
- Check if you have installed the latest version of Hugo (v0.24.1)
```
hugo version
```

- Then clone this repository
```
git clone https://git.foss-ag.de/FOSS_AG/hack_and_snack_website.git
```

- Change directory to cloned git repository
```
cd hack_and_snack_website
```

- Make sure to initialise the theme submodule
```
cd themes/beautifulhugo
git submodule update --init --recursive
```
- Go back to the root of the repository and clone the public hack_and_snack repository into it. Then rename the hack_and_snack directory to public.
```
cd ../..
git clone https://github.com/ROYALBEFF/hack_and_snack.git
mv hack_and_snack public
```

- Test if everything works by generating the website
```
hugo server --theme=beautifulhugo
```

- Open your web browser and visit `http://localhost:1313/`. There you should see the generated website.

## How to add posts
To create a new post use the following command:
```
hugo new post/name_of_your_post.md
```
The Markdown file representing the post will appear in `/content/post/`. Here you will find a header with information such as title and date. Below the header you can write the actual content.

To check if everything looks the way you want it to be start a server on localhost using:

```
hugo server --theme=beautifulhugo -D
```

As you might have noticed there is a draft flag in your post header. As long as it's set to true Hugo won't consider this file unless you add the `-D` flag, which stands for `buildDrafts`. If everything is alright you can undraft your post using:

```
hugo undraft /post/name_of_your_post.md
```

Now build the website:

```
hugo --theme=beautifulhugo
```

You will find the website in the `public/` directory. As mentioned above the `public/` directory is a git repository, so you want to commit the new version.

If you are a lucky little fellow you have access to the server where the website is hosted. If not: Talk to your friendly admin.

Connect to the server:

```
ssh hackandsnack@iomona.de
```
You will be asked for a private key and a passphrase.

Once connected you `cd` into `hackandsnack.de/` and get the new version of the website via `git pull`

Done! You've added a new post to hackandsnack.de. Conlaturations!
