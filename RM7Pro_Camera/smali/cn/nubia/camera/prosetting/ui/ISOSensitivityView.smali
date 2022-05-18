.class public Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# instance fields
.field private x:[Ljava/lang/Integer;

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private z:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    .line 32
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a()V

    .line 33
    sget-object p1, Lcn/nubia/camera/w/b;->c:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    .line 88
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 89
    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

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
    .locals 3

    .line 108
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 109
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    const/high16 v1, 0x3f000000    # 0.5f

    if-eqz p1, :cond_0

    .line 110
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 112
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->q:I

    int-to-float v2, v2

    mul-float/2addr v2, v1

    add-float/2addr p1, v2

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 5

    .line 43
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 44
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 45
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v1, v2, :cond_5

    .line 46
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 49
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 52
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 54
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 55
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a:Landroid/content/Context;

    const v2, 0x7f0f0027

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 57
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->t:Landroid/graphics/Paint;

    .line 55
    :goto_2
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 59
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 60
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->h:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    .line 61
    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(F)Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->u:Landroid/graphics/Paint;

    goto :goto_3

    :cond_3
    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->t:Landroid/graphics/Paint;

    .line 60
    :goto_3
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    :cond_4
    :goto_4
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(FLjava/lang/String;)V

    .line 65
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->c:I

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public a([Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 5

    .line 129
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    .line 130
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 131
    new-instance v0, Landroid/util/Range;

    aget-object v3, p2, v1

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget-object v4, p2, v2

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->z:Landroid/util/Range;

    goto :goto_0

    .line 133
    :cond_0
    new-instance v0, Landroid/util/Range;

    aget-object v3, p2, v2

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(Ljava/lang/String;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aget-object v4, p2, v1

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(Ljava/lang/String;)F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    iput-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->z:Landroid/util/Range;

    .line 135
    :goto_0
    array-length v0, p2

    if-ge v1, v0, :cond_1

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    aget-object v3, p2, v1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 138
    :cond_1
    iget-object p2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object v0, p1, v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 139
    iget-object p2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    array-length v0, p1

    sub-int/2addr v0, v2

    aget-object p1, p1, v0

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->invalidate()V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 71
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 72
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 73
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 74
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->y:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 79
    :cond_0
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 82
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->a(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 119
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 120
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->e:F

    goto :goto_0

    .line 122
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->e:F

    .line 124
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->v:Ljava/lang/String;

    .line 125
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 38
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41200000    # 10.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->x:[Ljava/lang/Integer;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
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

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/ISOSensitivityView;->z:Landroid/util/Range;

    return-object v0
.end method
