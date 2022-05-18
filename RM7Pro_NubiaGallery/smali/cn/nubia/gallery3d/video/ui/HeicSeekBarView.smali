.class public Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "HeicSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HeicSeekBarView"


# instance fields
.field private m05Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private m05TexX:I

.field private m05TexY:I

.field private m10Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private m10TexX:I

.field private m10TexY:I

.field private m20Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private m20TexX:I

.field private m20TexY:I

.field private m5Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private m5TexX:I

.field private m5TexY:I

.field private mContext:Landroid/content/Context;

.field private mLineLength:F

.field private mLineY:F

.field private mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

.field private mMax:J

.field private mNavGationBarLeft:I

.field private mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mPosition:I

.field private mProgress:I

.field private mProgressLength:F

.field private mSeekBar:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mSeekBarIsVisible:Z

.field private mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

.field private mSeekBarWidth:I

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mTextTopPadding:I

.field private navGationBarLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 74
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->navGationBarLeft:I

    .line 56
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgress:I

    .line 68
    new-instance v1, Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-direct {v1}, Lcn/nubia/gallery3d/video/ui/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    .line 69
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarIsVisible:Z

    const/16 v0, 0x270

    .line 70
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    .line 75
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x64

    .line 76
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mMax:J

    .line 77
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->initPixel()V

    .line 78
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->initTex()V

    return-void
.end method

