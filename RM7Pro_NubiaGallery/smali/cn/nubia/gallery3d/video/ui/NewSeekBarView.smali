.class public Lcn/nubia/gallery3d/video/ui/NewSeekBarView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "NewSeekBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;
    }
.end annotation


# instance fields
.field private mBackgroundColor:I

.field private mBorder:I

.field private mClickOnPlayPause:Z

.field private mContext:Landroid/content/Context;

.field private mControlPointRadius:I

.field private mCurrentTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mCurrentTimeTexX:I

.field private mCurrentTimeTexY:I

.field private mDurationTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private mDurationTimeTexX:I

.field private mDurationTimeTexY:I

.field private mInStartTrack:Z

.field private mInvalid:Z

.field private mIsPlaying:Z

.field private mLineColor:I

.field private mLineLeftPadding:I

.field private mLineLength:F

.field private mLineRightPadding:I

.field private mLineTopPadding:I

.field private mLineX:F

.field private mLineY:F

.field private mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

.field private mMax:J

.field private mNavGationBarLeft:I

.field private mNewSeekBarPauseTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mNewSeekBarPlayTex:Lcn/nubia/gallery3d/glrenderer/Texture;

.field private mPlayLineColor:I

.field private mPlayOrPauseHeight:I

.field private mPlayOrPauseLeftPadding:I

.field private mPlayOrPauseTopPadding:I

.field private mPlayOrPauseWidth:I

.field private mPlayOrPauseX:I

.field private mPlayOrPauseY:I

.field private mPosition:I

.field private mProgress:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSeekBarHeightPadding:I

.field private mSeekBarIsVisible:Z

.field private mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

.field private mTextColor:I

.field private mTextPaint:Landroid/text/TextPaint;

.field private mTextSize:I

.field private mTextTopPadding:I

.field private navGationBarLeft:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 104
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 57
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->navGationBarLeft:I

    .line 74
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    .line 93
    new-instance v1, Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-direct {v1}, Lcn/nubia/gallery3d/video/ui/Rect;-><init>()V

    iput-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    .line 96
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    .line 97
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    .line 98
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    .line 99
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mClickOnPlayPause:Z

    .line 100
    iput-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mIsPlaying:Z

    .line 105
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    const-wide/16 v0, 0x0

    .line 106
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    .line 107
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->initPixel()V

    .line 108
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->initTex()V

    return-void
.end method

