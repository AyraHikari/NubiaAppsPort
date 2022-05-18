.class public Lcn/nubia/collage/n/i;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile c:Lcn/nubia/collage/n/i;


# instance fields
.field private a:Lc/d/a/a/b/c;

.field private volatile b:Landroid/graphics/Bitmap;


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/i;->a:Lc/d/a/a/b/c;

    new-instance v0, Lcn/nubia/collage/n/i$a;

    const/16 v1, 0x9

    invoke-direct {v0, p0, v1}, Lcn/nubia/collage/n/i$a;-><init>(Lcn/nubia/collage/n/i;I)V

    iput-object v0, p0, Lcn/nubia/collage/n/i;->a:Lc/d/a/a/b/c;

    invoke-static {}, Lcn/nubia/collage/d;->g()I

    invoke-static {}, Lcn/nubia/collage/d;->f()I

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/n/i;)Landroid/graphics/Bitmap;
    .locals 0

    invoke-direct {p0}, Lcn/nubia/collage/n/i;->d()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/n/i;)Lc/d/a/a/b/c;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/i;->a:Lc/d/a/a/b/c;

    return-object p0
.end method

.method private d()Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcn/nubia/collage/d;->g()I

    move-result v0

    invoke-static {}, Lcn/nubia/collage/d;->f()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static e()Lcn/nubia/collage/n/i;
    .locals 2

    sget-object v0, Lcn/nubia/collage/n/i;->c:Lcn/nubia/collage/n/i;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/collage/n/i;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/i;->c:Lcn/nubia/collage/n/i;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/n/i;

    invoke-direct {v1}, Lcn/nubia/collage/n/i;-><init>()V

    sput-object v1, Lcn/nubia/collage/n/i;->c:Lcn/nubia/collage/n/i;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/collage/n/i;->c:Lcn/nubia/collage/n/i;

    return-object v0
.end method


# virtual methods
.method c()V
    .locals 1

    invoke-virtual {p0}, Lcn/nubia/collage/n/i;->f()V

    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/collage/n/i;->c:Lcn/nubia/collage/n/i;

    return-void
.end method

.method f()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/i;->a:Lc/d/a/a/b/c;

    invoke-interface {v0}, Lc/d/a/a/b/c;->clear()V

    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/i;->b:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method g(Landroid/widget/ImageView;Ljava/lang/String;Z)V
    .locals 1

    invoke-direct {p0}, Lcn/nubia/collage/n/i;->d()Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p1, "PhotoEditor"

    const-string p2, "ThumbnailBitmapCache showThumbnail empty"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p3, p0, Lcn/nubia/collage/n/i;->a:Lc/d/a/a/b/c;

    invoke-interface {p3, p2}, Lc/d/a/a/b/c;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const p3, 0x7f08018e

    invoke-virtual {p1, p3, p2}, Landroid/widget/ImageView;->setTag(ILjava/lang/Object;)V

    new-instance p3, Lcn/nubia/collage/n/i$b;

    const/4 v0, 0x0

    invoke-direct {p3, p0, p1, v0, p2}, Lcn/nubia/collage/n/i$b;-><init>(Lcn/nubia/collage/n/i;Landroid/view/View;ZLjava/lang/String;)V

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Lcn/nubia/collage/n/a;->i(Lc/d/a/b/n/a;Ljava/lang/String;Lcn/nubia/collage/n/a$b;)V

    :goto_0
    return-void
.end method