.method private checkTouchOnSeekBarLine(II)Z
    .locals 1

    .line 264
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result p2

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr p2, v0

    div-int/lit8 p2, p2, 0x2

    if-le p1, p2, :cond_0

    int-to-float p1, p1

    int-to-float p2, p2

    .line 265
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgressLength:F

    add-float/2addr p2, v0

    cmpg-float p1, p1, p2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private drawSeekBar(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 13

    .line 100
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save()V

    .line 101
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 102
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_0

    .line 103
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mNavGationBarLeft:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 105
    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 108
    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v3, v0, 0x2

    .line 111
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBar:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mLineY:F

    float-to-int v4, v0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mLineLength:F

    float-to-int v5, v0

    .line 112
    invoke-interface {v1}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v6

    move-object v2, p1

    .line 111
    invoke-interface/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 113
    iget-object v7, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mPosition:I

    add-int/lit8 v9, v0, -0x10

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mLineY:F

    float-to-int v0, v0

    add-int/lit8 v10, v0, -0x10

    invoke-interface {v7}, Lcn/nubia/gallery3d/glrenderer/Texture;->getWidth()I

    move-result v11

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 114
    invoke-interface {v0}, Lcn/nubia/gallery3d/glrenderer/Texture;->getHeight()I

    move-result v12

    move-object v8, p1

    .line 113
    invoke-interface/range {v7 .. v12}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 117
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "0.5X"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 118
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "5.0X"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "1.0X"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    const-string v1, "20.0X"

    invoke-static {v1, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05TexX:I

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05TexY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10TexX:I

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10TexY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20TexX:I

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20TexY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5Tex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5TexX:I

    invoke-virtual {v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5TexY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 125
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private initPixel()V
    .locals 2

    .line 88
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700ce

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextSize:I

    .line 89
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700cd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextTopPadding:I

    .line 90
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mPosition:I

    .line 91
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextColor:I

    const/4 v0, 0x0

    .line 92
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mNavGationBarLeft:I

    return-void
.end method

.method private initTex()V
    .locals 3

    .line 82
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextColor:I

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    .line 83
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f080146

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 84
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f080144

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBar:Lcn/nubia/gallery3d/glrenderer/Texture;

    return-void
.end method

.method private isLayoutRTLNubia()Z
    .locals 2

    .line 129
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/text/TextUtilsCompat;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private positonToTime(I)J
    .locals 6

    .line 239
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_2

    .line 240
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgressLength:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v2, p1

    int-to-float v3, v0

    add-float/2addr v3, v1

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 243
    iget-wide v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mMax:J

    return-wide v0

    .line 245
    :cond_1
    iget-wide v2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mMax:J

    sub-int/2addr p1, v0

    int-to-long v4, p1

    mul-long/2addr v2, v4

    long-to-float p1, v2

    div-float/2addr p1, v1

    float-to-long v0, p1

    return-wide v0

    :cond_2
    :goto_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private timeToPosition(J)I
    .locals 6

    .line 250
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 251
    iget-wide v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mMax:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    return v0

    :cond_0
    cmp-long v5, p1, v1

    if-ltz v5, :cond_1

    int-to-float p1, v0

    .line 254
    iget p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgressLength:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_1
    cmp-long v5, p1, v3

    if-lez v5, :cond_3

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    int-to-float v0, v0

    long-to-float p1, p1

    .line 258
    iget p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgressLength:F

    mul-float/2addr p1, p2

    long-to-float p2, v1

    div-float/2addr p1, p2

    add-float/2addr v0, p1

    float-to-int p1, v0

    return p1

    :cond_3
    :goto_0
    return v0
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 135
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 136
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 137
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 139
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarIsVisible:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->drawSeekBar(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    return-void
.end method

.method public getProgress()J
    .locals 2

    .line 212
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgress:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSeekBarIsVisible()Z
    .locals 1

    .line 236
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarIsVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 188
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result p1

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarWidth:I

    sub-int/2addr p1, p2

    div-int/lit8 p1, p1, 0x2

    .line 189
    iget-object p4, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    add-int/2addr p2, p1

    invoke-virtual {p4, p1, p3, p2, p5}, Lcn/nubia/gallery3d/video/ui/Rect;->set(IIII)V

    .line 191
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05TexX:I

    .line 192
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p2, p2, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p3, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextTopPadding:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m05TexY:I

    int-to-float p1, p1

    .line 193
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p2

    const/high16 p3, 0x40400000    # 3.0f

    div-float/2addr p2, p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5TexX:I

    .line 194
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p2, p2, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p4, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextTopPadding:I

    int-to-float p4, p4

    sub-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m5TexY:I

    .line 195
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p2

    div-float/2addr p2, p3

    const/high16 p4, 0x3f800000    # 1.0f

    mul-float/2addr p2, p4

    add-float/2addr p2, p1

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10TexX:I

    .line 196
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p2, p2, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p4, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextTopPadding:I

    int-to-float p4, p4

    sub-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m10TexY:I

    .line 197
    iget-object p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p2}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p2

    div-float/2addr p2, p3

    mul-float/2addr p2, p3

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20TexX:I

    .line 198
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mTextTopPadding:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->m20TexY:I

    .line 199
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mLineY:F

    .line 200
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mLineLength:F

    const/high16 p1, 0x441c0000    # 624.0f

    .line 201
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgressLength:F

    .line 203
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgress:I

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->setProgress(I)V

    .line 204
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->invalidate()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 147
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarIsVisible:Z

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, 0x0

    .line 151
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_1

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v1

    .line 155
    :cond_1
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 156
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    :goto_0
    add-int/2addr v0, v1

    .line 160
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 162
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, v2, :cond_4

    const/4 v3, 0x2

    if-eq p1, v3, :cond_3

    goto :goto_1

    .line 168
    :cond_3
    invoke-direct {p0, v0, v1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->checkTouchOnSeekBarLine(II)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 169
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mPosition:I

    .line 170
    invoke-direct {p0, v0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->positonToTime(I)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgress:I

    .line 171
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;->onProgressChanged(I)V

    goto :goto_1

    .line 176
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;->onEndScale()V

    goto :goto_1

    .line 164
    :cond_5
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;->onBebinScale()V

    .line 181
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->invalidate()V

    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public setListener(Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 216
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mProgress:I

    .line 217
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->navGationBarLeft:I

    const/4 v1, 0x0

    .line 218
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 219
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->navGationBarLeft:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 221
    iput v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->navGationBarLeft:I

    :goto_0
    int-to-long v1, p1

    .line 223
    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->timeToPosition(J)I

    move-result p1

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->navGationBarLeft:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mPosition:I

    if-eq v0, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->requestLayout()V

    .line 227
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->invalidate()V

    return-void
.end method

.method public setSeekBarVisible(Z)V
    .locals 0

    .line 232
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/HeicSeekBarView;->mSeekBarIsVisible:Z

    return-void
.end method
