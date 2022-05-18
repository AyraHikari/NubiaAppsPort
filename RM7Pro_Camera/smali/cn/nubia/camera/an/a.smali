.class public Lcn/nubia/camera/an/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/an/a$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:D

.field private f:Landroid/graphics/Rect;

.field private g:Lcn/nubia/camera/ad/a;

.field private h:Landroid/graphics/Rect;

.field private i:Landroid/graphics/Rect;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/an/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/os/Handler;

.field private l:Landroid/content/Context;

.field private final m:Landroid/graphics/Rect;

.field private n:F

.field private o:Z

.field private final p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/graphics/Rect;Lcn/nubia/camera/ad/a;F)V
    .locals 6

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    .line 61
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/an/a;->h:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 65
    iput-object p2, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    .line 66
    iput-object p2, p0, Lcn/nubia/camera/an/a;->k:Landroid/os/Handler;

    .line 67
    iput-object p2, p0, Lcn/nubia/camera/an/a;->l:Landroid/content/Context;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 69
    iput p2, p0, Lcn/nubia/camera/an/a;->n:F

    const/4 p2, 0x0

    .line 71
    iput-boolean p2, p0, Lcn/nubia/camera/an/a;->o:Z

    .line 75
    iput-object p1, p0, Lcn/nubia/camera/an/a;->l:Landroid/content/Context;

    .line 76
    iput-object p3, p0, Lcn/nubia/camera/an/a;->k:Landroid/os/Handler;

    .line 77
    iput-object p5, p0, Lcn/nubia/camera/an/a;->g:Lcn/nubia/camera/ad/a;

    .line 78
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct {p3, p4}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object p3, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    .line 80
    invoke-static {}, Lcn/nubia/camera/ba/a;->i()F

    move-result p3

    iput p3, p0, Lcn/nubia/camera/an/a;->n:F

    .line 81
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "mScale: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget p4, p0, Lcn/nubia/camera/an/a;->n:F

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "PreviewAreaController"

    invoke-static {p4, p3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/an/a;->a:I

    .line 84
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p3

    iput p3, p0, Lcn/nubia/camera/an/a;->b:I

    .line 85
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p3

    int-to-float p3, p3

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result p4

    int-to-float p4, p4

    div-float/2addr p3, p4

    iput p3, p0, Lcn/nubia/camera/an/a;->p:F

    float-to-double p4, p3

    const-wide v0, 0x4001c71c71c71c72L    # 2.2222222222222223

    sub-double/2addr p4, v0

    .line 87
    invoke-static {p4, p5}, Ljava/lang/Math;->abs(D)D

    move-result-wide p4

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    cmpg-double p4, p4, v0

    const p5, 0x7f0701da

    if-ltz p4, :cond_1

    float-to-double v0, p3

    const-wide v2, 0x4001555555555555L    # 2.1666666666666665

    sub-double/2addr v0, v2

    .line 88
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double p4, v0, v2

    if-ltz p4, :cond_1

    float-to-double v0, p3

    const-wide v4, 0x4000e38e38e38e39L    # 2.111111111111111

    sub-double/2addr v0, v4

    .line 89
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double p4, v0, v2

    if-ltz p4, :cond_1

    float-to-double p3, p3

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sub-double/2addr p3, v0

    .line 90
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    cmpg-double p3, p3, v2

    if-gez p3, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    iput p2, p0, Lcn/nubia/camera/an/a;->c:I

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f07019a

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p3, p4

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070134

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p0, Lcn/nubia/camera/an/a;->n:F

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcn/nubia/camera/an/a;->d:I

    goto :goto_1

    .line 91
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0701d9

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p3, p4

    .line 93
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f0700a5

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    add-int/2addr p3, p4

    int-to-float p3, p3

    iget p4, p0, Lcn/nubia/camera/an/a;->n:F

    mul-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcn/nubia/camera/an/a;->d:I

    .line 94
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p3

    int-to-float p3, p3

    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p4

    const p5, 0x7f070058

    invoke-virtual {p4, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f0700e9

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    add-int/2addr p4, p5

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    const v0, 0x7f070133

    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    add-int/2addr p4, p5

    int-to-float p4, p4

    iget p5, p0, Lcn/nubia/camera/an/a;->n:F

    mul-float/2addr p4, p5

    sub-float/2addr p3, p4

    float-to-int p3, p3

    iput p3, p0, Lcn/nubia/camera/an/a;->c:I

    .line 104
    :goto_1
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    .line 105
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p3

    iget p4, p0, Lcn/nubia/camera/an/a;->d:I

    sub-int/2addr p3, p4

    int-to-float p4, p3

    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p5, 0x7f07011d

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    iget p5, p0, Lcn/nubia/camera/an/a;->n:F

    mul-float/2addr p1, p5

    sub-float/2addr p4, p1

    float-to-int p1, p4

    .line 107
    new-instance p4, Landroid/graphics/Rect;

    invoke-static {}, Lcn/nubia/camera/ba/a;->f()I

    move-result p5

    invoke-direct {p4, p2, p1, p5, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p4, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    .line 109
    invoke-virtual {p0, p6}, Lcn/nubia/camera/an/a;->a(F)V

    .line 111
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget p2, p0, Lcn/nubia/camera/an/a;->c:I

    invoke-virtual {p1, p4, p2}, Lcn/nubia/camera/ba/f;->a(Landroid/graphics/Rect;I)V

    return-void
.end method

.method private a(Landroid/graphics/Rect;D)Landroid/graphics/Rect;
    .locals 8

    .line 260
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-double v0, v0

    sub-double/2addr v0, p2

    .line 261
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f847ae140000000L    # 0.009999999776482582

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    .line 262
    iget-object p2, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result p3

    if-le p2, p3, :cond_0

    .line 263
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-static {}, Lcn/nubia/camera/ba/a;->d()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    add-int/2addr p3, p2

    .line 265
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v0, p2, v1, p3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/16 :goto_2

    .line 267
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    .line 270
    :cond_1
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 271
    iget-object v3, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    iget-object v6, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v3, v6

    float-to-double v6, v3

    sub-double/2addr v6, p2

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    cmpg-double v3, v6, v4

    if-gez v3, :cond_2

    .line 273
    new-instance v0, Landroid/graphics/Rect;

    iget-object p1, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_2

    :cond_2
    const-wide/16 v3, 0x0

    cmpg-double v0, v0, v3

    if-gez v0, :cond_4

    .line 276
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double/2addr v0, p2

    double-to-int p2, v0

    .line 278
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    sub-int p3, p2, p3

    div-int/lit8 p3, p3, 0x2

    .line 279
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iput v0, v2, Landroid/graphics/Rect;->top:I

    .line 280
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, v2, Landroid/graphics/Rect;->bottom:I

    .line 281
    iget-object v0, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lt v0, p2, :cond_3

    iget v0, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, p3

    if-gez v0, :cond_3

    .line 283
    iget-object p1, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    iput p1, v2, Landroid/graphics/Rect;->left:I

    .line 284
    iget p1, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, p2

    iput p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 286
    :cond_3
    iget p2, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p2, p3

    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 287
    iget p1, p1, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, p3

    iput p1, v2, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 290
    :cond_4
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    div-double/2addr v0, p2

    double-to-int p2, v0

    .line 291
    iget p3, p1, Landroid/graphics/Rect;->bottom:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p3, v0

    sub-int p3, p2, p3

    div-int/lit8 p3, p3, 0x2

    .line 292
    iget-object v0, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-lt v0, p2, :cond_5

    iget v0, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, p3

    if-gez v0, :cond_5

    .line 294
    iget-object p3, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    sub-int/2addr p3, p2

    div-int/lit8 p3, p3, 0x2

    iput p3, v2, Landroid/graphics/Rect;->top:I

    .line 295
    iget p3, v2, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, p2

    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 297
    :cond_5
    iget p2, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr p2, p3

    iput p2, v2, Landroid/graphics/Rect;->top:I

    .line 298
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p2, p3

    iput p2, v2, Landroid/graphics/Rect;->bottom:I

    .line 301
    :goto_0
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget-object p3, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sub-int/2addr p3, v0

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p2, p3

    iput p2, v2, Landroid/graphics/Rect;->left:I

    .line 302
    iget p2, v2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    add-int/2addr p2, p1

    iput p2, v2, Landroid/graphics/Rect;->right:I

    :goto_1
    move-object v0, v2

    :goto_2
    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/an/a;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method private a(Lcn/nubia/camera/an/a$a;IIII)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 349
    :cond_0
    invoke-interface {p1}, Lcn/nubia/camera/an/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 351
    iget-object v0, p0, Lcn/nubia/camera/an/a;->k:Landroid/os/Handler;

    new-instance v8, Lcn/nubia/camera/an/a$2;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcn/nubia/camera/an/a$2;-><init>(Lcn/nubia/camera/an/a;Lcn/nubia/camera/an/a$a;IIII)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move-object v0, p1

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 360
    invoke-interface/range {v0 .. v5}, Lcn/nubia/camera/an/a$a;->a(Lcn/nubia/camera/an/a;IIII)V

    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/an/a$a;IIIIIIII)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    .line 325
    :cond_0
    invoke-interface {p1}, Lcn/nubia/camera/an/a$a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_1

    move-object v11, p0

    .line 327
    iget-object v12, v11, Lcn/nubia/camera/an/a;->k:Landroid/os/Handler;

    new-instance v13, Lcn/nubia/camera/an/a$1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcn/nubia/camera/an/a$1;-><init>(Lcn/nubia/camera/an/a;Lcn/nubia/camera/an/a$a;IIIIIIII)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    move-object v11, p0

    move-object v0, p1

    move-object v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    .line 338
    invoke-interface/range {v0 .. v9}, Lcn/nubia/camera/an/a$a;->a(Lcn/nubia/camera/an/a;IIIIIIII)V

    :goto_0
    return-void
.end method

.method private a(Lcn/nubia/camera/an/a;IIIIIIII)V
    .locals 14

    move-object v10, p0

    .line 312
    iget-object v0, v10, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 313
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    array-length v12, v11

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_0

    aget-object v0, v11, v13

    .line 314
    move-object v1, v0

    check-cast v1, Lcn/nubia/camera/an/a$a;

    move-object v0, p0

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-direct/range {v0 .. v9}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;IIIIIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized j()V
    .locals 17

    move-object/from16 v11, p0

    monitor-enter p0

    .line 181
    :try_start_0
    iget v0, v11, Lcn/nubia/camera/an/a;->a:I

    if-eqz v0, :cond_7

    iget v1, v11, Lcn/nubia/camera/an/a;->b:I

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 187
    :cond_0
    iget-object v2, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v7, v2, Landroid/graphics/Rect;->left:I

    .line 188
    iget-object v2, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v9, v2, Landroid/graphics/Rect;->right:I

    .line 189
    iget-object v2, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v8, v2, Landroid/graphics/Rect;->top:I

    .line 190
    iget-object v2, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    .line 192
    iget v2, v11, Lcn/nubia/camera/an/a;->b:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v3

    sub-int/2addr v2, v3

    const-string v3, "PreviewAreaController"

    .line 193
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "original preview dimensions are "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " x "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "; NavigationBar: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, v1, :cond_1

    move/from16 v16, v1

    move v1, v0

    move/from16 v0, v16

    :cond_1
    int-to-double v2, v1

    .line 205
    iget-wide v4, v11, Lcn/nubia/camera/an/a;->e:D

    mul-double/2addr v2, v4

    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v12

    double-to-int v2, v2

    if-le v2, v0, :cond_2

    int-to-double v1, v0

    div-double/2addr v1, v4

    double-to-int v1, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    shr-int/lit8 v0, v0, 0x1

    shl-int/lit8 v0, v0, 0x1

    shr-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x1

    const-string v2, "PreviewAreaController"

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preview dimensions are "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " x "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    add-int/2addr v0, v2

    .line 225
    iget-wide v3, v11, Lcn/nubia/camera/an/a;->e:D

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v3, v5, v3

    iget v12, v11, Lcn/nubia/camera/an/a;->p:F

    float-to-double v12, v12

    sub-double/2addr v3, v12

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const-wide v12, 0x3fb99999a0000000L    # 0.10000000149011612

    cmpg-double v3, v3, v12

    if-gez v3, :cond_3

    .line 227
    iget v1, v11, Lcn/nubia/camera/an/a;->b:I

    move v3, v2

    goto :goto_2

    .line 228
    :cond_3
    iget-wide v3, v11, Lcn/nubia/camera/an/a;->e:D

    div-double v3, v5, v3

    const-wide v14, 0x3ffc71c71c71c71cL    # 1.7777777777777777

    sub-double/2addr v3, v14

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-gez v3, :cond_4

    .line 229
    iget v3, v11, Lcn/nubia/camera/an/a;->c:I

    :goto_1
    add-int/2addr v1, v3

    goto :goto_2

    .line 231
    :cond_4
    iget-wide v3, v11, Lcn/nubia/camera/an/a;->e:D

    div-double v3, v5, v3

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v12

    if-gez v3, :cond_5

    .line 232
    iget-object v3, v11, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    iget-object v4, v11, Lcn/nubia/camera/an/a;->l:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070134

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iget v5, v11, Lcn/nubia/camera/an/a;->n:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    float-to-int v3, v3

    sub-int v1, v3, v1

    move/from16 v16, v3

    move v3, v1

    move/from16 v1, v16

    goto :goto_2

    .line 235
    :cond_5
    iget-object v3, v11, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 239
    :goto_2
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v2, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    .line 240
    iget-wide v0, v11, Lcn/nubia/camera/an/a;->e:D

    invoke-direct {v11, v4, v0, v1}, Lcn/nubia/camera/an/a;->a(Landroid/graphics/Rect;D)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, v11, Lcn/nubia/camera/an/a;->h:Landroid/graphics/Rect;

    .line 241
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v0

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v1

    if-eq v0, v1, :cond_6

    iget-object v0, v11, Lcn/nubia/camera/an/a;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 242
    iget-object v0, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_6

    .line 244
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    .line 247
    :cond_6
    iget-object v0, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, v11, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v1, p0

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v10}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a;IIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 250
    monitor-exit p0

    return-void

    .line 183
    :cond_7
    :goto_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/an/a;->i:Landroid/graphics/Rect;

    return-object v0
.end method

.method public declared-synchronized a(F)V
    .locals 5

    monitor-enter p0

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_2

    .line 130
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/an/a;->o:Z

    if-eqz v0, :cond_0

    .line 131
    iget p1, p0, Lcn/nubia/camera/an/a;->p:F

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    .line 137
    iget-wide v1, p0, Lcn/nubia/camera/an/a;->e:D

    float-to-double v3, v0

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_1

    .line 138
    iput-wide v3, p0, Lcn/nubia/camera/an/a;->e:D

    const-string p1, "PreviewAreaController"

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAspectRatio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/nubia/camera/an/a;->e:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-direct {p0}, Lcn/nubia/camera/an/a;->j()V

    .line 142
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/an/a;->h:Landroid/graphics/Rect;

    iget-wide v1, p0, Lcn/nubia/camera/an/a;->e:D

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/ba/f;->a(Landroid/graphics/Rect;D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    .line 128
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public a(Lcn/nubia/camera/an/a$a;)V
    .locals 7

    if-eqz p1, :cond_0

    .line 365
    iget-object v0, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 366
    iget-object v0, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/an/a;->a(Lcn/nubia/camera/an/a$a;IIII)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 123
    iput-boolean p1, p0, Lcn/nubia/camera/an/a;->o:Z

    .line 124
    iget p1, p0, Lcn/nubia/camera/an/a;->p:F

    invoke-virtual {p0, p1}, Lcn/nubia/camera/an/a;->a(F)V

    return-void
.end method

.method public a(FF)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()I
    .locals 1

    .line 119
    iget v0, p0, Lcn/nubia/camera/an/a;->b:I

    return v0
.end method

.method public b(Lcn/nubia/camera/an/a$a;)V
    .locals 2

    .line 372
    iget-object v0, p0, Lcn/nubia/camera/an/a;->j:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 373
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 374
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 375
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/an/a$a;

    if-ne p1, v1, :cond_0

    .line 377
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    return v0
.end method

.method public e()Landroid/graphics/Rect;
    .locals 1

    .line 160
    iget-object v0, p0, Lcn/nubia/camera/an/a;->f:Landroid/graphics/Rect;

    return-object v0
.end method

.method public f()Landroid/graphics/Rect;
    .locals 1

    .line 164
    iget-object v0, p0, Lcn/nubia/camera/an/a;->h:Landroid/graphics/Rect;

    return-object v0
.end method

.method public g()D
    .locals 2

    .line 177
    iget-wide v0, p0, Lcn/nubia/camera/an/a;->e:D

    return-wide v0
.end method

.method public h()Landroid/graphics/Rect;
    .locals 5

    .line 404
    iget-object v0, p0, Lcn/nubia/camera/an/a;->l:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result v1

    invoke-static {}, Lcn/nubia/camera/ba/a;->e()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lez v0, :cond_0

    .line 407
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    add-int/2addr v4, v0

    invoke-direct {v1, v2, v0, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1

    .line 410
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/an/a;->m:Landroid/graphics/Rect;

    return-object v0
.end method

.method public i()I
    .locals 1

    .line 414
    iget v0, p0, Lcn/nubia/camera/an/a;->c:I

    return v0
.end method
