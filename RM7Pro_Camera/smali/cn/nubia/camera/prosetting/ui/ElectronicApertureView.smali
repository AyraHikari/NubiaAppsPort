.class public Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private x:[F

.field private y:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0xa

    new-array p1, p1, [F

    .line 17
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    .line 18
    new-instance p1, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->y:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 34
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a()V

    .line 35
    sget-object p1, Lcn/nubia/camera/w/b;->f:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void

    :array_0
    .array-data 4
        0x40333333    # 2.8f
        0x40800000    # 4.0f
        0x40b33333    # 5.6f
        0x41000000    # 8.0f
        0x41300000    # 11.0f
        0x41800000    # 16.0f
        0x41b00000    # 22.0f
        0x41e00000    # 28.0f
        0x42300000    # 44.0f
        -0x40800000    # -1.0f
    .end array-data
.end method

.method private b(F)I
    .locals 3

    const/4 v0, 0x0

    .line 101
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 102
    aget v1, v1, v0

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

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

    .line 116
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(F)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(F)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 117
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 118
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 120
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->q:I

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

    .line 40
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 41
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->y:Ljava/util/concurrent/ConcurrentSkipListSet;

    aget v1, v1, v0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 53
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 54
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    array-length v2, v2

    if-ge v1, v2, :cond_8

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 56
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 58
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 61
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 63
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v2

    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v1, v1, v2

    const/high16 v2, 0x41300000    # 11.0f

    if-nez v1, :cond_2

    .line 64
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a:Landroid/content/Context;

    const v3, 0x7f0f00ac

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 65
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->t:Landroid/graphics/Paint;

    .line 64
    :goto_2
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 67
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v3

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 69
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->u:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->t:Landroid/graphics/Paint;

    .line 68
    :goto_3
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_5

    .line 71
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v3

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 72
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->u:Landroid/graphics/Paint;

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->t:Landroid/graphics/Paint;

    .line 71
    :goto_4
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 75
    :goto_5
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v3

    cmpl-float v1, v1, v2

    if-gez v1, :cond_7

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v1, v1, v2

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_6

    goto :goto_6

    .line 78
    :cond_6
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a(FLjava/lang/String;)V

    goto :goto_7

    .line 76
    :cond_7
    :goto_6
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->a(FLjava/lang/String;)V

    .line 80
    :goto_7
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->c:I

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 86
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 88
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 89
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 92
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 95
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

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

    .line 126
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(F)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b(F)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 127
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 128
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->e:F

    goto :goto_0

    .line 130
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->e:F

    .line 132
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->v:Ljava/lang/String;

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x42200000    # 40.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->x:[F

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ElectronicApertureView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
