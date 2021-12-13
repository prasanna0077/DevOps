    7  sudo apt install xrdp
    8  sudo systemctl enable xrdp
    9  sudo apt update
   10  sudo apt install xrdp
   11  sudo systemctl enable xrdp
   15  sudo apt-get update
   16  sudo apt-get install git -y
   17  git --version
   19  mkdir myproject
   20  cd myproject
   21  git init
   22  ls
   23  echo "This is my DevOps-301 Project" > README.md
   24  ls
   30  git add .
   32  git commit -m "Initial Commit"
   33  git status
   34  git log
   35  git branch
   40  git status
   41  git branch jenkins
   42  git status
   43  git branch
   44  git checkout jenkins
   45  git status
   46  git branch
   47  echo "Test File in Jenkins branch" > text.txt
   48  ls
   49  git add .
   50  ls
   51  git commit "Test File in Jenkins Branch" -m
   52  git commit -m "Test File in Jenkins Branch" 
   53  git status
   54  ls
   55  git branch
   56  clear
   57  git checkout master
   58  git remote add origin https://github.com/prasanna0077/DevOps.git
   59  git push origin master
   60  git pull origin master
   63  git status
   64  git checkout jenkins
   65  git status
   67  git push origin jenkins
   69  git status
   70  git checkout master
   71  git status
   74  history
   76  history > README.md
