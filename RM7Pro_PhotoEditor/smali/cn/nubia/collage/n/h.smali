.class public Lcn/nubia/collage/n/h;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/collage/n/h$c;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/StringBuilder;

.field private static volatile d:Lcn/nubia/collage/n/h;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/collage/n/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    new-instance v0, Lcn/nubia/collage/n/h$a;

    invoke-direct {v0, p0, p1}, Lcn/nubia/collage/n/h$a;-><init>(Lcn/nubia/collage/n/h;I)V

    iput-object v0, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method static synthetic a(Lcn/nubia/collage/n/h;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/h;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/collage/n/h;)Landroid/support/v4/util/LruCache;
    .locals 0

    iget-object p0, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    return-object p0
.end method

.method public static f()Lcn/nubia/collage/n/h;
    .locals 3

    sget-object v0, Lcn/nubia/collage/n/h;->d:Lcn/nubia/collage/n/h;

    if-nez v0, :cond_1

    const-class v0, Lcn/nubia/collage/n/h;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcn/nubia/collage/n/h;->d:Lcn/nubia/collage/n/h;

    if-nez v1, :cond_0

    new-instance v1, Lcn/nubia/collage/n/h;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcn/nubia/collage/n/h;-><init>(I)V

    sput-object v1, Lcn/nubia/collage/n/h;->d:Lcn/nubia/collage/n/h;

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
    sget-object v0, Lcn/nubia/collage/n/h;->d:Lcn/nubia/collage/n/h;

    return-object v0
.end method


# virtual methods
.method c()V
    .locals 1

    invoke-virtual {p0}, Lcn/nubia/collage/n/h;->i()V

    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/collage/n/h;->d:Lcn/nubia/collage/n/h;

    return-void
.end method

.method d(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/h;->a:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/collage/n/h;->e(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method e(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3

    iget-object v0, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/nubia/collage/n/a;->r(Ljava/lang/String;Lc/d/a/b/j/e;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_3

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    return-object v1
.end method

.method g(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0, p1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public h(Lcn/nubia/collage/o/b/k;Ljava/lang/String;Lcn/nubia/collage/n/h$c;)Z
    .locals 12

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    invoke-static {p2}, Lcn/nubia/collage/m;->k(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v1, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, p2}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcn/nubia/collage/o/b/k;->e()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/collage/o/a/d;

    instance-of v5, v3, Lcn/nubia/collage/o/a/e;

    if-eqz v5, :cond_1

    if-eqz v1, :cond_2

    move-object v5, v3

    check-cast v5, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_2
    move-object v5, v3

    check-cast v5, Lcn/nubia/collage/o/a/e;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/e;->h()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_4
    move v4, v0

    :goto_1
    if-nez v4, :cond_1

    sget-object v4, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    invoke-virtual {v4, v0, v6}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/nubia/collage/o/a/e;->f()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcn/nubia/collage/n/h;->c:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v4, Lc/d/a/b/j/e;

    invoke-virtual {v3}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v3}, Lcn/nubia/collage/o/a/d;->e()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-direct {v4, v5, v3}, Lc/d/a/b/j/e;-><init>(II)V

    invoke-interface {v9, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {p3, p1, p2}, Lcn/nubia/collage/n/h$c;->a(Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V

    return v4

    :cond_6
    invoke-static {}, Lcn/nubia/collage/n/a;->l()Lcn/nubia/collage/n/a;

    move-result-object v1

    new-instance v10, Lcn/nubia/collage/n/g;

    new-instance v11, Lcn/nubia/collage/n/h$b;

    move-object v2, v11

    move-object v3, p0

    move-object v4, v8

    move-object v5, p3

    move-object v6, p1

    move-object v7, p2

    invoke-direct/range {v2 .. v7}, Lcn/nubia/collage/n/h$b;-><init>(Lcn/nubia/collage/n/h;Ljava/util/List;Lcn/nubia/collage/n/h$c;Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V

    invoke-direct {v10, v8, v9, v11}, Lcn/nubia/collage/n/g;-><init>(Ljava/util/List;Ljava/util/List;Lcn/nubia/collage/n/e;)V

    invoke-virtual {v1, v10}, Lcn/nubia/collage/n/a;->p(Lcn/nubia/collage/n/g;)V

    return v0

    :cond_7
    :goto_2
    const-string v1, "PhotoEditor"

    const-string v2, "MBC template is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p3, p1, p2}, Lcn/nubia/collage/n/h$c;->a(Lcn/nubia/collage/o/b/k;Ljava/lang/String;)V

    return v0
.end method

.method i()V
    .locals 1

    iget-object v0, p0, Lcn/nubia/collage/n/h;->b:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method j(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcn/nubia/collage/n/h;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
