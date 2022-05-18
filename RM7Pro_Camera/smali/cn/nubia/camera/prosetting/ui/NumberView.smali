.class public Lcn/nubia/camera/prosetting/ui/NumberView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# static fields
.field private static final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 21
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    .line 93
    :goto_0
    sget-object v1, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 94
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

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 66
    sget-object v0, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    aget v1, v0, v1

    if-nez v1, :cond_0

    .line 67
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/NumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0136

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    aget v0, v0, v1

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    .line 69
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/NumberView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f0132

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->h:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v3}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(F)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->u:Landroid/graphics/Paint;

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->t:Landroid/graphics/Paint;

    :goto_1
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 113
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 114
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 117
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 4

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 48
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 49
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    sget-object v2, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 50
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 53
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 56
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 58
    :goto_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/NumberView;->c(Landroid/graphics/Canvas;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(FLjava/lang/String;)V

    .line 60
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->c:I

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected b()V
    .locals 1

    .line 41
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 42
    sget-object v0, Lcn/nubia/camera/w/b;->m:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 78
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 80
    :goto_0
    sget-object v2, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 81
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 83
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 84
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

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
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/NumberView;->a(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 124
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->e:F

    goto :goto_0

    .line 127
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->e:F

    .line 129
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->v:Ljava/lang/String;

    .line 130
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/NumberView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41a00000    # 20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 108
    sget-object v0, Lcn/nubia/camera/prosetting/ui/NumberView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/NumberView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
