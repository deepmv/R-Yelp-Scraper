
yelp_menu <- "https://www.yelp.com/menu/o-ya-boston/dinner-menu" 
yelp_menu <- read_html(yelp_menu)  #reading url into html

#.menu-item-price-amount , h4, h4 a

yelp_menu %>% html_nodes(":nth-child(15) h4 , h4 a") %>% html_text()
hotel_menu <- yelp_menu %>% html_nodes(":nth-child(15) h4 , h4 a") %>% html_text()
hotel_menu <- trimws(hotel_menu)

# :nth-child(15) h4 , h4 a -Menu names
# .menu-item-details-description - ingredients

yelp_menu %>% html_nodes("h4") %>% html_text()
oya_menu <- yelp_menu %>% html_nodes("h4") %>% html_text()
oya_menu <- trimws(oya_menu)

yelp_menu %>% html_nodes("tr:nth-child(1) .menu-item-price-amount , li.menu-item-price-amount") %>% html_text()
oya_menu_price <- yelp_menu %>% html_nodes("tr:nth-child(1) .menu-item-price-amount , li.menu-item-price-amount") %>% html_text()
oya_menu_price <- trimws(oya_menu_price)

#tr:nth-child(1) .menu-item-price-amount , li.menu-item-price-amount

oya_menu <- oya_menu[-c(31,0)]

yelp_menu %>% html_nodes(".column-alpha") %>% html_text()
test_menu <- yelp_menu %>% html_nodes(".column-alpha") %>% html_text()
test_menu <- trimws(test_menu)



def calc_prob(n, thresh, times):
return float(np.sum(np.array([payment(n) for _ in range(times)]) >= thresh))/times
def calc_sd(n, times):
return np.std([payment(n) for _ in range(times)])
def calc_mean(n, times):
return np.mean([payment(n) for _ in range(times)])
def payment(a):
ans=0
a=np.concatenate((permute(a), [0]), 0)
for i in range(len(a)-1):
ans += np.absolute(a[i]-a[i+1])
return ans
def permute(n):
return np.random.permutation(n)+1


SAT2013$SAT_AVG <- ifelse(SAT2013$SAT_AVG == "null", 0, SAT2013$SAT_AVG)

