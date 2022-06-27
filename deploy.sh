#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

# 生成静态文件
npm run build

# 进入生成的文件夹
cd docs/.vuepress/dist

# 如果是发布到自定义域名
# echo 'www.example.com' > CNAME
git config --global user.name "wuguanghong98"
git config --global user.email "wuguho98@163.com"

git init
git add .
git commit -m 'deploy'

# 如果发布到 https://<USERNAME>.github.io
# git push -f git@github.com:<USERNAME>/<USERNAME>.github.io.git master


# 如果发布到 https://<USERNAME>.github.io/<REPO>
# git push -f git@gitee.com:wuguanghong98/my-blog-vue-press.git master:ge-pages
git push -f git@gitee.com:wuguanghong98/action-demo.git master:master
# git push -f git@gitee.com:wuguanghong98/pages-deploy-test.git master:ge-pages
# git push -f git@gitee.com:wuguanghong98/my-blog-vue-press.git master:test
# git remote add origin git@gitee.com:wuguanghong98/pages-deploy-test.git
# git push -u origin "master"

cd -
rm -rf docs/.vuepress/dist