.method private checkTouchOnPlayPause(II)Z
    .locals 1

    .line 367
    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseX:I

    if-le p1, p2, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseWidth:I

    add-int/2addr p2, v0

    if-ge p1, p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private checkTouchOnSeekBarLine(II)Z
    .locals 1

    int-to-float p1, p1

    .line 359
    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineX:F

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

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
    .locals 9

    .line 148
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save()V

    .line 149
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    const/16 v6, 0x19

    const/4 v7, 0x0

    if-eqz v0, :cond_1

    .line 150
    invoke-static {v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v0

    if-le v0, v6, :cond_0

    .line 151
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->isLayoutRTLNubia()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNavGationBarLeft:I

    mul-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 153
    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    .line 155
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->translate(FFF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    .line 156
    invoke-interface {p1, v0, v1, v1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->scale(FFF)V

    .line 158
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget v1, v0, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget v2, v0, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result v3

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/video/ui/Rect;->height()F

    move-result v4

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mBackgroundColor:I

    move-object v0, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 161
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mIsPlaying:Z

    if-eqz v0, :cond_2

    .line 162
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPauseTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseX:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseY:I

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 164
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPlayTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseX:I

    iget v3, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseY:I

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseWidth:I

    iget v5, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseHeight:I

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 168
    :goto_0
    new-instance v8, Lcn/nubia/gallery3d/glrenderer/GLPaint;

    invoke-direct {v8}, Lcn/nubia/gallery3d/glrenderer/GLPaint;-><init>()V

    .line 169
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineColor:I

    invoke-virtual {v8, v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 170
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mBorder:I

    int-to-float v0, v0

    invoke-virtual {v8, v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setLineWidth(F)V

    .line 171
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineX:F

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineY:F

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

    add-float v3, v1, v0

    move-object v0, p1

    move v2, v4

    move-object v5, v8

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    .line 172
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayLineColor:I

    invoke-virtual {v8, v0}, Lcn/nubia/gallery3d/glrenderer/GLPaint;->setColor(I)V

    .line 173
    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineX:F

    iget v4, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineY:F

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    int-to-float v3, v0

    move-object v0, p1

    move v2, v4

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->drawLine(FFFFLcn/nubia/gallery3d/glrenderer/GLPaint;)V

    .line 174
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mControlPointRadius:I

    sub-int v3, v1, v2

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineY:F

    float-to-int v1, v1

    sub-int v4, v1, v2

    mul-int/lit8 v5, v2, 0x2

    mul-int/lit8 v8, v2, 0x2

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v8

    invoke-interface/range {v0 .. v5}, Lcn/nubia/gallery3d/glrenderer/Texture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 178
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    int-to-long v0, v0

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 179
    iget-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    invoke-static {v0, v1}, Lcn/nubia/video/player/common/Utils;->stringForTime(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;Landroid/text/TextPaint;)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 180
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTexX:I

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTexY:I

    invoke-virtual {v0, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    const/4 v0, 0x0

    .line 182
    invoke-static {v7}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v1

    if-le v1, v6, :cond_3

    .line 183
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v0

    .line 185
    :cond_3
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTex:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTexX:I

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v2, v0

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTexY:I

    invoke-virtual {v1, p1, v2, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 186
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method private initPixel()V
    .locals 2

    .line 119
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070213

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mBorder:I

    .line 120
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070181

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    .line 121
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070182

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineRightPadding:I

    .line 122
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070183

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineTopPadding:I

    .line 123
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07017f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mControlPointRadius:I

    .line 124
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070189

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextSize:I

    .line 125
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070188

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextTopPadding:I

    .line 126
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    .line 127
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070185

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseLeftPadding:I

    .line 128
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070186

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseTopPadding:I

    .line 129
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070187

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseWidth:I

    .line 130
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070184

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseHeight:I

    .line 131
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mBackgroundColor:I

    .line 132
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600cb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextColor:I

    .line 133
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600c8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineColor:I

    .line 134
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0600ca

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayLineColor:I

    const/4 v0, 0x0

    .line 135
    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNavGationBarLeft:I

    .line 136
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070180

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarHeightPadding:I

    return-void
.end method

.method private initTex()V
    .locals 3

    .line 112
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextSize:I

    int-to-float v0, v0

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextColor:I

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getNoShadowPaint(FI)Landroid/text/TextPaint;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextPaint:Landroid/text/TextPaint;

    .line 113
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0801f1

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPlayTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 114
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0801f0

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPauseTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    .line 115
    new-instance v0, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f080145

    invoke-direct {v0, v1, v2}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mNewSeekBarPlayPointTex:Lcn/nubia/gallery3d/glrenderer/Texture;

    return-void
.end method

.method private isLayoutRTLNubia()Z
    .locals 2

    .line 190
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

    .line 336
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    if-le p1, v0, :cond_2

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

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

    .line 339
    iget-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    return-wide v0

    .line 341
    :cond_1
    iget-wide v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

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
    .locals 5

    .line 346
    iget-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 347
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    return p1

    :cond_0
    cmp-long v4, p1, v0

    if-ltz v4, :cond_1

    .line 349
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    int-to-float p1, p1

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    return p1

    :cond_1
    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    goto :goto_0

    .line 353
    :cond_2
    iget v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    int-to-float v2, v2

    long-to-float p1, p1

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

    mul-float/2addr p1, p2

    long-to-float p2, v0

    div-float/2addr p1, p2

    add-float/2addr v2, p1

    float-to-int p1, v2

    return p1

    .line 351
    :cond_3
    :goto_0
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    return p1
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 197
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 200
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->drawSeekBar(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getInvalid()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    return v0
.end method

.method public getMax()J
    .locals 2

    .line 298
    iget-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    return-wide v0
.end method

.method public getProgress()J
    .locals 2

    .line 302
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getSeekBarIsVisible()Z
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    sub-int p1, p4, p2

    .line 267
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mScreenWidth:I

    sub-int p1, p5, p3

    .line 268
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mScreenHeight:I

    .line 270
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p1, p2, p3, p4, p5}, Lcn/nubia/gallery3d/video/ui/Rect;->set(IIII)V

    .line 272
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseLeftPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseX:I

    .line 273
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseTopPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPlayOrPauseY:I

    .line 275
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTexX:I

    .line 276
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextTopPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mCurrentTimeTexY:I

    .line 278
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p1

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineRightPadding:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTexX:I

    .line 279
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mTextTopPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mDurationTimeTexY:I

    .line 281
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->left:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineX:F

    .line 282
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    iget p1, p1, Lcn/nubia/gallery3d/video/ui/Rect;->top:F

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineTopPadding:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineY:F

    .line 283
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarRect:Lcn/nubia/gallery3d/video/ui/Rect;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/Rect;->width()F

    move-result p1

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineRightPadding:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iget p2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLeftPadding:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mLineLength:F

    .line 285
    iget p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->setProgress(I)V

    .line 286
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->invalidate()V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 208
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v0

    const/16 v2, 0x19

    if-le v0, v2, :cond_1

    .line 213
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    .line 216
    :goto_0
    invoke-direct {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->isLayoutRTLNubia()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 217
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    sub-int/2addr v2, v3

    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    :goto_1
    add-int/2addr v2, v0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    .line 223
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    goto :goto_2

    .line 236
    :cond_3
    invoke-direct {p0, v2, v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->checkTouchOnSeekBarLine(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 237
    iput v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    .line 238
    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->positonToTime(I)J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    .line 239
    iget-boolean v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    if-nez v0, :cond_4

    .line 240
    iput-boolean v3, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    .line 241
    iget-object v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    invoke-interface {v0, p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;->onStartTrackingTouch(I)V

    .line 243
    :cond_4
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    invoke-interface {p1, v0, v3}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;->onProgressChanged(IZ)V

    goto :goto_2

    .line 248
    :cond_5
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mClickOnPlayPause:Z

    if-eqz p1, :cond_6

    .line 249
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;->onClickPlayControl()V

    .line 250
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mClickOnPlayPause:Z

    .line 252
    :cond_6
    iget-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    if-eqz p1, :cond_9

    .line 253
    iput-boolean v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    .line 254
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->positonToTime(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;->onStopTrackingTouch(I)V

    goto :goto_2

    .line 225
    :cond_7
    invoke-direct {p0, v2, v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->checkTouchOnPlayPause(II)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 226
    iput-boolean v3, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mClickOnPlayPause:Z

    .line 228
    :cond_8
    invoke-direct {p0, v2, v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->checkTouchOnSeekBarLine(II)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 229
    iput v2, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    .line 230
    iput-boolean v3, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInStartTrack:Z

    .line 231
    iget-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    invoke-direct {p0, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->positonToTime(I)J

    move-result-wide v0

    long-to-int v0, v0

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;->onStartTrackingTouch(I)V

    .line 260
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->invalidate()V

    return v3

    :cond_a
    :goto_3
    return v1
.end method

.method public setInvalid(Z)V
    .locals 0

    .line 321
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mInvalid:Z

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;)V
    .locals 0

    .line 290
    iput-object p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mListener:Lcn/nubia/gallery3d/video/ui/NewSeekBarView$NewSeekBarListener;

    return-void
.end method

.method public setMax(I)V
    .locals 2

    int-to-long v0, p1

    .line 294
    iput-wide v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mMax:J

    return-void
.end method

.method public setPlayOrPause(Z)V
    .locals 0

    .line 375
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mIsPlaying:Z

    .line 376
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->invalidate()V

    return-void
.end method

.method public setProgress(I)V
    .locals 3

    .line 306
    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mProgress:I

    .line 307
    iget v0, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->navGationBarLeft:I

    const/4 v1, 0x0

    .line 308
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isLandOritentation270(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isNavigationBarVisable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->getCurrentSDKVersion()I

    move-result v1

    const/16 v2, 0x19

    if-le v1, v2, :cond_0

    .line 309
    iget-object v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getVirtualBarHeight(Landroid/content/Context;)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->navGationBarLeft:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 311
    iput v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->navGationBarLeft:I

    :goto_0
    int-to-long v1, p1

    .line 313
    invoke-direct {p0, v1, v2}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->timeToPosition(J)I

    move-result p1

    iget v1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->navGationBarLeft:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mPosition:I

    if-eq v0, v1, :cond_1

    .line 315
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->requestLayout()V

    .line 317
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->invalidate()V

    return-void
.end method

.method public setSeekBarVisible(Z)V
    .locals 0

    .line 328
    iput-boolean p1, p0, Lcn/nubia/gallery3d/video/ui/NewSeekBarView;->mSeekBarIsVisible:Z

    return-void
.end method
