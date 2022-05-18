.class public Lcn/nubia/gallery3d/glrenderer/StringTexture;
.super Lcn/nubia/gallery3d/glrenderer/CanvasTexture;
.source "StringTexture.java"


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mText:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 38
    invoke-direct {p0, p4, p5}, Lcn/nubia/gallery3d/glrenderer/CanvasTexture;-><init>(II)V

    .line 39
    iput-object p1, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    .line 40
    iput-object p2, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    .line 41
    iput-object p3, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static getBoldPaint(FI)Landroid/text/TextPaint;
    .locals 1

    .line 54
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 55
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 56
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 57
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 58
    invoke-static {p0}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getDefaultPaint(FI)Landroid/text/TextPaint;
    .locals 2

    .line 45
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 46
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 47
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 48
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    const/high16 p0, 0x40000000    # 2.0f

    const/4 p1, 0x0

    const/high16 v1, -0x1000000

    .line 49
    invoke-virtual {v0, p0, p1, p1, v1}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    return-object v0
.end method

.method public static getNoShadowPaint(FI)Landroid/text/TextPaint;
    .locals 1

    .line 63
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 64
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 65
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 66
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcn/nubia/gallery3d/glrenderer/StringTexture;
    .locals 0

    .line 72
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    invoke-static {p0, p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;FIFZ)Lcn/nubia/gallery3d/glrenderer/StringTexture;
    .locals 0

    .line 78
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getDefaultPaint(FI)Landroid/text/TextPaint;

    move-result-object p1

    if-eqz p4, :cond_0

    const/4 p2, 0x1

    .line 80
    invoke-static {p2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :cond_0
    const/4 p2, 0x0

    cmpl-float p2, p3, p2

    if-lez p2, :cond_1

    .line 83
    sget-object p2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {p0, p1, p3, p2}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    :cond_1
    invoke-static {p0, p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;
    .locals 1

    const/4 v0, -0x1

    .line 90
    invoke-static {p0, p1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p0

    return-object p0
.end method

.method public static newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcn/nubia/gallery3d/glrenderer/StringTexture;
    .locals 6

    .line 94
    invoke-virtual {p1}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 95
    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_0

    if-le v0, p2, :cond_0

    .line 98
    div-int/2addr v0, p2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move p2, v0

    move v0, v1

    .line 101
    :goto_0
    iget v2, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v4, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v2, v4

    if-gtz p2, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, p2

    :goto_1
    if-gtz v2, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    .line 105
    :goto_2
    new-instance p2, Lcn/nubia/gallery3d/glrenderer/StringTexture;

    mul-int v5, v1, v0

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/StringTexture;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object p2
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 10

    .line 110
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 111
    iget-object p2, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    move v9, v1

    .line 114
    :goto_0
    iget-object v2, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    const/4 v4, 0x0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    iget v3, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mWidth:I

    int-to-float v7, v3

    const/4 v8, 0x0

    move-object v3, p2

    invoke-virtual/range {v2 .. v8}, Landroid/text/TextPaint;->breakText(Ljava/lang/CharSequence;IIZF[F)I

    move-result v2

    .line 115
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 116
    iget-object v4, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v4, v4, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget-object v5, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v5, v5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v4, v5

    add-int/lit8 v5, v9, 0x1

    mul-int/2addr v4, v9

    int-to-float v4, v4

    iget-object v6, p0, Lcn/nubia/gallery3d/glrenderer/StringTexture;->mPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v0, v4, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 117
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p2, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-gtz v2, :cond_0

    return-void

    :cond_0
    move v9, v5

    goto :goto_0
.end method
