.class public Lcom/android/calculator2/AlignedTextView;
.super Landroid/widget/EditText;
.source "AlignedTextView.java"


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

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/android/calculator2/AlignedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f06017d

    .line 42
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView;->setHighlightColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x1010084

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/android/calculator2/AlignedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const p2, 0x7f06017d

    .line 47
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView;->setHighlightColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/android/calculator2/AlignedTextView;->mTempRect:Landroid/graphics/Rect;

    const/4 p2, 0x0

    .line 54
    invoke-virtual {p0, p2}, Lcom/android/calculator2/AlignedTextView;->setIncludeFontPadding(Z)V

    const p2, 0x7f06017d

    .line 55
    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/calculator2/AlignedTextView;->setHighlightColor(I)V

    return-void
.end method


# virtual methods
.method public getCompoundPaddingBottom()I
    .locals 1

    .line 79
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingBottom()I

    move-result v0

    iget p0, p0, Lcom/android/calculator2/AlignedTextView;->mBottomPaddingOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getCompoundPaddingTop()I
    .locals 1

    .line 74
    invoke-super {p0}, Landroid/widget/EditText;->getCompoundPaddingTop()I

    move-result v0

    iget p0, p0, Lcom/android/calculator2/AlignedTextView;->mTopPaddingOffset:I

    sub-int/2addr v0, p0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 60
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, "H"

    .line 63
    iget-object v2, p0, Lcom/android/calculator2/AlignedTextView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v3, v4, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 65
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/android/calculator2/AlignedTextView;->mTempRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    .line 66
    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    .line 65
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/android/calculator2/AlignedTextView;->mTopPaddingOffset:I

    .line 67
    invoke-virtual {p0}, Lcom/android/calculator2/AlignedTextView;->getPaddingBottom()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Paint;->descent()F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/calculator2/AlignedTextView;->mBottomPaddingOffset:I

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onMeasure(II)V

    return-void
.end method
