.class Lcom/android/common/ui/shutterbutton/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Landroid/graphics/Bitmap;

.field b:Landroid/graphics/Bitmap;

.field c:Ljava/lang/Boolean;

.field d:Landroid/graphics/Paint;

.field e:Z

.field f:J

.field g:J

.field private h:F

.field private i:I

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/f;->c:Ljava/lang/Boolean;

    .line 24
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    .line 26
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/f;->e:Z

    const-wide/16 v0, 0x0

    .line 27
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/f;->f:J

    .line 28
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/f;->g:J

    const/high16 v0, 0x3f800000    # 1.0f

    .line 29
    iput v0, p0, Lcom/android/common/ui/shutterbutton/f;->h:F

    .line 33
    invoke-direct {p0, p1}, Lcom/android/common/ui/shutterbutton/f;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method private a(II)V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/a;->b(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/a;->b(Landroid/graphics/Bitmap;II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    iget-object v0, p0, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, p1, p2}, Lcom/android/common/ui/shutterbutton/a;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private a(Landroid/content/res/Resources;)V
    .locals 1

    .line 112
    new-instance v0, Lcom/android/common/ui/shutterbutton/f$1;

    invoke-direct {v0, p0, p1}, Lcom/android/common/ui/shutterbutton/f$1;-><init>(Lcom/android/common/ui/shutterbutton/f;Landroid/content/res/Resources;)V

    .line 123
    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/f$1;->start()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 37
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/f;->e:Z

    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/f;->f:J

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 53
    iget-object v2, v0, Lcom/android/common/ui/shutterbutton/f;->c:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    .line 56
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 57
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    .line 58
    iput v2, v0, Lcom/android/common/ui/shutterbutton/f;->i:I

    .line 59
    iput v4, v0, Lcom/android/common/ui/shutterbutton/f;->j:I

    .line 62
    invoke-direct {v0, v2, v4}, Lcom/android/common/ui/shutterbutton/f;->a(II)V

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const/4 v7, 0x0

    .line 67
    iget-boolean v8, v0, Lcom/android/common/ui/shutterbutton/f;->e:Z

    const v9, 0x3e4ccccc    # 0.19999999f

    const/high16 v10, 0x42c80000    # 100.0f

    if-eqz v8, :cond_2

    .line 68
    iget-wide v11, v0, Lcom/android/common/ui/shutterbutton/f;->f:J

    sub-long/2addr v5, v11

    long-to-float v5, v5

    div-float/2addr v5, v10

    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v8, v5, v6

    if-ltz v8, :cond_1

    move v5, v6

    goto :goto_0

    :cond_1
    move v7, v3

    .line 74
    :goto_0
    iget-object v8, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 75
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    mul-float/2addr v5, v9

    sub-float/2addr v6, v5

    .line 76
    div-int/lit8 v3, v2, 0x2

    int-to-float v3, v3

    div-int/lit8 v5, v4, 0x2

    int-to-float v5, v5

    invoke-virtual {v1, v6, v6, v3, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 77
    iget-object v3, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_1

    :cond_2
    if-nez v8, :cond_3

    .line 79
    iget-wide v11, v0, Lcom/android/common/ui/shutterbutton/f;->g:J

    sub-long v13, v5, v11

    const-wide/16 v15, 0x64

    cmp-long v8, v13, v15

    if-gez v8, :cond_3

    sub-long/2addr v5, v11

    long-to-float v5, v5

    div-float/2addr v5, v10

    .line 82
    iget-object v6, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    const v6, 0x3f4ccccd    # 0.8f

    mul-float/2addr v5, v9

    add-float/2addr v5, v6

    .line 84
    div-int/lit8 v6, v2, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v4, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, v5, v5, v6, v7}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 85
    iget-object v5, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int v6, v2, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v7, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v4, v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    iget-object v8, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 86
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_2

    .line 88
    :cond_3
    iget-object v3, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int v5, v2, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/common/ui/shutterbutton/f;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int v6, v4, v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    iget-object v8, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v3, v5, v6, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :goto_1
    move v3, v7

    .line 91
    :goto_2
    iget-object v5, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 92
    iget-object v5, v0, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    sub-int/2addr v2, v6

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget-object v6, v0, Lcom/android/common/ui/shutterbutton/f;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget-object v6, v0, Lcom/android/common/ui/shutterbutton/f;->d:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v2, v4, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return v3
.end method

.method public b()V
    .locals 8

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/common/ui/shutterbutton/f;->e:Z

    .line 43
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 44
    iget-wide v2, p0, Lcom/android/common/ui/shutterbutton/f;->f:J

    sub-long v4, v0, v2

    const-wide/16 v6, 0x64

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    add-long/2addr v2, v6

    sub-long/2addr v2, v0

    sub-long/2addr v0, v2

    .line 45
    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/f;->g:J

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/common/ui/shutterbutton/f;->g:J

    :goto_0
    return-void
.end method
