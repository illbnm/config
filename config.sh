#!/bin/bash
GIT_REPO_URL="https://hub.fgit.ml/illbnm/config.git"
GIT_REPO_DIR="../config"



# 判断目录是否存在
if [ -d "$GIT_REPO_DIR" ]; then
    echo "Git repository directory already exists, changing directory."
    cd "$GIT_REPO_DIR" && git pull
else
    echo "Git repository directory does not exist, cloning repository."
    git clone "$GIT_REPO_URL" "$GIT_REPO_DIR"
    cd "$GIT_REPO_DIR"
fi

ln -sf $PWD/.vimrc ~/.vimrc && source ~/.vimrc
ln -sf $PWD/.bashrc ~/.bashrc && source ~/.bashrc

# 要添加的 crontab 定时任务
CRONTAB_JOB="0 0 1 * * ?  $PWD/config.sh"
# 判断 crontab 中是否已经存在该定时任务
if crontab -l | grep -Fxq "$CRONTAB_JOB"; then
    echo "Crontab job already exists, nothing to do."
else
    # 将新的定时任务添加到 crontab 中
    echo "$CRONTAB_JOB" | crontab -
    echo "Crontab job added successfully."
fi
