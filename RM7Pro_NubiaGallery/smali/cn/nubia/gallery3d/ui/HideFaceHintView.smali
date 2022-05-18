.class public Lcn/nubia/gallery3d/ui/HideFaceHintView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "HideFaceHintView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "HideFaceHintView"


# instance fields
.field private bgColor:I

.field private hintText:Ljava/lang/String;

.field private hintTextPaint:Landroid/text/TextPaint;

.field private hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private icon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private textColor:I

.field private textSize:I


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/app/GalleryActivity;Landroid/os/Handler;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    .line 31
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    .line 32
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mContext:Landroid/content/Context;

    .line 33
    iput-object p2, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mHandler:Landroid/os/Handler;

    .line 34
    invoke-interface {p1}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAndroidContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNight(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, -0x1000000

    .line 35
    iput p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->bgColor:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 37
    iput p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->bgColor:I

    .line 39
    :goto_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f1001b3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintText:Ljava/lang/String;

    .line 40
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700ad

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->textSize:I

    .line 41
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f06008b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->textColor:I

    .line 42
    new-instance p1, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object p2, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mContext:Landroid/content/Context;

    const v0, 0x7f0801e7

    invoke-direct {p1, p2, v0}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->icon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    return-void
.end method

.method private initDrawingText()V
    .locals 2

    .line 76
    iget v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->textSize:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->textColor:I

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTextPaint:Landroid/text/TextPaint;

    .line 77
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintText:Ljava/lang/String;

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 70
    invoke-super/range {p0 .. p5}, Lcn/nubia/gallery3d/ui/GLView;->onLayout(ZIIII)V

    const-string p1, "HideFaceHintView"

    const-string p2, "txh onLayout"

    .line 71
    invoke-static {p1, p2}, Lcn/nubia/gallery3d/ui/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->initDrawingText()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_1

    const/4 v0, 0x5

    .line 60
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    .line 47
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget v6, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->bgColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p1

    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 48
    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->icon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 50
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x5

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 51
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->icon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->hintTexture:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/HideFaceHintView;->getHeight()I

    move-result v2

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/HideFaceHintView;->icon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, p1, v0, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    :cond_0
    return-void
.end method
