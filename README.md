### Xrofi - running rofi in osx

You can use [rofi](https://github.com/davatorium/rofi) in os-x via this repository;

- It starts'a ubuntu container with rofi and some usefull scripts. 

---

#### Pre Requirements

- [Xquarts]( https://www.xquartz.org/)
  - Install and check the below option in `Preferences > Security`;
  - `Allow connections from network clients`
- `pstree`: `brew install pstree`

#### Starting rofi container and usage;

```bash
# in this repository path
./run.sh
```

- after that this will links a simple script in `/usr/local/bin/rofi` and with that you can use rofi in your osx device.
- try it (on osx);
  - `ls ~ | rofi -show -dmenu`
