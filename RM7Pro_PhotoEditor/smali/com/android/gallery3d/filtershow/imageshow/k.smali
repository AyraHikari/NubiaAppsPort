.class public Lcom/android/gallery3d/filtershow/imageshow/k;
.super Lcom/android/gallery3d/filtershow/imageshow/ImageShow;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/imageshow/k$c;
    }
.end annotation


# instance fields
.field O:Landroid/graphics/Paint;

.field P:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Q:I

.field private R:Z

.field private S:Z

.field private T:Lcom/android/gallery3d/filtershow/imageshow/b;

.field private U:I

.field private V:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field W:[I

.field a0:[I

.field b0:[I

.field c0:Landroid/graphics/Path;

.field private d0:Landroid/widget/Button;

.field private e0:Landroid/widget/PopupWindow;

.field f0:Z

.field private g0:Lcom/android/gallery3d/filtershow/editors/i;

.field private h0:Lcom/android/gallery3d/filtershow/filters/k;

.field private i0:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->O:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->R:Z

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->S:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->T:Lcom/android/gallery3d/filtershow/imageshow/b;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->U:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->V:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/16 v0, 0x100

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->W:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->a0:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->b0:[I

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->f0:Z

    const p1, 0x7f0800bf

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->i0:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->L()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->O:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->N()V

    return-void
.end method

.method static synthetic G(Lcom/android/gallery3d/filtershow/imageshow/k;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/k;->Q(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method private I()Lcom/android/gallery3d/filtershow/filters/n0;
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->getFilterName()Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    const-class v1, Lcom/android/gallery3d/filtershow/filters/n0;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/a;->y(Ljava/lang/Class;)Lcom/android/gallery3d/filtershow/filters/ImageFilter;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/n0;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private J(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    array-length v6, v2

    if-ge v4, v6, :cond_1

    aget v6, v2, v4

    if-le v6, v5, :cond_0

    aget v5, v2, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/c0;->d()I

    move-result v6

    sub-int/2addr v4, v6

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/c0;->d()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    sub-float/2addr v6, v7

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/c0;->d()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v7, v8

    array-length v9, v2

    int-to-float v9, v9

    div-float v9, v4, v9

    const v10, 0x3e99999a    # 0.3f

    mul-float/2addr v10, v6

    int-to-float v5, v5

    div-float/2addr v10, v5

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/16 v11, 0x64

    const/16 v12, 0xff

    invoke-virtual {v5, v11, v12, v12, v12}, Landroid/graphics/Paint;->setARGB(IIII)V

    float-to-double v13, v9

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v11, v13

    int-to-float v11, v11

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move/from16 v11, p3

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 v11, 0x40c00000    # 6.0f

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v11, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v13, p4

    invoke-direct {v11, v13}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v11, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v11}, Landroid/graphics/Path;->reset()V

    iget-object v11, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v11, v7, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v11, 0x0

    move v13, v3

    move v14, v11

    move v15, v14

    :goto_1
    array-length v12, v2

    if-ge v3, v12, :cond_4

    int-to-float v12, v3

    mul-float/2addr v12, v9

    add-float/2addr v12, v7

    aget v8, v2, v3

    int-to-float v8, v8

    mul-float/2addr v8, v10

    cmpl-float v16, v8, v11

    if-eqz v16, :cond_3

    add-float/2addr v15, v8

    const/high16 v14, 0x40000000    # 2.0f

    div-float/2addr v15, v14

    sub-float v14, v6, v15

    if-nez v13, :cond_2

    iget-object v13, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v13, v12, v6}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v13, 0x1

    :cond_2
    iget-object v15, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v15, v12, v14}, Landroid/graphics/Path;->lineTo(FF)V

    move v15, v8

    move v14, v12

    :cond_3
    add-int/lit8 v3, v3, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    goto :goto_1

    :cond_4
    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v2, v14, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/high16 v2, 0x40000000    # 2.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v2, 0xc8

    const/16 v3, 0xff

    invoke-virtual {v5, v3, v2, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v2, v0, Lcom/android/gallery3d/filtershow/imageshow/k;->c0:Landroid/graphics/Path;

    invoke-virtual {v1, v2, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private K(I)Lcom/android/gallery3d/filtershow/imageshow/c0;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->h0:Lcom/android/gallery3d/filtershow/filters/k;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/k;->k0(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p1

    return-object p1
.end method

.method private L()V
    .locals 4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    const v1, 0x7f0800bf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    const v1, 0x7f0800be

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    const v1, 0x7f0800bd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    const v1, 0x7f0800bc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0e005c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private M(FF)I
    .locals 8

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/k;->K(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v2

    iget v2, v2, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v3

    iget v3, v3, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    sub-float/2addr v2, p1

    mul-float/2addr v2, v2

    sub-float/2addr v3, p2

    mul-float/2addr v3, v3

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->k()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v5

    iget v5, v5, Lcom/android/gallery3d/filtershow/imageshow/b;->a:F

    invoke-virtual {v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v6

    iget v6, v6, Lcom/android/gallery3d/filtershow/imageshow/b;->b:F

    sub-float/2addr v5, p1

    mul-float/2addr v5, v5

    sub-float/2addr v6, p2

    mul-float/2addr v6, v6

    add-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    cmpg-double v7, v5, v2

    if-gez v7, :cond_0

    move v1, v4

    move-wide v2, v5

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->R:Z

    if-nez p1, :cond_2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-double p1, p1

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4059000000000000L    # 100.0

    cmpl-double p1, v2, p1

    if-lez p1, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->k()I

    move-result p1

    const/16 p2, 0xa

    if-ge p1, p2, :cond_2

    const/4 p1, -0x1

    return p1

    :cond_2
    return v1
.end method

.method private Q(Landroid/widget/LinearLayout;)V
    .locals 5

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0600db

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p1

    float-to-int p1, v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0b004d

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/PopupWindow;

    const/4 v2, -0x1

    invoke-direct {v1, v0, v2, p1, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    invoke-virtual {v1, v3}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {p1, v1}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const p1, 0x7f0800bf

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    const v1, 0x7f0800be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0800bd

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    const v4, 0x7f0800bc

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/k$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/k$a;-><init>(Lcom/android/gallery3d/filtershow/imageshow/k;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->d0:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->d0:Landroid/widget/Button;

    const/4 v2, 0x0

    aget v4, p1, v2

    aget p1, p1, v3

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v3

    sub-int/2addr p1, v3

    invoke-virtual {v0, v1, v2, v4, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private R(I)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->i0:I

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/k;->setChannel(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->d0:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->P:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->P()V

    return-void
.end method

.method private getFilterName()Ljava/lang/String;
    .locals 1

    const-string v0, "Curves"

    return-object v0
.end method


# virtual methods
.method protected H()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/i;->Q()V

    :cond_0
    return-void
.end method

.method public N()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->h0:Lcom/android/gallery3d/filtershow/filters/k;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/k;->l0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->S()V

    :cond_0
    return-void
.end method

.method public O()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/i;->R()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected P()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/i;->S()V

    :cond_0
    return-void
.end method

.method public declared-synchronized S()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->x(Lcom/android/gallery3d/filtershow/imageshow/ImageShow;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/k;->R(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->h0:Lcom/android/gallery3d/filtershow/filters/k;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->O:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->V:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/k$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/k$c;-><init>(Lcom/android/gallery3d/filtershow/imageshow/k;)V

    new-array v2, v1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getFilteredImage()Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->getImagePreset()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->V:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->I()Lcom/android/gallery3d/filtershow/filters/n0;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    if-eqz v0, :cond_3

    if-ne v0, v1, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->W:[I

    const/high16 v1, -0x10000

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/k;->J(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    if-eqz v0, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->a0:[I

    const v1, -0xff0100

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/k;->J(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    :cond_6
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    :cond_7
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->b0:[I

    const v1, -0xffff01

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/gallery3d/filtershow/imageshow/k;->J(Landroid/graphics/Canvas;[IILandroid/graphics/PorterDuff$Mode;)V

    :cond_8
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    if-nez v0, :cond_a

    :goto_0
    const/4 v0, 0x4

    if-ge v3, v0, :cond_a

    invoke-direct {p0, v3}, Lcom/android/gallery3d/filtershow/imageshow/k;->K(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v4

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    if-eq v3, v0, :cond_9

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/imageshow/c0;->m()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/imageshow/c0;->c(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->f0:Z

    move-object v5, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/gallery3d/filtershow/imageshow/c0;->g(Landroid/graphics/Canvas;IIIZZ)V

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_a
    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/k;->K(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object v1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->c(I)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    iget-boolean v7, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->f0:Z

    move-object v2, p1

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/imageshow/c0;->g(Landroid/graphics/Canvas;IIIZZ)V

    return-void
.end method

.method public declared-synchronized onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->k()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    :try_start_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/c0;->d()I

    move-result v0

    const/4 v2, 0x2

    div-int/2addr v0, v2

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    cmpg-float v4, v3, v0

    if-gez v4, :cond_2

    move v3, v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    cmpg-float v5, v4, v0

    if-gez v5, :cond_3

    move v4, v0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v3, v5

    if-lez v5, :cond_4

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    :cond_4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v0

    cmpl-float v5, v4, v5

    if-lez v5, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    :cond_5
    sub-float/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    mul-float/2addr v6, v0

    sub-float/2addr v5, v6

    div-float/2addr v3, v5

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, v6

    div-float/2addr v4, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v5, -0x1

    if-ne v0, v1, :cond_7

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->T:Lcom/android/gallery3d/filtershow/imageshow/b;

    iput v5, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->U:I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->S()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->R:Z

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->S:Z

    if-eqz v0, :cond_6

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->S:Z

    :cond_6
    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->f0:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v1

    :cond_7
    :try_start_3
    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->S:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_8

    monitor-exit p0

    return v1

    :cond_8
    :try_start_4
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->I()Lcom/android/gallery3d/filtershow/filters/n0;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v0, :cond_9

    monitor-exit p0

    return v1

    :cond_9
    :try_start_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_e

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->f0:Z

    iget p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/k;->K(I)Lcom/android/gallery3d/filtershow/imageshow/c0;

    move-result-object p1

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->U:I

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->T:Lcom/android/gallery3d/filtershow/imageshow/b;

    if-nez v6, :cond_b

    invoke-direct {p0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/k;->M(FF)I

    move-result v0

    if-ne v0, v5, :cond_a

    new-instance v0, Lcom/android/gallery3d/filtershow/imageshow/b;

    invoke-direct {v0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/b;-><init>(FF)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->T:Lcom/android/gallery3d/filtershow/imageshow/b;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->b(Lcom/android/gallery3d/filtershow/imageshow/b;)I

    move-result v0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->R:Z

    goto :goto_0

    :cond_a
    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->l(I)Lcom/android/gallery3d/filtershow/imageshow/b;

    move-result-object v6

    iput-object v6, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->T:Lcom/android/gallery3d/filtershow/imageshow/b;

    :goto_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->U:I

    :cond_b
    invoke-virtual {p1, v3, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->n(FI)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {p1, v0, v3, v4}, Lcom/android/gallery3d/filtershow/imageshow/c0;->o(IFF)V

    goto :goto_1

    :cond_c
    if-eq v0, v5, :cond_d

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/c0;->k()I

    move-result v3

    if-le v3, v2, :cond_d

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->e(I)V

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->S:Z

    :cond_d
    :goto_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/imageshow/k;->S()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_e
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected p()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setChannel(I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    goto :goto_0

    :pswitch_1
    iput v1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    goto :goto_0

    :pswitch_2
    iput v2, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    goto :goto_0

    :pswitch_3
    iput v3, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->Q:I

    :goto_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :pswitch_data_0
    .packed-switch 0x7f0800bc
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEditor(Lcom/android/gallery3d/filtershow/editors/i;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->g0:Lcom/android/gallery3d/filtershow/editors/i;

    return-void
.end method

.method public setFilterDrawRepresentation(Lcom/android/gallery3d/filtershow/filters/k;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->h0:Lcom/android/gallery3d/filtershow/filters/k;

    return-void
.end method

.method public w(Landroid/widget/LinearLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->e0:Landroid/widget/PopupWindow;

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->d0:Landroid/widget/Button;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->i0:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/k;->R(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/imageshow/k;->d0:Landroid/widget/Button;

    new-instance v1, Lcom/android/gallery3d/filtershow/imageshow/k$b;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/imageshow/k$b;-><init>(Lcom/android/gallery3d/filtershow/imageshow/k;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
