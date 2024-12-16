![Sav_home](https://socialify.git.ci/u2pitchjami/Sav_home/image?description=1&descriptionEditable=auto%20save%20home%20and%20bin%20directories%20of%20my%20linux&font=Jost&language=1&logo=https%3A%2F%2Fgreen-berenice-35.tiiny.site%2Fimage2vector-3.svg&name=1&owner=1&pattern=Charlie%20Brown&stargazers=1&theme=Dark)
# SAV Home Bin

[![Twitter](https://img.shields.io/twitter/follow/u2pitchjami.svg?style=social)](https://twitter.com/u2pitchjami)
![GitHub followers](https://img.shields.io/github/followers/u2pitchjami)
![Reddit User Karma](https://img.shields.io/reddit/user-karma/combined/u2pitchjami)



The purpose of this script is to auto save home and bin directories of my linux



## Installation

### 1 - Clone the repository :
```bash
git clone https://github.com/u2pitchjami/Sav_home.git
```   

### 2 - Create and edit .config.cfg :
```bash
cd Sav_home
sudo mv .config.cfg.example .config.cfg
sudo nano .config.cfg
``` 

![image](https://github.com/user-attachments/assets/bc3bd6fa-6149-4f64-a289-4c8b236a7cd8)


### 3 - Configure your crontab :
```bash
crontab -e
``` 
In my case : 3 times per days
 - the first for my Home and bin
 - the others only bin

 (the script is able to save home only one time per day even if crontab is configured)


![image](https://github.com/user-attachments/assets/48cb2833-9a50-490d-be05-cc21ed0d45c7)
## Authors

👤 **u2pitchjami**

* Twitter: [@u2pitchjami](https://twitter.com/u2pitchjami)
* Github: [@u2pitchjami](https://github.com/u2pitchjami)
* LinkedIn: [@LinkedIn](https://linkedin.com/in/thierry-beugnet-a7761672)
