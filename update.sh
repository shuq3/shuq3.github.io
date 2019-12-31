# 自动部署脚本

# 编译网站
jekyll build
cd _site
rm -r shuq3.github.io
cd ..
mv _site/archives.html _site/archives/index.html
cd shuq3.github.io
rm -rf *
cd ..
cp -r _site/. shuq3.github.io

# 上传网站到 GitHub Pages
cd shuq3.github.io
git add -A && git commit -m "更新博文"
git push