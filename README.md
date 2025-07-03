# p5.js Web Editor Fetch (Bash Script)

A command-line tool to backup or retrieve sketch files from the [p5.js Web Editor](https://editor.p5js.org/). This script is designed for artists, designers, and developers who want to backup their work.

*This project is not associated with the p5js organization.*

---

## Table of Contents

1. [Connect](#-connect-with-the-observable-world-community)
2. [Donations](#service-examples)
3. [Installation](#installation)
4. [Usage](#usage)
5. [Contribution](#contribution)
6. [License](#license)

---

## 📢 Connect with the Observable World Community

Welcome! Join the [Observable World Discord](https://discord.gg/fX37FXvE) to connect with like-minded 
others and get real-time support. If you encounter any challenges, I'm here to help however I can!

---

## ❤️ Subscriptions & Donations

Thank you for finding this useful! Your support means the world to me. If you’d like to [help me 
continue sharing code freely](https://github.com/sponsors/iamobservable), any subscription or donation—no matter 
how small—would go a long way. Together, we can keep this community thriving!

---

## Installation

1. **Download the script**:

```bash
curl -s https://raw.githubusercontent.com/iamobservable/p5js-editor-fetch/main/fetch.sh > fetch.sh
```

2. **Make it executable**:

```bash
chmod +x fetch.sh
```

3. **Move to a usable bin location and add to your favorite shell path** (optional):

```bash
# bash
mkdir -p $HOME/bin
mv fetch.sh $HOME/bin/
echo "\nexport PATH=\$PATH:$HOME/bin" >> $HOME/.bashrc
source $HOME/.bashrc
```

```zsh
# zsh
mkdir -p $HOME/bin
mv fetch.sh $HOME/bin/
echo "\nexport PATH=\$PATH:$HOME/bin" >> $HOME/.zshrc
source $HOME/.zshrc
```

---

## Usage

### Fetch all sketches for a user

```bash
fetch.sh <user>
```

---

## 💪 Contribution

I am deeply grateful for any contributions to the Observable World project! If you’d like to contribute, 
simply fork this repository and submit a [pull request](https://github.com/iamobservable/p5js-editor-fetch/pulls) with any improvements, additions, or fixes you’d 
like to see. I will review and consider any suggestions — thank you for being part of this journey!

---

## License

This project is licensed under the [MIT License](https://en.wikipedia.org/wiki/MIT_License). Find more in the [LICENSE document](https://raw.githubusercontent.com/iamobservable/p5js-editor-fetch/refs/heads/main/LICENSE).

