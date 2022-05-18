.class public Lcn/nubia/collage/m;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static a:Ljava/lang/StringBuilder; = null

.field private static b:F = 3.0f


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcn/nubia/collage/m;->a:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static b(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static c(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
    .locals 7

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object v5, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static final d(I)I
    .locals 1

    int-to-float p0, p0

    sget v0, Lcn/nubia/collage/m;->b:F

    mul-float/2addr p0, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method public static e(Lcn/nubia/collage/c;Landroid/graphics/Rect;Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 11

    const/4 v0, 0x2

    invoke-static {v0}, Lcn/nubia/collage/m;->d(I)I

    move-result v1

    sget-object v2, Lcn/nubia/collage/m$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v2, p0

    const/4 v2, 0x3

    if-eq p0, v0, :cond_1

    if-eq p0, v2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    mul-int/lit8 v1, v1, 0x2

    :goto_0
    iget p0, p1, Landroid/graphics/Rect;->left:I

    if-nez p0, :cond_2

    add-int/2addr p0, v1

    goto :goto_1

    :cond_2
    div-int/lit8 v3, v1, 0x2

    add-int/2addr p0, v3

    :goto_1
    iget v3, p1, Landroid/graphics/Rect;->top:I

    if-nez v3, :cond_3

    add-int/2addr v3, v1

    goto :goto_2

    :cond_3
    div-int/lit8 v4, v1, 0x2

    add-int/2addr v3, v4

    :goto_2
    iget v4, p1, Landroid/graphics/Rect;->right:I

    invoke-static {}, Lcn/nubia/collage/o/b/k;->j()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_4

    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v1

    goto :goto_3

    :cond_4
    iget v4, p1, Landroid/graphics/Rect;->right:I

    div-int/lit8 v6, v1, 0x2

    sub-int/2addr v4, v6

    :goto_3
    iget v6, p1, Landroid/graphics/Rect;->bottom:I

    invoke-static {}, Lcn/nubia/collage/o/b/k;->j()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v6, v5, :cond_5

    goto :goto_4

    :cond_5
    div-int/2addr v1, v0

    :goto_4
    sub-int/2addr p1, v1

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    int-to-float v6, p0

    int-to-float v7, v3

    int-to-float v8, v4

    int-to-float v9, p1

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, p2

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    add-int/2addr p0, v2

    int-to-float v6, p0

    add-int/2addr v3, v2

    int-to-float v7, v3

    sub-int/2addr v4, v2

    int-to-float v8, v4

    sub-int/2addr p1, v2

    int-to-float v9, p1

    sget-object v10, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    move-object v5, p3

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    return-void
.end method

.method public static f(Landroid/content/Context;Ljava/util/List;I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {p0, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcn/nubia/collage/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "template_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ".dat"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/nubia/collage/m;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public static g()F
    .locals 2

    sget v0, Lcn/nubia/collage/m;->b:F

    const/high16 v1, 0x40400000    # 3.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcn/nubia/collage/m;->k(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method public static i(Landroid/content/Context;)V
    .locals 0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    sput p0, Lcn/nubia/collage/m;->b:F

    return-void
.end method

.method public static j(Landroid/content/Context;)Z
    .locals 4

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    move v1, v0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    aget-object v2, p0, v1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    if-ne v2, v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static l(Landroid/content/Context;Ljava/lang/String;)Lcn/nubia/collage/o/b/k;
    .locals 1

    const/4 v0, 0x3

    invoke-static {v0, p1, p0}, Lc/e/c/l;->a(ILjava/lang/String;Landroid/content/Context;)Lc/e/c/k;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {p0, p1}, Lc/e/c/k;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/nubia/collage/o/b/k;

    return-object p0
.end method
