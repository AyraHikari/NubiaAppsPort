.class public Lcn/nubia/camera/prosetting/ui/IntervalTimeView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# static fields
.field private static final x:[I

.field private static final y:[I


# instance fields
.field private z:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->x:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_1

    sput-object v0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->y:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        0x1f4
        0x3e8
        0x7d0
        0xbb8
        0xfa0
        0x1388
        0x1f40
        0x2710
        0x3a98
        0x7530
        0xea60
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0xfa0
        0x1388
        0x1f40
        0x2710
        0x3a98
        0x7530
        0xea60
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 33
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 37
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    sget-object p1, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->x:[I

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    .line 78
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 79
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

.method private b(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 145
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a:Landroid/content/Context;

    const v0, 0x7f0f0027

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 p1, p1, 0x1e

    div-int/lit16 p1, p1, 0x3e8

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "x"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 98
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 99
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 100
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 102
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 43
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 44
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 45
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 48
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 51
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 53
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->c:I

    aget v1, v1, v2

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->b(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 55
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->t:Landroid/graphics/Paint;

    .line 53
    :goto_2
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 56
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(FLjava/lang/String;)V

    .line 57
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->c:I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 120
    sget-object p1, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->y:[I

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    goto :goto_0

    .line 122
    :cond_0
    sget-object p1, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->x:[I

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    .line 124
    :goto_0
    invoke-virtual {p0, p2}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->b(Ljava/lang/String;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 63
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 65
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 67
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 68
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 69
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

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

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->a(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 109
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 110
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->e:F

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->e:F

    .line 114
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->v:Ljava/lang/String;

    .line 115
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->invalidate()V

    return-void
.end method

.method public e()Z
    .locals 2

    .line 128
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getAutoValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAutoValue()Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    .line 132
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method

.method public getMinIntervalTime()I
    .locals 2

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->z:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getSelectedRate()Ljava/lang/String;
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/IntervalTimeView;->b(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
