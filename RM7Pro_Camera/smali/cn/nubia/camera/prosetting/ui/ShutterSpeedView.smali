.class public Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private A:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private x:[Landroid/util/Rational;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/util/concurrent/ConcurrentSkipListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->y:Ljava/util/ArrayList;

    .line 23
    new-instance p2, Ljava/util/concurrent/ConcurrentSkipListSet;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentSkipListSet;-><init>()V

    iput-object p2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->z:Ljava/util/concurrent/ConcurrentSkipListSet;

    .line 40
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a:Landroid/content/Context;

    return-void
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 149
    invoke-static {p1}, Landroid/util/Rational;->parseRational(Ljava/lang/String;)Landroid/util/Rational;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

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
    .locals 3

    .line 139
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    mul-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c(Ljava/lang/String;)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 140
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 143
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 55
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 56
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 57
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v2, v2

    if-ge v1, v2, :cond_d

    .line 58
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 61
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 64
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 66
    :goto_1
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    const/4 v2, 0x1

    const-string v3, "s"

    if-nez v1, :cond_4

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_2

    .line 68
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a:Landroid/content/Context;

    const v3, 0x7f0f0027

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 70
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    .line 68
    :goto_2
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 72
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 74
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    .line 72
    :goto_3
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 77
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->y:Ljava/util/ArrayList;

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 78
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_8

    .line 79
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v1, v1, v4

    new-instance v4, Landroid/util/Rational;

    const v5, 0xea60

    invoke-direct {v4, v2, v5}, Landroid/util/Rational;-><init>(II)V

    invoke-virtual {v1, v4}, Landroid/util/Rational;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 81
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_4

    :cond_5
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    :goto_4
    const-string v5, "1/60ks"

    .line 80
    invoke-virtual {p1, v5, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 83
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/util/Rational;->getDenominator()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 85
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_5

    :cond_7
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    .line 83
    :goto_5
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_8

    .line 88
    :cond_8
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/util/Rational;->floatValue()F

    move-result v1

    const/high16 v4, 0x42f00000    # 120.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_a

    .line 89
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/util/Rational;->getNumerator()I

    move-result v3

    div-int/lit8 v3, v3, 0x3c

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "min"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 91
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_6

    :cond_9
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    .line 89
    :goto_6
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_8

    .line 93
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/util/Rational;->getNumerator()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    .line 95
    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_b

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->u:Landroid/graphics/Paint;

    goto :goto_7

    :cond_b
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->t:Landroid/graphics/Paint;

    .line 93
    :goto_7
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    :cond_c
    :goto_8
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    aget-object v3, v3, v4

    invoke-virtual {v3}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(FLjava/lang/String;)V

    .line 101
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c:I

    goto/16 :goto_0

    :cond_d
    return-void
.end method

.method public a([Landroid/util/Rational;[Landroid/util/Rational;Z)V
    .locals 3

    .line 169
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    const/4 p1, 0x0

    move v0, p1

    .line 170
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 171
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->y:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    const/high16 p2, 0x41700000    # 15.0f

    .line 178
    iget-object p3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->b:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    goto :goto_1

    :cond_1
    const/high16 p2, 0x41300000    # 11.0f

    .line 180
    iget-object p3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->b:Landroid/util/DisplayMetrics;

    iget p3, p3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    :goto_1
    move p2, p1

    .line 182
    :goto_2
    iget-object p3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v0, p3

    if-ge p2, v0, :cond_2

    .line 183
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->z:Ljava/util/concurrent/ConcurrentSkipListSet;

    aget-object p3, p3, p2

    invoke-virtual {v0, p3}, Ljava/util/concurrent/ConcurrentSkipListSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    const/4 p2, 0x1

    .line 185
    aget-object p3, p3, p2

    invoke-virtual {p3}, Landroid/util/Rational;->floatValue()F

    move-result p3

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_6

    move p3, p1

    .line 187
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v1, v0

    if-ge p3, v1, :cond_4

    .line 188
    aget-object v0, v0, p3

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    if-lez v0, :cond_3

    goto :goto_4

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_3

    .line 192
    :cond_4
    :goto_4
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v0, v0

    sub-int/2addr v0, p2

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 193
    sget-boolean p3, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p3, :cond_5

    .line 194
    new-instance p3, Landroid/util/Range;

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->A:Landroid/util/Range;

    goto :goto_5

    .line 196
    :cond_5
    new-instance p3, Landroid/util/Range;

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object p2, v0, p2

    invoke-virtual {p2}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(Ljava/lang/String;)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object p1, v0, p1

    invoke-virtual {p1}, Landroid/util/Rational;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->a(Ljava/lang/String;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object p3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->A:Landroid/util/Range;

    .line 199
    :cond_6
    :goto_5
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->invalidate()V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 44
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 45
    sget-object v0, Lcn/nubia/camera/w/b;->a:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 107
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 108
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 109
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 110
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 115
    :cond_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 118
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 158
    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    mul-int/2addr v0, v1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->c(Ljava/lang/String;)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 159
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    .line 160
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->q:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->e:F

    goto :goto_0

    .line 162
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->q:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    add-float/2addr v1, v3

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->e:F

    .line 164
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->v:Ljava/lang/String;

    .line 165
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 50
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->b:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 126
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 127
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->f:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->g:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->x:[Landroid/util/Rational;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method protected getNeedSkipRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ShutterSpeedView;->A:Landroid/util/Range;

    return-object v0
.end method
