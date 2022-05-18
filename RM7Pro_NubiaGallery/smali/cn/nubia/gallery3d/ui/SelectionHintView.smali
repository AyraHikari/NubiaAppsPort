.class public Lcn/nubia/gallery3d/ui/SelectionHintView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "SelectionHintView.java"


# instance fields
.field private bgColor:I

.field private mBitmapLoaded:Z

.field private final mHintText:Ljava/lang/String;

.field private mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

.field private final mImageHeight:I

.field private final mImageMarginLeft:I

.field private final mImageMarginTop:I

.field private final mImageWidth:I

.field private final mLineColor:I

.field private mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

.field private final mPlaceHolderColor:I

.field private mText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private final mTextColor:I

.field private final mTextMarginLeft:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private final mTextSize:I

.field private mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mToggleHintMarginLeft:I

.field private final mToggleHintSize:I

.field private mToggleHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mToggleHintTextPaint:Landroid/text/TextPaint;

.field private mToggleZone:Landroid/graphics/Rect;

.field private mToggled:Z

.field private mUnToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 50
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    .line 47
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mBitmapLoaded:Z

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->bgColor:I

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07021e

    .line 52
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageWidth:I

    const v2, 0x7f07021d

    .line 53
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    const v2, 0x7f07021f

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginLeft:I

    const v2, 0x7f070221

    .line 55
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextMarginLeft:I

    const v2, 0x7f070222

    .line 56
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextSize:I

    .line 57
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, -0x19000001

    .line 58
    iput v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextColor:I

    goto :goto_0

    :cond_0
    const v3, 0x7f06002e

    .line 60
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextColor:I

    :goto_0
    const v3, 0x7f060026

    .line 62
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iput v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mLineColor:I

    int-to-float v2, v2

    .line 63
    iget v4, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextColor:I

    invoke-static {v2, v4}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextPaint:Landroid/text/TextPaint;

    .line 64
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {v2}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    .line 65
    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    const v2, 0x7f060025

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mPlaceHolderColor:I

    const v2, 0x7f070220

    .line 68
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    const v2, 0x7f070223

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    const v2, 0x7f070224

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintSize:I

    int-to-float v2, v2

    .line 72
    iget v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextColor:I

    invoke-static {v2, v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintTextPaint:Landroid/text/TextPaint;

    .line 73
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f08005c

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 74
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f080063

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mUnToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f10010b

    .line 75
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mHintText:Ljava/lang/String;

    .line 76
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/high16 p1, -0x1000000

    .line 77
    iput p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->bgColor:I

    goto :goto_1

    .line 79
    :cond_1
    iput v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->bgColor:I

    :goto_1
    return-void
.end method

.method private initToggleZone()V
    .locals 6

    .line 158
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    add-int/2addr v0, v1

    .line 160
    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 161
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v0

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    .line 162
    new-instance v2, Landroid/graphics/Rect;

    add-int/lit8 v3, v1, -0x1e

    add-int/lit8 v4, v0, -0x1e

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    .line 163
    invoke-virtual {v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v5

    add-int/2addr v1, v5

    add-int/lit8 v1, v1, 0x3c

    iget-object v5, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v5}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v5

    add-int/2addr v0, v5

    add-int/lit8 v0, v0, 0x3c

    invoke-direct {v2, v3, v4, v1, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleZone:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBitmapLoaded()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mBitmapLoaded:Z

    return v0
.end method

.method public getToggleState()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 134
    invoke-super/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 135
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->initToggleZone()V

    .line 136
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz p1, :cond_0

    .line 137
    invoke-virtual {p1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->recycle()V

    .line 139
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mHintText:Ljava/lang/String;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintTextPaint:Landroid/text/TextPaint;

    iget p3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p4, p3

    invoke-static {p1, p2, p4}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;I)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 151
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->invalidate()V

    goto :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleZone:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 147
    iget-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    :cond_2
    :goto_0
    return v1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 13

    .line 99
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->bgColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 101
    iget-object v7, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    if-eqz v7, :cond_0

    .line 102
    iget v9, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginLeft:I

    iget v10, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    iget v11, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageWidth:I

    iget v12, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    move-object v8, p1

    invoke-virtual/range {v7 .. v12}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 104
    :cond_0
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginLeft:I

    int-to-float v2, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    int-to-float v3, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageWidth:I

    int-to-float v4, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mPlaceHolderColor:I

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 108
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_1

    .line 109
    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginLeft:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageWidth:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextMarginLeft:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextPaint:Landroid/text/TextPaint;

    .line 110
    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    .line 109
    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 113
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageMarginTop:I

    iget v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImageHeight:I

    add-int/2addr v0, v1

    .line 114
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 116
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 115
    invoke-virtual {v1, p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    goto :goto_1

    .line 119
    :cond_2
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mUnToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    .line 121
    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 123
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mUnToggleButton:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v4}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    .line 119
    invoke-virtual {v1, p1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 126
    :goto_1
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v2, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintMarginLeft:I

    .line 127
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    iget-object v4, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggleHintTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4}, Landroid/text/TextPaint;->getTextSize()F

    move-result v4

    float-to-int v4, v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 126
    invoke-virtual {v1, p1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    const/4 v4, 0x0

    .line 129
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v5, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/SelectionHintView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    iget-object v8, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mLinePaint:Lcn/nubia/gallery3d/glrenderer/GLPaint;

    move-object v3, p1

    invoke-interface/range {v3 .. v8}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 86
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    invoke-direct {v0, p1}, Lcn/nubia/gallery3d/glrenderer/BitmapTexture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mImage:Lcn/nubia/gallery3d/glrenderer/BitmapTexture;

    const/4 p1, 0x1

    .line 87
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mBitmapLoaded:Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    :cond_0
    return-void
.end method

.method public setToggleState(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/SelectionHintView;->mToggled:Z

    return-void
.end method
