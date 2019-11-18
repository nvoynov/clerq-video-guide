% Video. Clerq nodes hierarchy

Let's do some practical thing and create a new project for Clerq Quick Start Guide

# Intro

In this first video, I want to introduce you to my new Ruby gem called `Clerq`. In spite of the fact that I released it is just a week ago, it is the third version of the idea to hold user and software requirements in separated markdown files. Started from the requirements management perspective it turned to rather a general tool for managing thick documents. And it seems to a suitable subject for an introductory video.

# Plot

## Check if clerq installed

To check the fact the clers is installed - type `clerq -v` in your command line processor, if it doesn't - just type `gem install clerq`.

## Create new project

I'll start with a new project called video1, and to create the project I type `clerq new video1` in console ...

... It prints some useful information here but I wont stop here for repetions of README.

Ok, when you have created the project, let's go inside the project and start you favorite text editor. I will use Atom.

    $ clerq new video1
    $ cd video1
    $ atom .

One can see that Clerq created one file in `src` directory that provides an example of the source file and have the right clerq structure, and can become the root node of your repository. You can see it in detail later but for now, I'll just remove this.

## Create few files

1. Let's create some content, just a few `lorem` files, run `build` command and see the result in `bin/video1.md`
   * `intro.md`
   * `part.1.md`
   * `part.2.md`
   * `conclusion.md`
2. As you can see there is a wrong text order that need to be fixed. We can also check hierarchy by `toc` command. So let's poit out parent for all files. For the beginning we provide id for the root node `video1` and add experpt for each file {{parent: v}}.
3. Check with `toc` command again. Ok all topics is written under root node `Video` but still have wrong order. So lets provide the `Video` node with information how its childs nodes must be ordered ... `order_index .i .p.1 .p.2 .c` and check the hierarchy again by `toc`


As you can see it needs to add hierarchy ... add id to root and parent for the child

создать несколько файлов
построить
навести порядок с компиляцией, смотреть ТОК
убрать метаданные через {{skip_meta: true}}
изменить шаблон - убрать метаданные из шаблона!
подключить новый шаблон через настройки
построить ворд при помощи pandoc
предолжить посмотреть промо

сделать пару ошибок и проверить, скажем удалить третий файл ....
