#FOOD DELIVERY DATABASE

جدول users
شامل اطلاعات کلی همه کاربران (هم دانشجو، هم استاد)

ستون‌ها: شناسه (id)، نام کامل، کد ملی (یکتا)، نقش (student یا professor)

نقش تعیین می‌کنه که هر کاربر چه نوع کاربری داره

جدول students
اطلاعات اختصاصی دانشجوها

کلید اصلی: id که همون id جدول users هست (ارتباط یک‌به‌یک)

ستون‌های اضافی: شماره دانشجویی، رشته تحصیلی

ارتباط با users از طریق foreign key و حذف cascade (اگه کاربر حذف بشه، اطلاعات دانشجویی هم حذف می‌شه)

جدول professors
اطلاعات اختصاصی اساتید

کلید اصلی: id که معادل id جدول users هست

ستون‌های اضافی: شماره پرسنلی، دپارتمان، تحصیلات

ارتباط با users مشابه students

جدول foodItem
لیست آیتم‌های غذایی

ستون‌ها: شناسه غذا، نام غذا، قیمت، تاریخ انتشار، و ارجاع به روز هفته (dayId)

ستون dayId با کلید خارجی به جدول days وصل شده تا مشخص کنه این غذا مربوط به کدوم روز هست

جدول days
جدول کمکی برای روزهای هفته (شنبه تا جمعه)

ستون‌ها: شناسه روز و نام روز (enum)

جدول orders
سفارش‌های ثبت شده توسط کاربران

ستون‌ها: شناسه سفارش، شناسه شخص (personId) که به users اشاره داره، شناسه غذا، تاریخ سفارش، و وضعیت سفارش (pending, confirmed, cancelled)

هر سفارش به یک کاربر و یک غذا وصل می‌شه

از طریق foreign key به users و foodItem ارتباط داره

ارتباط یک‌به‌یک بین users و students/professors برقرار شده

قابلیت حذف cascade برای حفظ یکپارچگی داده‌ها وجود داره

امکان ثبت چند سفارش توسط هر کاربر فراهم شده

دیاگرام :
![image](https://github.com/user-attachments/assets/0fddc1f8-a93e-4dc8-be31-476d80e2097f)


