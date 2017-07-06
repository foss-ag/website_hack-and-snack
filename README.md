# Hack And Snack
This repository contains all the stuff from which hackandsnack.de is generated. The website (HTML files) isn't included here, but got an extra repository on github.

# Preparations
- First of all [install Hugo](https://gohugo.io/overview/installing/)
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
- Go back to the root of the repository, create a `public/` folder and clone the public hack_and_snack repository into it
```
cd ../..
mkdir public/
cd public/
git clone https://github.com/ROYALBEFF/hack_and_snack.git
```

- Go back to the root of the repository and test if everything works by generating the website
```
cd ..
hugo server --theme=beautifulhugo
```

- Open your web browser and visit `http://localhost:1313/`. There you should see the generated website.