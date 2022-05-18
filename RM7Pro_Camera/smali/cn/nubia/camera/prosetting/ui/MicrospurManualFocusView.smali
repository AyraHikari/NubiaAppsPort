.class public Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

.field private x:[I

.field private y:Landroid/graphics/Paint;

.field private z:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 5

    .line 111
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_0

    .line 114
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x4

    if-ge v1, v2, :cond_2

    .line 118
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 119
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 120
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->y:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 123
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 124
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_2

    .line 126
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    .line 128
    :goto_2
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    aget v3, v3, v4

    add-int/lit8 v1, v1, 0x1

    add-int/2addr v3, v1

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(FLjava/lang/String;)V

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)F
    .locals 2

    .line 174
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x41200000    # 10.0f

    .line 175
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 176
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    goto :goto_0

    .line 178
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    float-to-int p1, p1

    .line 179
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v0, v1

    mul-int/2addr p1, v0

    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr p1, v0

    .line 181
    :goto_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 182
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    add-float/2addr v0, p1

    return v0

    .line 184
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->o:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float p1, p1

    sub-float/2addr v0, p1

    return v0
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 8

    .line 66
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 68
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_3

    .line 70
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 72
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez v1, :cond_1

    .line 74
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a:Landroid/content/Context;

    const v2, 0x7f0f0027

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 76
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->u:Landroid/graphics/Paint;

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->t:Landroid/graphics/Paint;

    .line 74
    :goto_1
    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    aget v2, v2, v3

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(FLjava/lang/String;)V

    goto :goto_2

    .line 79
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

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

    invoke-virtual {p0, v0, v2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(FLjava/lang/String;)V

    .line 81
    :goto_2
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_3

    .line 84
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 88
    :cond_3
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    .line 90
    :cond_4
    :goto_4
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 92
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 94
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_5

    .line 95
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_5

    .line 97
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 99
    :goto_5
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    aget v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 100
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->u:Landroid/graphics/Paint;

    goto :goto_6

    :cond_6
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->t:Landroid/graphics/Paint;

    .line 99
    :goto_6
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 101
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(FLjava/lang/String;)V

    .line 102
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_7

    .line 103
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c(Landroid/graphics/Canvas;)V

    .line 105
    :cond_7
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->c:I

    goto/16 :goto_4

    :cond_8
    return-void
.end method

.method protected a(Ljava/lang/String;Z)V
    .locals 1

    .line 190
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0, p1, p2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;->a(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    .line 56
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 57
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->z:Landroid/graphics/RectF;

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->y:Landroid/graphics/Paint;

    const/4 v1, -0x1

    .line 59
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->y:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    sget-object v0, Lcn/nubia/camera/w/b;->e:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 135
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 136
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 137
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 138
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 139
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 140
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    if-nez v1, :cond_1

    .line 142
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v2, v2, 0x3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    goto :goto_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v2, v2, 0x3

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    goto :goto_2

    .line 148
    :cond_1
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_2

    .line 149
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v2, v2, 0x5

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v3, v3, 0x4

    add-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    :goto_1
    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_3

    .line 151
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    mul-int/lit8 v2, v2, 0x5

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    mul-int/lit8 v2, v2, 0x4

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

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

    .line 211
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    const/high16 v0, 0x41200000    # 10.0f

    .line 214
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float/2addr v1, v0

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    const/4 v2, 0x0

    aget v0, v0, v2

    mul-int/lit8 v0, v0, 0xa

    int-to-float v0, v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 215
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    goto :goto_0

    .line 217
    :cond_1
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-int v0, v0

    .line 218
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v1, v2

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    .line 220
    :goto_0
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_2

    .line 221
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->e:F

    goto :goto_1

    .line 223
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->e:F

    .line 225
    :goto_1
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->v:Ljava/lang/String;

    .line 226
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->invalidate()V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

    if-eqz v0, :cond_0

    .line 198
    invoke-interface {v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;->a()V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;->b()V

    :cond_0
    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41000000    # 8.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 168
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x2

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->f:I

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

    .line 159
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 160
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0

    .line 162
    :cond_0
    new-instance v0, Landroid/util/Range;

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    aget v2, v3, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(Ljava/lang/String;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    aget v1, v3, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->a(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v0
.end method

.method public setManualFocus([I)V
    .locals 0

    .line 236
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->x:[I

    .line 237
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->invalidate()V

    return-void
.end method

.method public setMicrospurListener(Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

    if-nez v0, :cond_0

    .line 231
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView;->A:Lcn/nubia/camera/prosetting/ui/MicrospurManualFocusView$a;

    :cond_0
    return-void
.end method
