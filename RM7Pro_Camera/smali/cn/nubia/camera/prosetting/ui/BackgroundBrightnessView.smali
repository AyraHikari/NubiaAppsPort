.class public Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private x:[I

.field private y:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x6

    new-array p1, p1, [I

    .line 17
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->y:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a()V

    .line 35
    sget-object p1, Lcn/nubia/camera/w/b;->l:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
    .end array-data
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    .line 92
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 93
    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 107
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 108
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 109
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 111
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a()V
    .locals 3

    const/4 v0, 0x0

    .line 45
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 46
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->y:Ljava/util/concurrent/ConcurrentSkipListSet;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 53
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 54
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 58
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 63
    :goto_1
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a:Landroid/content/Context;

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 65
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->t:Landroid/graphics/Paint;

    .line 64
    :goto_2
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 67
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 68
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->u:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->t:Landroid/graphics/Paint;

    .line 67
    :goto_3
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    :goto_4
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(FLjava/lang/String;)V

    .line 71
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->c:I

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 77
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 79
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 80
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 83
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 86
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 117
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->a(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 118
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 119
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->e:F

    goto :goto_0

    .line 121
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->e:F

    .line 123
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->v:Ljava/lang/String;

    .line 124
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 40
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 102
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/BackgroundBrightnessView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
