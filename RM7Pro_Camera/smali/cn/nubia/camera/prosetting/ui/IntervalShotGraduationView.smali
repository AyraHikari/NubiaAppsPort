.class public Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;
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

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x8

    new-array p1, p1, [I

    .line 19
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x0
        0xa
        0x14
        0x1e
        0x28
        0x32
        0x3c
    .end array-data
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .line 104
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/16 v2, 0x9

    if-ge v1, v2, :cond_2

    .line 111
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 112
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 113
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 114
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 116
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    .line 119
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 121
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v3, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(FLjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 3

    .line 128
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 131
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 133
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 134
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 135
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 138
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v0, v0, v1

    add-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(FLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 201
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    .line 202
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 203
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    goto :goto_0

    .line 205
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 206
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    .line 208
    :goto_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    .line 211
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 61
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 62
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 64
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 65
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez v1, :cond_1

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a:Landroid/content/Context;

    const v2, 0x7f0f00de

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 69
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->u:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->t:Landroid/graphics/Paint;

    .line 68
    :goto_1
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(FLjava/lang/String;)V

    goto :goto_2

    .line 72
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v2, v2, v3

    int-to-double v2, v2

    const-wide v4, 0x3fb999999999999aL    # 0.1

    int-to-double v6, v1

    mul-double/2addr v6, v4

    add-double/2addr v2, v6

    double-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(FLjava/lang/String;)V

    .line 74
    :goto_2
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_3

    .line 77
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 80
    :cond_3
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    .line 82
    :cond_4
    :goto_4
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 83
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 84
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 86
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_5

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x9

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_5

    .line 89
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v1, v1, 0xa

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x9

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 91
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 92
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->u:Landroid/graphics/Paint;

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->t:Landroid/graphics/Paint;

    .line 91
    :goto_6
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 93
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(FLjava/lang/String;)V

    .line 94
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_7

    .line 95
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c(Landroid/graphics/Canvas;)V

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->d(Landroid/graphics/Canvas;)V

    .line 98
    :cond_7
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->c:I

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method protected b()V
    .locals 3

    .line 44
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->z:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->y:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->B:Landroid/graphics/RectF;

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->A:Landroid/graphics/Paint;

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->A:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 55
    sget-object v0, Lcn/nubia/camera/w/b;->i:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 143
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 145
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 146
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 147
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 148
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez v1, :cond_1

    .line 150
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    goto :goto_1

    .line 153
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    goto :goto_2

    .line 156
    :cond_1
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v2, v2, 0xa

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v3, v3, 0x9

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    :goto_1
    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_3

    .line 159
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    mul-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    mul-int/lit8 v2, v2, 0x9

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    :goto_2
    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 168
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    .line 169
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 170
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    goto :goto_0

    .line 172
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 173
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 175
    :goto_0
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_1

    .line 176
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->e:F

    goto :goto_1

    .line 178
    :cond_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->e:F

    .line 180
    :goto_1
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->v:Ljava/lang/String;

    .line 181
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->invalidate()V

    return-void
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 186
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0xa

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->f:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    return v0
.end method

.method protected getNeedSkipRange()Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 191
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 192
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 194
    :cond_0
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->x:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/IntervalShotGraduationView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method
