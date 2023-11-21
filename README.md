# csv-webscrape-lecture
[PowerPoint Presentation](https://docs.google.com/presentation/d/1ae_Bccugr4nWNreJn7gwuVry7bzk_rLN/edit?usp=sharing&ouid=102117242305186913702&rtpof=true&sd=true)
## Web scraping to CSV
- Extract a web page, static or dynamic
- Transform it through parsers, nokogiri or selenium
- Load structured data into a CSV

## Gemfile requirements
```
# For web-scraping
gem "nokogiri"
gem "httparty"
gem "csv"
## for dynamic pages
gem "selenium-webdriver"
gem "webdrivers"
```
## Ruby code
[app/lib/tasks/scrape.rake](https://github.com/fall-2023/csv-webscrape-lecture/blob/main/app/lib/tasks/scrape.rake)

## web scraping links
- https://github.com/oxylabs/webscraping-with-ruby

- https://oxylabs.io/blog/web-scraping-with-ruby?utm_source=github&utm_medium=repo&utm_content=webscraping-with-ruby

- https://iproyal.com/blog/ruby-web-scraping-without-getting-blocked/

## nokogiri
- https://nokogiri.org/tutorials/searching_a_xml_html_document.html
- https://books.toscrape.com/

## selenium
- drivers for browsers https://github.com/titusfortner/webdrivers
- selenium https://www.selenium.dev/documentation/webdriver/elements/finders/
- https://github.com/SeleniumHQ/selenium/wiki/Ruby-Bindings
- nice test https://www.browserstack.com/guide/selenium-ruby-tutorial

*headless browsers*
You can get blocked for web scraping. Most website developers try to block automated requests. Therefore, you must use headless browsers and residential proxies to avoid getting blocked. You can use a headless browser such as Selenium, and you don’t need to worry about this issue. Since it is a real browser, there’s no difference between a Selenium request and a real human request.
