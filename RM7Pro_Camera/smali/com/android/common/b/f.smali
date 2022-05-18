.class public Lcom/android/common/b/f;
.super Lcom/android/common/b/m;
.source "SourceFile"


# instance fields
.field private o:I

.field private p:I

.field private q:Landroid/graphics/Bitmap;

.field private r:I

.field private s:I


# direct methods
.method private constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;IILandroid/graphics/Bitmap;II)V
    .locals 0

    .line 27
    invoke-direct/range {p0 .. p5}, Lcom/android/common/b/m;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V

    const/4 p4, 0x0

    .line 18
    iput p4, p0, Lcom/android/common/b/f;->o:I

    .line 19
    iput p4, p0, Lcom/android/common/b/f;->p:I

    .line 21
    iput p4, p0, Lcom/android/common/b/f;->r:I

    .line 22
    iput p4, p0, Lcom/android/common/b/f;->s:I

    .line 28
    iput-object p6, p0, Lcom/android/common/b/f;->q:Landroid/graphics/Bitmap;

    .line 29
    iput p7, p0, Lcom/android/common/b/f;->r:I

    .line 30
    iput p8, p0, Lcom/android/common/b/f;->s:I

    .line 31
    invoke-virtual {p2, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, p0, Lcom/android/common/b/f;->o:I

    .line 32
    iget p1, p3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/common/b/f;->p:I

    .line 34
    iget p2, p0, Lcom/android/common/b/f;->o:I

    const/4 p3, 0x1

    if-gtz p2, :cond_0

    iput p3, p0, Lcom/android/common/b/f;->o:I

    :cond_0
    if-gtz p1, :cond_1

    .line 35
    iput p3, p0, Lcom/android/common/b/f;->p:I

    :cond_1
    return-void
.end method

.method public static a(Ljava/lang/String;FIIILandroid/graphics/Bitmap;II)Lcom/android/common/b/f;
    .locals 10

    .line 40
    invoke-static {p1, p2}, Lcom/android/common/b/f;->a(FI)Landroid/text/TextPaint;

    move-result-object v2

    .line 41
    invoke-virtual {v2}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 42
    new-instance v9, Lcom/android/common/b/f;

    move-object v0, v9

    move-object v1, p0

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/common/b/f;-><init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;IILandroid/graphics/Bitmap;II)V

    return-object v9
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDraw "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/android/common/b/f;->k:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FrameStringTexture"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    new-instance p2, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 49
    iget v0, p0, Lcom/android/common/b/f;->r:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/common/b/f;->d:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/common/b/f;->s:I

    sub-int/2addr v1, v3

    iget v3, p0, Lcom/android/common/b/f;->c:I

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/android/common/b/f;->d:I

    sub-int/2addr v4, v2

    invoke-direct {v0, v2, v1, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 52
    iget-object p2, p0, Lcom/android/common/b/f;->k:Ljava/lang/String;

    iget v0, p0, Lcom/android/common/b/f;->c:I

    iget v1, p0, Lcom/android/common/b/f;->o:I

    sub-int/2addr v0, v1

    div-int/2addr v0, v2

    int-to-float v0, v0

    iget v1, p0, Lcom/android/common/b/f;->d:I

    sub-int/2addr v1, v2

    iget v3, p0, Lcom/android/common/b/f;->s:I

    sub-int/2addr v1, v3

    iget v4, p0, Lcom/android/common/b/f;->p:I

    sub-int/2addr v3, v4

    div-int/2addr v3, v2

    iget-object v2, p0, Lcom/android/common/b/f;->m:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v3, v2

    add-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/common/b/f;->l:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 54
    iget-object p2, p0, Lcom/android/common/b/f;->q:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method
