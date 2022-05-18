.class public Lcn/nubia/video/mediaeditorview/simpleeditor/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;,
        Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;
    }
.end annotation


# static fields
.field private static g:Lcn/nubia/video/mediaeditorview/simpleeditor/g;


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->a:Ljava/lang/Object;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    .line 5
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->f:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/simpleeditor/g;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->d:I

    return p0
.end method

.method static synthetic d(Lcn/nubia/video/mediaeditorview/simpleeditor/g;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->d:I

    return p1
.end method

.method static synthetic e(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic f(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->f:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/video/mediaeditorview/simpleeditor/g;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public static h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_0
    return-object p0
.end method

.method public static declared-synchronized i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;
    .locals 2

    const-class v0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    invoke-direct {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;-><init>()V

    sput-object v1, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    .line 3
    :cond_0
    sget-object v1, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->g:Lcn/nubia/video/mediaeditorview/simpleeditor/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static m(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ne v0, p1, :cond_0

    if-ne v1, p2, :cond_0

    return-object p0

    :cond_0
    int-to-float v2, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    int-to-float v0, p2

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 3
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 4
    invoke-static {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->h(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-static {p1, p2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 6
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 7
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    sub-int/2addr p1, v2

    int-to-float p1, p1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr p1, v2

    sub-int/2addr p2, v3

    int-to-float p2, p2

    div-float/2addr p2, v2

    .line 8
    invoke-virtual {v4, p1, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    invoke-virtual {v4, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x6

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    const/4 p2, 0x0

    .line 11
    invoke-virtual {v4, p0, p2, p2, p1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    if-eqz p3, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    return-object v1
.end method


# virtual methods
.method public j(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->k(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;Z)V

    return-void
.end method

.method public k(Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;Z)V
    .locals 1

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->l()V

    .line 2
    :cond_0
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e:Ljava/lang/String;

    if-eqz p3, :cond_2

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->d:I

    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b:Ljava/util/ArrayList;

    invoke-interface {p2, p1, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;->a(ILjava/util/ArrayList;)V

    goto :goto_1

    .line 4
    :cond_2
    :goto_0
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e:Ljava/lang/String;

    .line 5
    new-instance p3, Ljava/lang/Thread;

    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;

    invoke-direct {v0, p0, p1, p2}, Lcn/nubia/video/mediaeditorview/simpleeditor/g$c;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/g;Ljava/lang/String;Lcn/nubia/video/mediaeditorview/simpleeditor/g$b;)V

    invoke-direct {p3, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p3}, Ljava/lang/Thread;->start()V

    :goto_1
    return-void
.end method

.method public l()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->e:Ljava/lang/String;

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->d:I

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
