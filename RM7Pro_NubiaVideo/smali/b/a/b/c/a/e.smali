.class public abstract Lb/a/b/c/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/b/e/d$c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lb/a/b/e/d$c<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected a:Lcn/nubia/video/list/app/a;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:J


# direct methods
.method public constructor <init>(Lcn/nubia/video/list/app/a;Ljava/lang/String;IJI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb/a/b/c/a/e;->a:Lcn/nubia/video/list/app/a;

    .line 3
    iput-object p2, p0, Lb/a/b/c/a/e;->b:Ljava/lang/String;

    .line 4
    iput p3, p0, Lb/a/b/c/a/e;->c:I

    .line 5
    iput-wide p4, p0, Lb/a/b/c/a/e;->d:J

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lb/a/b/e/d$d;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lb/a/b/c/a/e;->c(Lb/a/b/e/d$d;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public abstract b(Lb/a/b/e/d$d;I)Landroid/graphics/Bitmap;
.end method

.method public c(Lb/a/b/e/d$d;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lb/a/b/c/a/e;->a:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->b()Lb/a/b/c/a/f;

    move-result-object v0

    .line 2
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/b/c/a/b;->b()Lb/a/b/c/a/b$b;

    move-result-object v7

    .line 3
    :try_start_0
    iget-object v2, p0, Lb/a/b/c/a/e;->b:Ljava/lang/String;

    iget v3, p0, Lb/a/b/c/a/e;->c:I

    iget-wide v4, p0, Lb/a/b/c/a/e;->d:J

    move-object v1, v0

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Lb/a/b/c/a/f;->b(Ljava/lang/String;IJLb/a/b/c/a/b$b;)Z

    move-result v1

    .line 4
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object p1

    invoke-virtual {p1, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    return-object v3

    :cond_0
    const-string v2, "ImageCacheRequest"

    if-eqz v1, :cond_2

    .line 6
    :try_start_1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8
    iget-object v1, v7, Lb/a/b/c/a/b$b;->a:[B

    iget v3, v7, Lb/a/b/c/a/b$b;->b:I

    iget v4, v7, Lb/a/b/c/a/b$b;->c:I

    invoke-static {p1, v1, v3, v4, v0}, Lb/a/b/d/b;->c(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 9
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "decode cached failed mPath is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lb/a/b/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :cond_1
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object p1

    invoke-virtual {p1, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    return-object v0

    :cond_2
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    .line 12
    iget v1, p0, Lb/a/b/c/a/e;->c:I

    invoke-virtual {p0, p1, v1}, Lb/a/b/c/a/e;->b(Lb/a/b/e/d$d;I)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 13
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_3

    return-object v3

    :cond_3
    if-nez v7, :cond_4

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "decode orig failed mPath is: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lb/a/b/c/a/e;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 15
    :cond_4
    invoke-static {v7}, Lb/a/b/d/a;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 16
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_5

    return-object v3

    .line 17
    :cond_5
    iget-object v2, p0, Lb/a/b/c/a/e;->b:Ljava/lang/String;

    iget v3, p0, Lb/a/b/c/a/e;->c:I

    iget-wide v4, p0, Lb/a/b/c/a/e;->d:J

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lb/a/b/c/a/f;->e(Ljava/lang/String;IJ[B)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 18
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    .line 19
    throw p1
.end method
