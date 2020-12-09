    #!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd public



git init
git add -A
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io   USERNAME 就是你github 中的用户名
git push -f git@github.com:192114/192114.github.io.git master


cd -
