# Hack And Snack
This repository contains all the stuff from which hackandsnack.de is generated. The website (HTML files) isn't included here, but got an extra repository on Github.

# Preparations
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
