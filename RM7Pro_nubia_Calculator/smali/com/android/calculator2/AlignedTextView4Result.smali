.class public Lcom/android/calculator2/AlignedTextView4Result;
.super Landroid/widget/TextView;
.source "AlignedTextView4Result.java"


# static fields
.field private static final LATIN_CAPITAL_LETTER:Ljava/lang/String; = "H"


# instance fields
.field private mBottomPaddingOffset:I

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTopPaddingOffset:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/AlignedTextView4Result;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f06017d

    .line 41
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView4Result;->setHighlightColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/AlignedTextView4Result;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f06017d

    .line 46
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView4Result;->setHighlightColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/calculator2/AlignedTextView4Result;->mTempRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 53
    invoke-virtual {p0, p2}, Lcom/android/calculator2/AlignedTextView4Result;->setIncludeFontPadding(Z)V

    const p2, 0x7f06017d

    .line 54
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView4Result;->setHighlightColor(I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingBottom()I
    .locals 1

    .line 78
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v0

    iget p0, p0, Lcom/android/calculator2/AlignedTextView4Result;->mBottomPaddingOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 1

    .line 73
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    iget p0, p0, Lcom/android/calculator2/AlignedTextView4Result;->mTopPaddingOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 59
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView4Result;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "H"

    .line 62
    iget-object v2, p0, Lcom/android/calculator2/AlignedTextView4Result;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 64
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView4Result;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/AlignedTextView4Result;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 65
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 64
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/calculator2/AlignedTextView4Result;->mTopPaddingOffset:I

    .line 66
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView4Result;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/calculator2/AlignedTextView4Result;->mBottomPaddingOffset:I

    .line 68
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    return-void
.end method
