.class public Lcn/nubia/collage/o/a/j;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/o/a/j$c;
    }
.end annotation


# static fields
.field private static a:Ljava/lang/String; = ""

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static final d:[Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/text/SimpleDateFormat;

.field private static g:Landroid/content/Context;

.field private static h:Landroid/location/Geocoder;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-string v0, "latitude"

    const-string v1, "longitude"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/collage/o/a/j;->d:[Ljava/lang/String;

    const-string v1, "Mon."

    const-string v2, "Tues."

    const-string v3, "Wed."

    const-string v4, "Thur."

    const-string v5, "Fri."

    const-string v6, "Sat."

    const-string v7, "Sun."

    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/collage/o/a/j;->e:[Ljava/lang/String;

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcn/nubia/collage/o/a/j;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method static synthetic a()Landroid/location/Geocoder;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->h:Landroid/location/Geocoder;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcn/nubia/collage/o/a/j;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic d()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    return-object v0
.end method

.method private static final e(D)Z
    .locals 2

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_1

    const-wide v0, -0x414f39085f4a1273L    # -1.0E-6

    cmpg-double p0, p0, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static f()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method public static g()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method private static h(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v3, "date_added"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v6

    new-array v8, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v1, v8, v3

    const/4 v9, 0x0

    const-string v7, "_data LIKE ? "

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    new-instance v0, Ljava/util/Date;

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long/2addr v3, v5

    invoke-direct {v0, v3, v4}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    :goto_1
    sget-object p0, Lcn/nubia/collage/o/a/j;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcn/nubia/collage/o/a/j;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object v0, Lcn/nubia/collage/o/a/j;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    sub-int/2addr p0, v2

    aget-object p0, v0, p0

    sput-object p0, Lcn/nubia/collage/o/a/j;->c:Ljava/lang/String;

    return-void
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcn/nubia/collage/o/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    sput-object p0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    new-instance p0, Landroid/location/Geocoder;

    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroid/location/Geocoder;-><init>(Landroid/content/Context;)V

    sput-object p0, Lcn/nubia/collage/o/a/j;->h:Landroid/location/Geocoder;

    new-instance p0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Ljava/util/Date;-><init>(J)V

    sget-object v0, Lcn/nubia/collage/o/a/j;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/nubia/collage/o/a/j;->b:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    sget-object p0, Lcn/nubia/collage/o/a/j;->e:[Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    sput-object p0, Lcn/nubia/collage/o/a/j;->c:Ljava/lang/String;

    return-void
.end method

.method private static k(Ljava/lang/String;Lcn/nubia/collage/o/a/j$c;)Z
    .locals 15

    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcn/nubia/collage/o/a/j;->d:[Ljava/lang/String;

    const/4 v0, 0x1

    new-array v5, v0, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p0, v5, v7

    const-string v4, "_data LIKE ?"

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    new-instance v13, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v13, v7}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v9

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v11

    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    invoke-static {v9, v10}, Lcn/nubia/collage/o/a/j;->e(D)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {v11, v12}, Lcn/nubia/collage/o/a/j;->e(D)Z

    move-result v1

    if-nez v1, :cond_0

    return v7

    :cond_0
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcn/nubia/collage/o/a/j$a;

    move-object v8, v2

    move-object/from16 v14, p1

    invoke-direct/range {v8 .. v14}, Lcn/nubia/collage/o/a/j$a;-><init>(DDLjava/util/concurrent/atomic/AtomicInteger;Lcn/nubia/collage/o/a/j$c;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return v0

    :cond_1
    return v7
.end method

.method private static l(Lcn/nubia/collage/o/a/j$c;)V
    .locals 2

    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/collage/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/collage/o/a/j$b;

    invoke-direct {v1, p0}, Lcn/nubia/collage/o/a/j$b;-><init>(Lcn/nubia/collage/o/a/j$c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static m(Ljava/util/List;Lcn/nubia/collage/o/a/j$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcn/nubia/collage/o/a/j$c;",
            ")V"
        }
    .end annotation

    invoke-static {p0}, Lcn/nubia/collage/o/a/j;->h(Ljava/util/List;)V

    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/collage/m;->j(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcn/nubia/collage/o/a/j;->g:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Lcn/nubia/permission/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p1}, Lcn/nubia/collage/o/a/j;->k(Ljava/lang/String;Lcn/nubia/collage/o/a/j$c;)Z

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string p0, "LYHP"

    const-string v0, "has no position during images"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcn/nubia/collage/o/a/j;->l(Lcn/nubia/collage/o/a/j$c;)V

    :cond_3
    :goto_1
    return-void
.end method
