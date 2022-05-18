.class public Lcn/nubia/gallery3d/ui/RecycledHintView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "RecycledHintView.java"


# instance fields
.field private bgColor:I

.field private bgColor_Night:I

.field private hintText:Ljava/lang/String;

.field private hintTextPaint:Landroid/text/TextPaint;

.field private hintTexture:Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;

.field private textColor:I

.field private textLeftMargin:I

.field private textSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const v0, -0xebe9e1

    .line 23
    iput v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->bgColor_Night:I

    const v0, -0x1a1a1b

    .line 24
    iput v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->bgColor:I

    .line 27
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 28
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 29
    iget p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->bgColor_Night:I

    iput p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->bgColor:I

    :cond_0
    const p1, 0x7f070209

    .line 31
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textLeftMargin:I

    const p1, 0x7f100116

    .line 32
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintText:Ljava/lang/String;

    const p1, 0x7f07020a

    .line 33
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textSize:I

    const p1, 0x7f0600c1

    .line 34
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textColor:I

    return-void
.end method

.method private initDrawingText()V
    .locals 4

    .line 57
    iget v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textSize:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textColor:I

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintTextPaint:Landroid/text/TextPaint;

    .line 58
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintText:Ljava/lang/String;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/RecycledHintView;->getWidth()I

    move-result v1

    iget v2, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textLeftMargin:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;->newInstance(Ljava/lang/String;ILandroid/text/TextPaint;Landroid/text/Layout$Alignment;)Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 52
    invoke-super/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    .line 53
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/RecycledHintView;->initDrawingText()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    .line 39
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/RecycledHintView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/RecycledHintView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->bgColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 41
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;

    iget v1, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->textLeftMargin:I

    .line 42
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/RecycledHintView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/RecycledHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;->getTextLayoutHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    .line 41
    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/MultiLineTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method
