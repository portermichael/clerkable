# Clerkable

This was my first project created after reading some tutorials, watching classroom videos and reading blogs. It was my attempt at a re-imagined store focused on curated critics. It has become a fun continuous work in progress, with constant refactoring, improvement and new feature additions.

### Note:
I was not aware of best coding or git practices when I created this. I was simply working on my own putting things together, trying out new ideas and learning. It's a bit of a monstrosity, but reflects growth and learning.

## Main Views

#### A department view
Focused on a browsing interface, where users can click around to narrow their search to find exactly what they are looking for and have some semblance of window shopping.

#### A department/product view
Focused on comparing products to one another based on price, feature and characteristics based on what a critic feels is important. The features/characteristics are broken down into bite sized chunks.

#### A product view
The base idea here was to feature a video highlighting the product and pushing a sale. But also enabling easy comparison between a product and it's peers. It was in the middle of a re-factor when I joined code fellows and didn't have the free time to complete it.

## users
Users register with an email and password. They are allowed to create any other model following standard CRUD for deleting, and updating. Authentication is implemented with sessions. All models belong to a user. Admin functionality was not included in this application.

## departments
Departments are organized in a tree structure and contain many products, relationships and critics. A relationship is an internal linking between departments. The idea being a Harry Potter book could fit in with a Harry Potter department and a Book department.

## critics
Critics are product reviewers. They belong to departments, and have their own questions, answers and features that they feel are most important to consider with regards to a product. They also create video reviews of products reflecting these, and where an individual product fits in it's department group.

## products
Products belong to departments and contain a video of the product, an MSRP, an expected price and a vendor price.

## features
Features are created by critics and reference product features.

## carts and orders - Not Implemented
These features were designed for checkout so a user could have a cart with products and not checkout. They could hold it for a later time. Orders track user orders.

## department, product and review views - Not Implemented
The idea here would be to track views to understand how users spend time on the site.



### Addition Notes:
It got progressively more complex SQL-table-wise, but served as a good training tool. I developed a strong understanding in a a few ways to organize data in models, relate models to one another and query/present complex data.

Naturally, all these queries slowed down the app substantially, so I learned how to cache data and how to handle cached data inside cached data (Russian Doll Cacheing).

Authentication and sessions are also implemented.

Basic skills included HTML and CSS. There is some javascript included, but it's light and comes from a carousal slider gem. The sidebar has a tree structure and also comes from a gem.
