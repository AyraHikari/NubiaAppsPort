.class public Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/RectF;

.field private x:[I

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x7

    new-array p1, p1, [I

    .line 15
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    .line 35
    sget-object p1, Lcn/nubia/camera/w/b;->h:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x3
        -0x2
        -0x1
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 6

    .line 82
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 89
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 90
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 91
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 94
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    .line 97
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 99
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    aget v3, v3, v4

    int-to-float v3, v3

    const/high16 v4, 0x3e800000    # 0.25f

    add-int/lit8 v1, v1, 0x1

    int-to-float v5, v1

    mul-float/2addr v5, v4

    add-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->a(FLjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 141
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    .line 142
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v1, v1

    mul-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-int p1, v0

    .line 143
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    .line 146
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 61
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 65
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 68
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    mul-int/lit8 v1, v1, 0x4

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    mul-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 70
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 71
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->t:Landroid/graphics/Paint;

    .line 70
    :goto_2
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->a(FLjava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    aget v1, v1, v2

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    if-eq v1, v2, :cond_2

    .line 74
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c(Landroid/graphics/Canvas;)V

    .line 76
    :cond_2
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->c:I

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method protected b()V
    .locals 3

    .line 40
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 41
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->z:Landroid/graphics/RectF;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 43
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->y:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->B:Landroid/graphics/RectF;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->A:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->A:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 106
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 107
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 108
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 109
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 110
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 112
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    mul-int/lit8 v2, v2, 0x4

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 115
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

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

    .line 123
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    mul-float/2addr v0, v1

    .line 124
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    int-to-float v1, v1

    mul-float/2addr v1, v0

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 125
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 126
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->e:F

    goto :goto_0

    .line 128
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->e:F

    .line 130
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->v:Ljava/lang/String;

    .line 131
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41400000    # 12.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ExposureCompensationView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    return v0
.end method
