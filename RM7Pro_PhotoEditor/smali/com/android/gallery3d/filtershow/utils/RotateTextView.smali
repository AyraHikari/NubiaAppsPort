.class public Lcom/android/gallery3d/filtershow/utils/RotateTextView;
.super Landroid/widget/TextView;
.source ""


# instance fields
.field private a:Z

.field private b:I

.field private c:I

.field private d:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->a:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050090

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->c:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->b:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->d:F

    return-void
.end method

.method private a(Landroid/graphics/Paint;)F
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p1

    iget v0, p1, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget p1, p1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v0, p1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->c:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->b:I

    :goto_0
    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->d:F

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    const/high16 v0, -0x3d4c0000    # -90.0f

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->rotate(FFF)V

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v0, v5

    sub-float/2addr v4, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v6}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->a(Landroid/graphics/Paint;)F

    move-result v5

    const/high16 v7, 0x40800000    # 4.0f

    div-float/2addr v5, v7

    add-float/2addr v5, v0

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->a:Z

    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
