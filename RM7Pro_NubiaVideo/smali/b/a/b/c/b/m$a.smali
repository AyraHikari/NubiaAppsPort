.class public Lb/a/b/c/b/m$a;
.super Lb/a/b/c/a/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/b/c/b/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/nubia/video/list/app/a;ILjava/lang/String;Ljava/lang/String;J)V
    .locals 7

    const/16 v6, 0x64

    move-object v0, p0

    move-object v1, p1

    move-object v2, p4

    move v3, p2

    move-wide v4, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lb/a/b/c/a/e;-><init>(Lcn/nubia/video/list/app/a;Ljava/lang/String;IJI)V

    .line 2
    iput-object p3, p0, Lb/a/b/c/b/m$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public b(Lb/a/b/e/d$d;I)Landroid/graphics/Bitmap;
    .locals 10

    .line 1
    new-instance v0, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    .line 2
    iget-object v1, p0, Lb/a/b/c/b/m$a;->e:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;Z)I

    move-result v1

    const/4 v3, 0x0

    if-ltz v1, :cond_4

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getWidth()I

    move-result v1

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getHeight()I

    move-result v4

    .line 5
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v5

    const/4 v6, 0x4

    div-int/2addr v5, v6

    int-to-long v7, v5

    if-ne p2, v2, :cond_0

    .line 6
    invoke-static {}, Lb/a/b/c/b/m;->c()I

    move-result p2

    .line 7
    invoke-static {}, Lb/a/b/c/b/m;->d()I

    move-result v5

    goto :goto_0

    :cond_0
    const/4 v5, 0x2

    if-ne p2, v5, :cond_1

    .line 8
    invoke-static {}, Lb/a/b/c/b/m;->e()I

    move-result p2

    .line 9
    invoke-static {}, Lb/a/b/c/b/m;->f()I

    move-result v5

    goto :goto_0

    :cond_1
    const/4 v5, 0x3

    if-ne p2, v5, :cond_2

    .line 10
    invoke-static {}, Lb/a/b/c/b/m;->g()I

    move-result p2

    .line 11
    invoke-static {}, Lb/a/b/c/b/m;->h()I

    move-result v5

    goto :goto_0

    :cond_2
    if-ne p2, v6, :cond_3

    .line 12
    invoke-static {}, Lb/a/b/c/b/m;->i()I

    move-result p2

    .line 13
    invoke-static {}, Lb/a/b/c/b/m;->j()I

    move-result v5

    goto :goto_0

    :cond_3
    move p2, v1

    move v5, v4

    :goto_0
    int-to-float v6, p2

    int-to-float v1, v1

    div-float/2addr v6, v1

    int-to-float v9, v5

    int-to-float v4, v4

    div-float/2addr v9, v4

    .line 14
    invoke-static {v6, v9}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v1, v6

    float-to-int v1, v1

    mul-float/2addr v4, v6

    float-to-int v4, v4

    .line 15
    invoke-virtual {v0, v1, v4, v7, v8}, Lcn/nubia/video/mediajni/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 16
    invoke-static {v1, p2, v5, v2}, Lb/a/b/d/a;->e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_4
    move-object v1, v3

    .line 17
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 18
    invoke-interface {p1}, Lb/a/b/e/d$d;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_2

    :cond_6
    move-object v3, v1

    :goto_2
    return-object v3
.end method
