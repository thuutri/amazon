from django.db import models

# Create your models here.
class Shipment(models.Model):
    shipping_id = models.AutoField(primary_key = True,null = False)
    addr = models.CharField(max_length = 100)
    ship_date = models.DateField(null = True)
    method = models.CharField(max_length = 50)
    courier = models.CharField(max_length = 50)

    class Meta():
        db_table = 'Shipment'

class Payment(models.Model):
    payment_id = models.AutoField(primary_key = True,null = False)
    gift = models.CharField(max_length = 10,null = True)
    billing_addr = models.CharField(max_length = 10, default = '')
    paid_date = models.DateField(null = True)
    card = models.IntegerField(default = 0)
    discount = models.IntegerField(null = True)

    class Meta():
        db_table = 'Payment'

class Order(models.Model):
    order_id = models.AutoField(primary_key = True, null = False)
    total_price = models.FloatField(default = 0.0)
    order_date = models.DateField(null = True)
    shipping = models.OneToOneField(Shipment, on_delete = models.CASCADE,default = 0)
    payment = models.OneToOneField(Payment,on_delete = models.CASCADE,default = 0)

    class Meta():
        db_table = 'Order'
        unique_together = (('order_id','shipping','payment'),)

class Member(models.Model):
    account_id = models.AutoField(primary_key= True,null = False)
    name = models.CharField(max_length = 100,default = '')
    email = models.CharField(max_length = 100,null = True)
    password = models.CharField (max_length = 20,default='')
    phone_num = models.IntegerField()

    class Meta():
        db_table = 'Member'

class Friend(models.Model):
    member = models.ForeignKey(Member,on_delete = models.CASCADE,related_name = 'member',default = '')
    friend = models.ForeignKey(Member,on_delete = models.CASCADE,related_name = 'friend',default = '')

    class Meta():
        db_table = 'Friend'
        unique_together =(('member','friend'),)


class Buyer(Member):
    membership_stt = models.IntegerField(default = 0)
    order= models.ForeignKey(Order,on_delete = models.CASCADE,default = '')
    default_addr = models.CharField(max_length = 100,default = '')

    class Meta():
        db_table = 'Buyer'

class Buyer_optional_addr(models.Model):
    buyer = models.ForeignKey(Buyer,on_delete = models.CASCADE,default = '')
    optional_addr = models.CharField(max_length = 100,null = True)

    class Meta():
        db_table = 'Buyer_Optional_Addr'
        unique_together = (('buyer','optional_addr'),)

class Buyer_card(models.Model):
    card = models.IntegerField(default = 0)
    buyer = models.ForeignKey(Buyer, on_delete = models.CASCADE, default = 0)

    class Meta():
        db_table = 'Buyer_Card'
        unique_together = (('buyer','card'),)

class Seller(Member):
    seller_phone_num = models.IntegerField()
    address = models.CharField(max_length = 100,default = '')
    country = models.CharField(max_length = 20,default = '')
    card_num = models.IntegerField(default = 0)
    card_expr_date = models.DateField()
    card_holder_name = models.CharField(max_length = 100,default = '')
    zip_code = models.IntegerField(null = True)
    company_name = models.CharField(max_length = 100,default = '')

    class Meta():
        db_table = 'Seller'

class Product(models.Model):
    product_id = models.AutoField(primary_key = True, null = False)
    stock = models.IntegerField(default = 0,null = False)
    descript = models.CharField(max_length = 500,default = '')
    product_name = models.CharField(max_length = 200,default = '')
    brand = models.CharField(max_length = 100,null = True)
    price = models.FloatField(default = 0.0)
    seller = models.ForeignKey(Seller,on_delete = models.CASCADE,default = '')
    discount = models.IntegerField(null = True)
    order = models.ManyToManyField(Order,db_table = 'Includes',related_name = 'Order_ID')

    class Meta():
        db_table = 'Product'
    
class Refunds(models.Model):
    product = models.ForeignKey(Product,on_delete = models.CASCADE,default = '')
    order = models.ForeignKey(Order,on_delete = models.CASCADE,default = '')
    buyer = models.ForeignKey(Buyer,on_delete = models.CASCADE,default = '')

    class Meta():
        db_table = 'Refunds'
        unique_together = (('order','product'),)

class Product_picture(models.Model):
    image = models.ImageField(null = True)
    product = models.ForeignKey(Product,on_delete = models.CASCADE,default = 0)

    class Meta():
        db_table = 'Product_Picture'
        unique_together = (('product','image'),)

class Feature(models.Model):
    product = models.ForeignKey(Product,on_delete = models.CASCADE,default = 0)
    feature = models.CharField(max_length = 100, null = True)

    class Meta():
        db_table = 'Feature'
        unique_together = (('product','feature'),)

class Review(models.Model):
    review_id = models.AutoField(primary_key = True)
    cmt = models.CharField(max_length = 500, default = '')
    rating = models.IntegerField(null = True)
    buyer = models.ForeignKey(Buyer, on_delete = models.CASCADE, default = 0)
    product = models.ForeignKey(Product, on_delete = models.CASCADE, default = 0)

    class Meta():
        db_table = 'Review'

class Category(models.Model):
    category_id = models.AutoField(primary_key = True)
    category_name = models.CharField(max_length = 100, default = '')

    class Meta():
        db_table = 'Category'

class Subcategory(models.Model):
    subcategory_name = models.CharField(max_length = 100, default = '')
    category = models.ForeignKey(Category, on_delete = models.CASCADE, default = 0)
    contains = models.ManyToManyField(Product, db_table = 'Contains')

    class Meta():
        db_table = 'Subcategory'
        unique_together = (('subcategory_name','category'),)

class List(models.Model):
    PRIVACY_MODES = (
        ('Pub','Public'),
        ('Pri','Private'),
    )
    name = models.AutoField(primary_key = True)
    privacy = models.CharField(max_length = 3,choices = PRIVACY_MODES, default = 'Pri')
    list_type = models.CharField(max_length = 20, default = '')
    member = models.ForeignKey(Member, on_delete = models.CASCADE, default = 0)

    class Meta():
        db_table = 'List'
        unique_together = (('member','name'),)


