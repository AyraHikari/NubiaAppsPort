.class public Lcom/android/common/b/m;
.super Lcom/android/common/b/b;
.source "SourceFile"


# instance fields
.field final k:Ljava/lang/String;

.field final l:Landroid/text/TextPaint;

.field final m:Landroid/graphics/Paint$FontMetricsInt;


# direct methods
.method constructor <init>(Ljava/lang/String;Landroid/text/TextPaint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0

    .line 39
    invoke-direct {p0, p4, p5}, Lcom/android/common/b/b;-><init>(II)V

    .line 40
    iput-object p1, p0, Lcom/android/common/b/m;->k:Ljava/lang/String;

    .line 41
    iput-object p2, p0, Lcom/android/common/b/m;->l:Landroid/text/TextPaint;

    .line 42
    iput-object p3, p0, Lcom/android/common/b/m;->m:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public static a(FI)Landroid/text/TextPaint;
    .locals 1

    .line 46
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    .line 47
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    const/4 p0, 0x1

    .line 48
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 49
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 2

    .line 84
    iget-object p2, p0, Lcom/android/common/b/m;->m:Landroid/graphics/Paint$FontMetricsInt;

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    neg-int p2, p2

    int-to-float p2, p2

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 85
    iget-object p2, p0, Lcom/android/common/b/m;->k:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/common/b/m;->l:Landroid/text/TextPaint;

    invoke-virtual {p1, p2, v0, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public j()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 91
    iget v2, p0, Lcom/android/common/b/m;->a:I

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 92
    invoke-static {v0, v1, v3}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    return-void
.end method
