.class public Lcn/nubia/commonui/widget/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/commonui/widget/a$c;
    }
.end annotation


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Lcn/nubia/video/list/app/a;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private e:I

.field private final f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Lcn/nubia/video/list/app/a;Lcn/nubia/commonui/widget/a$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lb/a/b/c/b/m;",
            ">;",
            "Lcn/nubia/video/list/app/a;",
            "Lcn/nubia/commonui/widget/a$c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcn/nubia/commonui/widget/a;->e:I

    .line 3
    new-instance v0, Lcn/nubia/commonui/widget/a$b;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/widget/a$b;-><init>(Lcn/nubia/commonui/widget/a;)V

    iput-object v0, p0, Lcn/nubia/commonui/widget/a;->f:Ljava/lang/Runnable;

    .line 4
    iput-object p2, p0, Lcn/nubia/commonui/widget/a;->c:Lcn/nubia/video/list/app/a;

    .line 5
    iput-object p1, p0, Lcn/nubia/commonui/widget/a;->a:Ljava/util/ArrayList;

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/commonui/widget/a;->d:Ljava/util/ArrayList;

    .line 7
    new-instance p1, Lcn/nubia/commonui/widget/a$a;

    invoke-direct {p1, p0, p3}, Lcn/nubia/commonui/widget/a$a;-><init>(Lcn/nubia/commonui/widget/a;Lcn/nubia/commonui/widget/a$c;)V

    iput-object p1, p0, Lcn/nubia/commonui/widget/a;->b:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/commonui/widget/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/commonui/widget/a;->e:I

    return p0
.end method

.method static synthetic b(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/a;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/commonui/widget/a;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/a;->a:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/commonui/widget/a;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/commonui/widget/a;->a:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic e(Lcn/nubia/commonui/widget/a;Lb/a/b/c/b/m;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/commonui/widget/a;->g(Lb/a/b/c/b/m;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/commonui/widget/a;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/commonui/widget/a;->b:Landroid/os/Handler;

    return-object p0
.end method

.method private g(Lb/a/b/c/b/m;)Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/nubia/commonui/widget/a;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->b()Lb/a/b/c/a/f;

    move-result-object v0

    .line 2
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/b/c/a/b;->b()Lb/a/b/c/a/b$b;

    move-result-object v7

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 4
    invoke-virtual {p1}, Lb/a/b/c/b/m;->n()I

    move-result v1

    int-to-long v4, v1

    move-object v1, v0

    move-object v6, v7

    .line 5
    invoke-virtual/range {v1 .. v6}, Lb/a/b/c/a/f;->b(Ljava/lang/String;IJLb/a/b/c/a/b$b;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v0, p1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 8
    sget-object v0, Lb/a/b/e/d;->d:Lb/a/b/e/d$d;

    iget-object v1, v7, Lb/a/b/c/a/b$b;->a:[B

    iget v2, v7, Lb/a/b/c/a/b$b;->b:I

    iget v3, v7, Lb/a/b/c/a/b$b;->c:I

    invoke-static {v0, v1, v2, v3, p1}, Lb/a/b/d/b;->c(Lb/a/b/e/d$d;[BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    return-object p1

    :cond_0
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v1

    invoke-virtual {v1, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    .line 10
    invoke-virtual {p1}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/nubia/commonui/widget/a;->h(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 11
    :cond_1
    invoke-static {v7}, Lb/a/b/d/a;->a(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    .line 12
    invoke-virtual {p1}, Lb/a/b/c/b/m;->s()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {p1}, Lb/a/b/c/b/m;->n()I

    move-result p1

    int-to-long v4, p1

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lb/a/b/c/a/f;->e(Ljava/lang/String;IJ[B)V

    return-object v7

    :catchall_0
    move-exception p1

    .line 13
    invoke-static {}, Lb/a/b/c/b/m;->l()Lb/a/b/c/a/b;

    move-result-object v0

    invoke-virtual {v0, v7}, Lb/a/b/c/a/b;->c(Lb/a/b/c/a/b$b;)V

    .line 14
    throw p1
.end method

.method private h(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1
    new-instance v0, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v0}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, p1, v1}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;Z)I

    move-result p1

    if-ltz p1, :cond_0

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getWidth()I

    move-result p1

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getHeight()I

    move-result v2

    .line 5
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result v3

    div-int/lit8 v3, v3, 0x4

    int-to-long v3, v3

    .line 6
    iget-object v5, p0, Lcn/nubia/commonui/widget/a;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {v5}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f07015a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 7
    iget-object v6, p0, Lcn/nubia/commonui/widget/a;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {v6}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070159

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    int-to-float v7, v5

    int-to-float p1, p1

    div-float/2addr v7, p1

    int-to-float v8, v6

    int-to-float v2, v2

    div-float/2addr v8, v2

    .line 8
    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    mul-float/2addr p1, v7

    float-to-int p1, p1

    mul-float/2addr v2, v7

    float-to-int v2, v2

    .line 9
    invoke-virtual {v0, p1, v2, v3, v4}, Lcn/nubia/video/mediajni/VideoItem;->getKeyFrameAt(IIJ)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 10
    invoke-static {p1, v5, v6, v1}, Lb/a/b/d/a;->e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    return-object p1
.end method


# virtual methods
.method public i()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcn/nubia/commonui/widget/a;->f:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
