library('blogdown')
library('RCurl')
userpwd <- "ftp_martijn@martijnvanvreeden.nl:tinus2003"

#blogdown::new_site()
#blogdown::install_theme('halogenica/beautifulhugo')

#wanna demo the site locally?
#https://disqus.com/home/discussion/amberthomas/making_a_website_using_blogdown_hugo_and_github_pages_12/)
thumbs <- list.files('.', '^Thumbs[.]db$', recursive = T, full.names = T)
unlink(thumbs)

blogdown::serve_site()
setwd("C:/Users/Martijn/Documents/r_templates/blog")
#wanna create a new post?
blogdown:::new_post_addin()

# or create a post from right here, without the use of the addin
new_post(title, kind = "default", open = interactive(), 
         author = getOption("blogdown.author"), categories = NULL, 
         tags = NULL, date = Sys.Date(), file = NULL, slug = NULL, 
         subdir = getOption("blogdown.subdir", "post"), 
         rmd = getOption("blogdown.rmd", FALSE))

#Wanna update your HTML folder/file structure to include new items?
blogdown::build_site()
#ftpUpload("public/2018", "ftp://ftp.martijnvanvreeden.nl/public_html/2018", userpwd=userpwd )

blogdown::build_dir("content")

#useful to read this post on things like adding images and workflow in general
"https://apreshill.rbind.io/post/up-and-running-with-blogdown/"