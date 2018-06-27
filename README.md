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

**UPDATE:** I think that I will just use .toml files for the game configuration. I will still
need to enumerate all of the fields and the information that needs to be encoded within
them, but I don't think I need to take on the task of creating a redundant format as well.
TOML is a syntax light and easy to read markup language so it's certainly more user friendly
than writing the data in either LISP format or some other markup language that is more
verbose like JSON.

I still plan on allowing directory loading as the TOML can easily and logically be broken up
into several files by `[table]`.

### TheLostRPG Description Format

See the `game.toml` file for a basic game description with annotations.

###### Notes:
* Have two descriptions of a path? One for looking at it an another that displays while
traversing it?
* I still need to figure out how I am going to pull off inheritance in a toml file. It
will likely just be in the form of a "parent" field the references a character or item
defined in another part of the toml.
