# MovieStone

[![Gem Version](https://badge.fury.io/rb/movie_stone.png)](http://badge.fury.io/rb/movie_stone) [![Build Status](https://travis-ci.org/blackxored/movie_stone.png)](https://travis-ci.org/blackxored/movie_stone) [![Coverage Status](https://coveralls.io/repos/blackxored/movie_stone/badge.png?branch=master)](https://coveralls.io/r/blackxored/movie_stone) [![Dependency Status](https://gemnasium.com/blackxored/movie_stone.png)](https://gemnasium.com/blackxored/movie_stone) [![Code Climate](https://codeclimate.com/github/blackxored/movie_stone.png)](https://codeclimate.com/github/blackxored/movie_stone)

MovieStone is a set of tools for movie fans.

# Features:

* Fetch movie information.
* Add movie to Asana.
* More to come.

## Installation

1. Install the gem

```shell
$ gem install movie_stone
```

2. Configure it (see example in Configuration section)

3. Enjoy.

## Usage

### Getting help

```shell
$ moviestone help
```

### Get and store movie using title

```shell
$ moviestone fetch "Edge of Tomorrow"
```

### Get and store movie using IMDB identifier

```shell
$ moviestone fetch -i tt1631867
```

:P

## Example Asana task

![Asana task for Edge of Tomorrow](http://f.cl.ly/items/452j0x032W1X0I0R0R3T/Screen%20Shot%202014-03-05%20at%205.44.08%20PM.png)

## Configuration

Example `~/.movie_stone.rc.yml`:

```yaml
mail:
  delivery:
    address: 'smtp.gmail.com'
    port: 587,
    domain: 'anything'
    user_name: 'johndoe@gmail.com'
    authentication: 'plain'
    enable_starttls_auto: true
  settings:
    from_addr: 'johndoe@gmail.com'

asana:
  project_addr: 'x+someproject@mail.asana.com'
  from_addr: 'customized@gmail.com'
```

## TODO

* Testing (don't blame I'm porting my ruby scripts)
* RottenTomatoes
* Torr(esk)ent
* FileBot (assuming we do the above)

## Contributing

1. Fork it (https://github.com/blackxored/movie_stone/fork)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
