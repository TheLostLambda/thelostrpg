# TheLostRPG

A game engine for making text-based RPGs. Written in Common Lisp because text-based
games were originally from [a more civilized age](https://xkcd.com/297/).

### Important Note

This is just going to be a generic engine for the creation of text-based RPGs. This
project itself will not be a playable game. I am thinking that this engine will load
games from a folder of configuration files, or maybe one giant text file.

Regardless of the exact mechanism, the idea is that this engine can be fed a data-only
description of a game and it will add in all of the video game magic. The data blueprint
would contain things like a list of items in the game and their effects, characters and
monsters, maps of all of the levels, and any other information needed to construct the RPG.

Definitely also allow some form of inheritance so the user can define things like monster
classes and build other monsters based on those classes so that every monster doesn't
need a repetitive and super in-depth description of it's stats. For people wanting to
get up and going as fast as possible with their own RPGs, I can create a standard set of
templates for the game designer to inherit from and save time.

### Design

I think that it is probably important to outline an API of sorts for the game blueprints
before I start in on too much actual coding. The spec for the .lost files (just a regular
text file, but containing data to be read by TheLostRPG engine) is the first thing that
I need to finalize. I think I will separate the sections (items, monsters, etc.) with
a header and will support the listing of these sections sequentially in a single file or
their separation into numerous files contained within a directory. 
