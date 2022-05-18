.class public Lcn/nubia/weather/ui/view/JustifyTextView;
.super Landroid/widget/TextView;
.source "JustifyTextView.java"


# instance fields
.field private mLineY:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method private drawScaledText(Landroid/graphics/Canvas;ILjava/lang/String;F)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "lineStart"    # I
    .param p3, "line"    # Ljava/lang/String;
    .param p4, "lineWidth"    # F

    .prologue
    .line 57
    const/4 v6, 0x0

    .line 58
    .local v6, "x":F
    invoke-direct {p0, p2, p3}, Lcn/nubia/weather/ui/view/JustifyTextView;->isFirstLineOfParagraph(ILjava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 59
    const-string v0, "  "

    .line 60
    .local v0, "blanks":Ljava/lang/String;
    iget v7, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {p1, v0, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v1

    .line 62
    .local v1, "bw":F
    add-float/2addr v6, v1

    .line 64
    const/4 v7, 0x3

    invoke-virtual {p3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p3

    .line 67
    .end local v0    # "blanks":Ljava/lang/String;
    .end local v1    # "bw":F
    :cond_0
    iget v7, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mViewWidth:I

    int-to-float v7, v7

    sub-float/2addr v7, p4

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    sub-float v4, v7, v8

    .line 68
    .local v4, "d":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_1

    .line 69
    invoke-virtual {p3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, "c":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v3

    .line 71
    .local v3, "cw":F
    iget v7, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    int-to-float v7, v7

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-virtual {p1, v2, v6, v7, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 72
    add-float v7, v3, v4

    add-float/2addr v6, v7

    .line 68
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 74
    .end local v2    # "c":Ljava/lang/String;
    .end local v3    # "cw":F
    :cond_1
    return-void
.end method

.method private isFirstLineOfParagraph(ILjava/lang/String;)Z
    .locals 5
    .param p1, "lineStart"    # I
    .param p2, "line"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x20

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_0

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private needScale(Ljava/lang/String;)Z
    .locals 3
    .param p1, "line"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 84
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 30
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    .line 31
    .local v5, "paint":Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getCurrentTextColor()I

    move-result v8

    invoke-virtual {v5, v8}, Landroid/text/TextPaint;->setColor(I)V

    .line 32
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getDrawableState()[I

    move-result-object v8

    iput-object v8, v5, Landroid/text/TextPaint;->drawableState:[I

    .line 33
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getMeasuredWidth()I

    move-result v8

    iput v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mViewWidth:I

    .line 34
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 35
    .local v6, "text":Ljava/lang/String;
    const/4 v8, 0x0

    iput v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    .line 36
    iget v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    int-to-float v8, v8

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getTextSize()F

    move-result v9

    add-float/2addr v8, v9

    float-to-int v8, v8

    iput v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    .line 37
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 38
    .local v1, "layout":Landroid/text/Layout;
    if-eqz v1, :cond_1

    .line 39
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    if-ge v0, v8, :cond_1

    .line 40
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineStart(I)I

    move-result v4

    .line 41
    .local v4, "lineStart":I
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v3

    .line 42
    .local v3, "lineEnd":I
    invoke-virtual {v6, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 44
    .local v2, "line":Ljava/lang/String;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v8

    invoke-static {v6, v4, v3, v8}, Landroid/text/StaticLayout;->getDesiredWidth(Ljava/lang/CharSequence;IILandroid/text/TextPaint;)F

    move-result v7

    .line 45
    .local v7, "width":F
    invoke-direct {p0, v2}, Lcn/nubia/weather/ui/view/JustifyTextView;->needScale(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v1}, Landroid/text/Layout;->getLineCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v0, v8, :cond_0

    .line 46
    invoke-direct {p0, p1, v4, v2, v7}, Lcn/nubia/weather/ui/view/JustifyTextView;->drawScaledText(Landroid/graphics/Canvas;ILjava/lang/String;F)V

    .line 50
    :goto_1
    iget v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/JustifyTextView;->getLineHeight()I

    move-result v9

    add-int/2addr v8, v9

    iput v8, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    .line 39
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 48
    :cond_0
    const/4 v8, 0x0

    iget v9, p0, Lcn/nubia/weather/ui/view/JustifyTextView;->mLineY:I

    int-to-float v9, v9

    invoke-virtual {p1, v2, v8, v9, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 54
    .end local v0    # "i":I
    .end local v2    # "line":Ljava/lang/String;
    .end local v3    # "lineEnd":I
    .end local v4    # "lineStart":I
    .end local v7    # "width":F
    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 25
    invoke-super/range {p0 .. p5}, Landroid/widget/TextView;->onLayout(ZIIII)V

    .line 26
    return-void
.end method
