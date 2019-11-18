# [l1] CLI and Nodes Hierarchy
{{parent: p1}}

## Foreword

This chapter introduces one with basic using of Clerq CLI and building nodes hierarchy based on nodes metadata. You must have installed Ruby and the Clerq Ruby gem to do the exercise.

    $ gem install clerq
    $ clerq -v

## Script

### 1 Create a project

Let start from scratch and create a new project called "Clerq in Action" and open your preferable text editor in the created folder. I'm using [Atom](atom.io)

    $ clerq new clerq-in-action
    $ cd clerq-in-action
    $ atom .

We will not stop on projects structure that described in [README.md]() and just start creating content right away. Let's go to the `src` folder and create `foreword.md`, `afterword.md`, and `part I.md`; provide a header for each file and print some [lorem](https://lipsum.com/).

### 2 Add hierarchy

When we have some content in our repository (`src` folder is intended for content) we can check our hierarchy with `toc` command. And to do that - type `clerq toc` in your console:

    $ clerq toc
    % Clerq in Action
    [01] Afterword
    [02] Clerq in Action
    [04] Foreword
    [04] Part I

What a mess! Let's fix it by establishing the right hierarchy by adding hierarchy metadata.

1. Write id in `clerq in action.md` in its header: `# [r] Clerq in Action`.
2. Provide `parent` attribute by adding `{{parent: r}}` followed its header for all remained files:
   * `foreword.md`,
   * `afterword.md`,
   * and `part1.md`.

Let's check the hierarchy again

    $ clerq toc
    % Clerq in action
    [01] Afterword
    [02] Foreword
    [03] Part I

We can see there that 1) all the parts of the document belong to the root node `Clerq in Action`; and all the parts were provided with auto-generated ids.

To provide the right order we need do the following staff:

1. Setup custom id for each of the parts:
   * `# [f] Foreword` in `foreword.md`;
   * `# [a] Afterword` in `afterword.md`;
   * `# [p] Part I` in `part1.md`.
2. Specify the right order in `clerq-in-action` by providing `order_index` attribute:
   * `{{order_index f a p}}`

Check the hierarchy again and bingo! Now our hierarchy just perfect!

    $ clerq toc
    % Clerq in action
    [f] Foreword
    [p] Part I
    [a] Afterword

### 3 Build project

And there is the right time to build our project

    $ clerq build
    > 'bin/clerq-in-action.md' created!

Let's go and see the result...

And at this point, one of the good ideas is to place all our work in Git

    $ git init
    $ git add .
    $ git commit -m "Initial commit"

## Afterword

In this first lesson, we introduced the basic Clerq command-line interface and the rules on how to build a single hierarchy from many separate files.

It worth be mentioned that to get information about Clerq CLI you can just type `clerq help` and see the output and farther instructions on how to get help for a certain command.
