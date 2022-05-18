.class public Lcn/nubia/camera/three_a/ui/FocusAreaView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:[I

.field private o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a:I

    .line 26
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->b:I

    const/16 p2, 0x32

    .line 27
    iput p2, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->c:I

    .line 28
    iput p2, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->d:I

    const/4 p2, 0x5

    .line 29
    iput p2, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->e:I

    .line 30
    iput p2, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->f:I

    .line 31
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->g:I

    .line 32
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->h:I

    .line 33
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->i:I

    .line 34
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->j:I

    .line 35
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->k:I

    .line 36
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->l:I

    const/16 p1, 0x17

    .line 37
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->m:I

    .line 107
    new-instance p1, Lcn/nubia/camera/three_a/ui/FocusAreaView$1;

    invoke-direct {p1, p0}, Lcn/nubia/camera/three_a/ui/FocusAreaView$1;-><init>(Lcn/nubia/camera/three_a/ui/FocusAreaView;)V

    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->p:Landroid/os/Handler;

    return-void
.end method

.method private a(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 134
    invoke-direct {p0, p1, v0}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->b(II)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method private a(IILjava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x1

    shl-int v1, v0, p2

    sub-int/2addr v1, v0

    move v2, p5

    :goto_0
    and-int v3, p1, v1

    if-ne v3, v0, :cond_0

    add-int v3, p4, v2

    sub-int v3, p5, v3

    .line 152
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    ushr-int/2addr p1, p2

    if-eqz p1, :cond_2

    add-int/lit8 v3, v2, -0x1

    if-gtz v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private b(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 139
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x20

    add-int/lit8 v1, p2, -0x1

    add-int/2addr v0, v1

    .line 140
    div-int/2addr v0, p2

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, v0

    .line 142
    invoke-direct/range {v2 .. v7}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a(IILjava/util/ArrayList;II)V

    return-object v0
.end method


# virtual methods
.method public a(II)V
    .locals 0

    .line 119
    iput p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a:I

    .line 120
    iput p2, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->b:I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 50
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0x2c

    const/16 v3, 0xb1

    const/16 v4, 0x3f

    .line 52
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/high16 v1, 0x40000000    # 2.0f

    .line 54
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 58
    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->n:[I

    const-wide/16 v4, 0x12c

    if-eqz v3, :cond_2

    array-length v6, v3

    if-nez v6, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v6, 0x0

    .line 68
    aget v7, v3, v6

    iput v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->c:I

    iput v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->d:I

    .line 69
    aget v3, v3, v1

    iput v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->e:I

    iput v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->f:I

    .line 76
    iget v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a:I

    mul-int v9, v8, v7

    div-int/lit8 v9, v9, 0x64

    iput v9, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->i:I

    .line 77
    iget v10, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->b:I

    mul-int/2addr v7, v10

    div-int/lit8 v7, v7, 0x64

    iput v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->j:I

    .line 80
    div-int/lit8 v8, v8, 0x2

    div-int/lit8 v11, v9, 0x2

    sub-int/2addr v8, v11

    iput v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->g:I

    .line 81
    div-int/lit8 v10, v10, 0x2

    div-int/lit8 v8, v7, 0x2

    sub-int/2addr v10, v8

    iput v10, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->h:I

    .line 84
    div-int/2addr v9, v3

    iput v9, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->k:I

    .line 85
    div-int/2addr v7, v3

    iput v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->l:I

    .line 93
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->o:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v6, v3, :cond_1

    .line 94
    iget v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->g:I

    iget v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->f:I

    sub-int/2addr v7, v1

    iget-object v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->o:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget v9, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->e:I

    div-int/2addr v8, v9

    sub-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->k:I

    mul-int/2addr v7, v8

    add-int/2addr v3, v7

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v3, v8

    iget v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->m:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 96
    iget v3, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->h:I

    iget-object v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->o:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->e:I

    rem-int/2addr v7, v8

    iget v8, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->l:I

    mul-int/2addr v7, v8

    add-int/2addr v3, v7

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v3, v8

    iget v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->m:I

    sub-int/2addr v3, v7

    int-to-float v3, v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 98
    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->m:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 99
    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v7, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->m:I

    mul-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    add-float/2addr v3, v7

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    const/high16 v3, 0x40c00000    # 6.0f

    .line 100
    invoke-virtual {p1, v2, v3, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 63
    :cond_2
    :goto_1
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 64
    iget-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->p:Landroid/os/Handler;

    invoke-virtual {p1, v1, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public setMultiPointFocusInfo([I)V
    .locals 2

    .line 128
    iput-object p1, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->n:[I

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    aget p1, p1, v1

    invoke-direct {p0, p1}, Lcn/nubia/camera/three_a/ui/FocusAreaView;->a(I)Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/nubia/camera/three_a/ui/FocusAreaView;->o:Ljava/util/ArrayList;

    return-void
.end method
