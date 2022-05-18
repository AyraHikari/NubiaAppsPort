.class public Lcn/nubia/camera/prosetting/ui/DurationView;
.super Lcn/nubia/camera/prosetting/ui/a;
.source "SourceFile"


# static fields
.field private static final x:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 20
    fill-array-data v0, :array_0

    sput-object v0, Lcn/nubia/camera/prosetting/ui/DurationView;->x:[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
        0xc
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/nubia/camera/prosetting/ui/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private a(I)I
    .locals 3

    const/4 v0, 0x0

    .line 81
    :goto_0
    sget-object v1, Lcn/nubia/camera/prosetting/ui/DurationView;->x:[I

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 82
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

    .line 101
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Float;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(I)I

    move-result p1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    .line 102
    sget-boolean p1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz p1, :cond_0

    .line 103
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    add-float/2addr p1, v0

    return p1

    .line 105
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->o:Landroid/graphics/RectF;

    iget p1, p1, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->q:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    add-float/2addr p1, v1

    int-to-float v0, v0

    sub-float/2addr p1, v0

    return p1
.end method

.method protected a(Landroid/graphics/Canvas;)V
    .locals 6

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->i:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 47
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->i:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 48
    :goto_0
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->c:I

    sget-object v2, Lcn/nubia/camera/prosetting/ui/DurationView;->x:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 49
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 50
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    int-to-float v3, v3

    add-float/2addr v1, v3

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 51
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 52
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    goto :goto_1

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 57
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->c:I

    aget v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "h"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    iget-object v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget-object v4, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->h:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    invoke-virtual {p0, v5}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(F)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->u:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v5, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->t:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {p1, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 59
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->c:I

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(FLjava/lang/String;)V

    .line 60
    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->c:I

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method protected b()V
    .locals 1

    .line 40
    invoke-super {p0}, Lcn/nubia/camera/prosetting/ui/a;->b()V

    .line 41
    sget-object v0, Lcn/nubia/camera/w/b;->n:Lcn/nubia/camera/w/b;

    invoke-virtual {p0, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->setHighSettingMember(Lcn/nubia/camera/w/b;)V

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 4

    .line 66
    iget v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->e:F

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->r:I

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    .line 67
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->o:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v1, 0x0

    .line 68
    :goto_0
    sget-object v2, Lcn/nubia/camera/prosetting/ui/DurationView;->x:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 69
    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->r:I

    int-to-float v3, v3

    add-float/2addr v2, v3

    iput v2, v0, Landroid/graphics/RectF;->right:F

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget-object v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 72
    sget-boolean v0, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->r:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    goto :goto_1

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->k:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    int-to-float v2, v2

    add-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->r:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

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

    .line 111
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(I)I

    move-result v0

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    mul-int/2addr v0, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, v1}, Lcn/nubia/camera/prosetting/ui/DurationView;->a(I)I

    move-result v1

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 112
    sget-boolean v1, Lcn/nubia/camera/ba/a;->a:Z

    if-eqz v1, :cond_0

    .line 113
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->e:F

    goto :goto_0

    .line 115
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->o:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->q:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v1, v2

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->e:F

    .line 117
    :goto_0
    iput-object p1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->v:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcn/nubia/camera/prosetting/ui/DurationView;->invalidate()V

    return-void
.end method

.method protected getIntervalWidth()I
    .locals 2

    .line 91
    iget-object v0, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->b:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x41c80000    # 25.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method protected getMaxWidth()I
    .locals 3

    .line 96
    sget-object v0, Lcn/nubia/camera/prosetting/ui/DurationView;->x:[I

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->g:I

    iget v2, p0, Lcn/nubia/camera/prosetting/ui/DurationView;->f:I

    add-int/2addr v1, v2

    mul-int/2addr v0, v1

    return v0
.end method
