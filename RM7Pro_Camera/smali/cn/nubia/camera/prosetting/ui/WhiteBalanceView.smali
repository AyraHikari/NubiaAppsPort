.class public Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private A:I

.field private B:Z

.field private x:[[I

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .line 96
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 99
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    .line 101
    iput v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    .line 102
    :goto_1
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v2, v2, v3

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_2

    .line 103
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iput v2, v1, Landroid/graphics/RectF;->top:F

    .line 104
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iput v2, v1, Landroid/graphics/RectF;->bottom:F

    .line 105
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 108
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_2

    .line 111
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 113
    :goto_2
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v2, v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    add-int/lit8 v3, v3, 0x1

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(FLjava/lang/String;)V

    .line 114
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->A:I

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 160
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    move v4, v0

    .line 161
    :goto_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 162
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v6, v6, v1

    aget v6, v6, v4

    if-ne v5, v6, :cond_0

    move v2, v1

    move v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_3
    if-ge v0, v2, :cond_3

    .line 171
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v1, v1, v0

    array-length v1, v1

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    mul-int/2addr v1, v4

    add-int/2addr p1, v1

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v1, v1, v0

    array-length v1, v1

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    mul-int/2addr v1, v4

    add-int/2addr p1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 174
    :cond_3
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    add-int/2addr v0, v1

    mul-int/2addr v3, v0

    add-int/2addr p1, v3

    .line 175
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_4

    .line 176
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    .line 178
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 61
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 62
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 63
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 64
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 65
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v2, v2, v3

    array-length v2, v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v2, v2, v3

    array-length v2, v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v2, v2, v3

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 73
    :goto_1
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 74
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a:Landroid/content/Context;

    const v3, 0x7f0f0027

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 75
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->t:Landroid/graphics/Paint;

    .line 74
    :goto_2
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 76
    :cond_2
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-ne v1, v4, :cond_6

    .line 77
    iget-boolean v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->B:Z

    if-eqz v1, :cond_4

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a:Landroid/content/Context;

    const v3, 0x7f0f00e5

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 79
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->u:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->t:Landroid/graphics/Paint;

    .line 78
    :goto_3
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 81
    :cond_4
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v1, v3, v1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 82
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->u:Landroid/graphics/Paint;

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->t:Landroid/graphics/Paint;

    .line 81
    :goto_4
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    .line 85
    :cond_6
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v1, v3, v1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 86
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->u:Landroid/graphics/Paint;

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->t:Landroid/graphics/Paint;

    .line 85
    :goto_5
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    :goto_6
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    aget-object v3, v3, v4

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(FLjava/lang/String;)V

    .line 89
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c(Landroid/graphics/Canvas;)V

    .line 90
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->c:I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected b()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 45
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->z:Landroid/graphics/RectF;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 47
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 49
    sget-object v0, Lcn/nubia/camera/w/b;->b:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 5

    .line 120
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 121
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 122
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 123
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 126
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    mul-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v4, v4, v1

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 131
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v3, v3, v1

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    mul-int/2addr v2, v3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    .line 186
    :goto_0
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v4, v4

    if-ge v1, v4, :cond_2

    move v4, v0

    .line 187
    :goto_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v5, v5, v1

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 188
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    iget-object v6, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v6, v6, v1

    aget v6, v6, v4

    if-ne v5, v6, :cond_0

    move v2, v1

    move v3, v4

    goto :goto_2

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v0

    :goto_3
    if-ge v0, v2, :cond_3

    .line 197
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v4, v4, v0

    array-length v4, v4

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    mul-int/2addr v4, v5

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 200
    :cond_3
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    add-int/2addr v0, v2

    mul-int/2addr v3, v0

    add-int/2addr v1, v3

    .line 201
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_4

    .line 202
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->e:F

    goto :goto_4

    .line 204
    :cond_4
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->e:F

    .line 206
    :goto_4
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->v:Ljava/lang/String;

    .line 207
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 149
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 150
    aget-object v2, v2, v0

    array-length v2, v2

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->g:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->f:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getNeedSkipRange()Landroid/util/Range;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 139
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 140
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v3, v3, v2

    aget v3, v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v1, v4, v1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 142
    :cond_0
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v1, v3, v1

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    aget-object v3, v3, v2

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public setIsIwbSupported(Z)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/16 v4, 0xb

    const/16 v5, 0xa

    const/16 v6, 0x9

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x3

    const/4 v12, 0x2

    const/16 v13, 0xe

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/4 v2, 0x4

    if-eqz v1, :cond_0

    new-array v13, v13, [[I

    new-array v3, v2, [I

    .line 212
    fill-array-data v3, :array_0

    aput-object v3, v13, v15

    new-array v3, v2, [I

    fill-array-data v3, :array_1

    aput-object v3, v13, v14

    new-array v3, v2, [I

    fill-array-data v3, :array_2

    aput-object v3, v13, v12

    new-array v3, v2, [I

    fill-array-data v3, :array_3

    aput-object v3, v13, v11

    new-array v3, v2, [I

    fill-array-data v3, :array_4

    aput-object v3, v13, v2

    new-array v3, v2, [I

    fill-array-data v3, :array_5

    aput-object v3, v13, v10

    new-array v3, v2, [I

    fill-array-data v3, :array_6

    aput-object v3, v13, v9

    new-array v3, v2, [I

    fill-array-data v3, :array_7

    aput-object v3, v13, v8

    new-array v3, v2, [I

    fill-array-data v3, :array_8

    aput-object v3, v13, v7

    new-array v3, v2, [I

    fill-array-data v3, :array_9

    aput-object v3, v13, v6

    new-array v3, v2, [I

    fill-array-data v3, :array_a

    aput-object v3, v13, v5

    new-array v3, v2, [I

    fill-array-data v3, :array_b

    aput-object v3, v13, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_c

    const/16 v3, 0xc

    aput-object v2, v13, v3

    new-array v2, v14, [I

    const v3, 0x7fffffff

    aput v3, v2, v15

    const/16 v3, 0xd

    aput-object v2, v13, v3

    iput-object v13, v0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    goto :goto_0

    :cond_0
    new-array v3, v13, [[I

    new-array v13, v2, [I

    .line 218
    fill-array-data v13, :array_d

    aput-object v13, v3, v15

    new-array v13, v2, [I

    fill-array-data v13, :array_e

    aput-object v13, v3, v14

    new-array v13, v2, [I

    fill-array-data v13, :array_f

    aput-object v13, v3, v12

    new-array v12, v2, [I

    fill-array-data v12, :array_10

    aput-object v12, v3, v11

    new-array v11, v2, [I

    fill-array-data v11, :array_11

    aput-object v11, v3, v2

    new-array v11, v2, [I

    fill-array-data v11, :array_12

    aput-object v11, v3, v10

    new-array v10, v2, [I

    fill-array-data v10, :array_13

    aput-object v10, v3, v9

    new-array v9, v2, [I

    fill-array-data v9, :array_14

    aput-object v9, v3, v8

    new-array v8, v2, [I

    fill-array-data v8, :array_15

    aput-object v8, v3, v7

    new-array v7, v2, [I

    fill-array-data v7, :array_16

    aput-object v7, v3, v6

    new-array v6, v2, [I

    fill-array-data v6, :array_17

    aput-object v6, v3, v5

    new-array v5, v2, [I

    fill-array-data v5, :array_18

    aput-object v5, v3, v4

    new-array v2, v2, [I

    fill-array-data v2, :array_19

    const/16 v4, 0xc

    aput-object v2, v3, v4

    new-array v2, v14, [I

    const/16 v4, 0x1f40

    aput v4, v2, v15

    const/16 v4, 0xd

    aput-object v2, v3, v4

    iput-object v3, v0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->x:[[I

    .line 224
    :goto_0
    iput-boolean v1, v0, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->B:Z

    .line 225
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/prosetting/ui/WhiteBalanceView;->invalidate()V

    return-void

    :array_0
    .array-data 4
        0x0
        -0x1
        -0x2
        -0x3
    .end array-data

    :array_1
    .array-data 4
        0x7d0
        0x84d
        0x8ca
        0x947
    .end array-data

    :array_2
    .array-data 4
        0x9c4
        0xa41
        0xabe
        0xb3b
    .end array-data

    :array_3
    .array-data 4
        0xbb8
        0xc35
        0xcb2
        0xd2f
    .end array-data

    :array_4
    .array-data 4
        0xdac
        0xe29
        0xea6
        0xf23
    .end array-data

    :array_5
    .array-data 4
        0xfa0
        0x101d
        0x109a
        0x1117
    .end array-data

    :array_6
    .array-data 4
        0x1194
        0x1211
        0x128e
        0x130b
    .end array-data

    :array_7
    .array-data 4
        0x1388
        0x1405
        0x1482
        0x14ff
    .end array-data

    :array_8
    .array-data 4
        0x157c
        0x15f9
        0x1676
        0x16f3
    .end array-data

    :array_9
    .array-data 4
        0x1770
        0x17ed
        0x186a
        0x18e7
    .end array-data

    :array_a
    .array-data 4
        0x1964
        0x19e1
        0x1a5e
        0x1adb
    .end array-data

    :array_b
    .array-data 4
        0x1b58
        0x1bd5
        0x1c52
        0x1ccf
    .end array-data

    :array_c
    .array-data 4
        0x1d4c
        0x1dc9
        0x1e46
        0x1ec3
    .end array-data

    :array_d
    .array-data 4
        0x0
        -0x1
        -0x2
        -0x3
    .end array-data

    :array_e
    .array-data 4
        0x7d0
        0x84d
        0x8ca
        0x947
    .end array-data

    :array_f
    .array-data 4
        0x9c4
        0xa41
        0xabe
        0xb3b
    .end array-data

    :array_10
    .array-data 4
        0xbb8
        0xc35
        0xcb2
        0xd2f
    .end array-data

    :array_11
    .array-data 4
        0xdac
        0xe29
        0xea6
        0xf23
    .end array-data

    :array_12
    .array-data 4
        0xfa0
        0x101d
        0x109a
        0x1117
    .end array-data

    :array_13
    .array-data 4
        0x1194
        0x1211
        0x128e
        0x130b
    .end array-data

    :array_14
    .array-data 4
        0x1388
        0x1405
        0x1482
        0x14ff
    .end array-data

    :array_15
    .array-data 4
        0x157c
        0x15f9
        0x1676
        0x16f3
    .end array-data

    :array_16
    .array-data 4
        0x1770
        0x17ed
        0x186a
        0x18e7
    .end array-data

    :array_17
    .array-data 4
        0x1964
        0x19e1
        0x1a5e
        0x1adb
    .end array-data

    :array_18
    .array-data 4
        0x1b58
        0x1bd5
        0x1c52
        0x1ccf
    .end array-data

    :array_19
    .array-data 4
        0x1d4c
        0x1dc9
        0x1e46
        0x1ec3
    .end array-data
.end method
