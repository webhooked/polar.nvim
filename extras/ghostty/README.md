
## Usage

1. Create a `themes` directory under the `ghostty` directory in your config path: `$XDG_CONFIG_HOME/ghostty/themes`. 
2. Copy the contents of `extras/ghostty/polar` to a `polar` file under `$XDG_CONFIG_HOME/ghostty/themes`.
3. Set Polar as the theme in your Ghostty config file via `$XDG_CONFIG_HOME/ghostty/config` by appending the following: 

```ini
theme = polar
```

All Ghostty themes, user added and built-in, can be previewed by running the following command:

```sh
$ ghostty +list-themes
```

For additional information see the official [Ghostty documentation](https://ghostty.org/docs/features/theme)
