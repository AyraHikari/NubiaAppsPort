.class public Lcn/nubia/gallery3d/ui/UndoBarView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "UndoBarView.java"


# static fields
.field private static ANIM_TIME:J = 0xc8L

.field private static final GRAY:I = -0x555556

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "UndoBarView"

.field private static final WHITE:I = -0x1


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private mContext:Landroid/content/Context;

.field private mFromAlpha:F

.field private final mIconSize:I

.field private mOnClickListener:Lcn/nubia/gallery3d/ui/GLView$OnClickListener;

.field private final mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

.field private mSpaceForFullScreen:I

.field private mToAlpha:F

.field private final mUndoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mUndoText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private final mUndoTextMargin:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 55
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/GLView;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    const-wide/16 v1, -0x1

    .line 154
    iput-wide v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 56
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    .line 57
    move-object v1, p1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x38

    .line 58
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 60
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    :goto_0
    const/16 v1, 0x20

    .line 62
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mIconSize:I

    const/16 v1, 0xe

    .line 63
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    .line 65
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const v3, 0x7f0801d3

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 66
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f080082

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f100256

    .line 67
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 68
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 67
    invoke-static {v2, v1, v3, v4, v0}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->newInstance(Ljava/lang/String;FIFZ)Lcn/nubia/gallery3d/glrenderer/StringTexture;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 69
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->needToAdjustUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    :cond_1
    return-void
.end method

.method private advanceAnimation()V
    .locals 6

    .line 183
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 185
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v4, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-wide v4, Lcn/nubia/gallery3d/ui/UndoBarView;->ANIM_TIME:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    .line 187
    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mFromAlpha:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 188
    invoke-static {v1, v4, v0}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    .line 190
    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 191
    iput-wide v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 193
    invoke-super {p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 196
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/UndoBarView;->invalidate()V

    return-void
.end method

.method private static getTargetAlpha(I)F
    .locals 0

    if-nez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public animateVisibility(I)V
    .locals 5

    .line 170
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result p1

    .line 171
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v4, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    return-void

    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 172
    iget v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mToAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 174
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mFromAlpha:F

    .line 175
    iput p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mToAlpha:F

    .line 176
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 178
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 179
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/UndoBarView;->invalidate()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 80
    iget p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    .line 81
    iget-object p2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 82
    iget p2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    add-int/2addr p1, p2

    :cond_0
    const/4 p2, 0x0

    .line 84
    invoke-virtual {p0, p2, p1}, Lcn/nubia/gallery3d/ui/UndoBarView;->setMeasuredSize(II)V

    return-void
.end method

.method protected onTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mOnClickListener:Lcn/nubia/gallery3d/ui/GLView$OnClickListener;

    if-eqz p1, :cond_1

    .line 139
    invoke-interface {p1, p0}, Lcn/nubia/gallery3d/ui/GLView$OnClickListener;->onClick(Lcn/nubia/gallery3d/ui/GLView;)V

    :cond_1
    :goto_0
    return v0
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 7

    .line 89
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 90
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/UndoBarView;->advanceAnimation()V

    const/4 v0, 0x1

    .line 92
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 93
    iget v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 95
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/UndoBarView;->getWidth()I

    move-result v0

    .line 96
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 99
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 105
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    if-eqz v2, :cond_5

    .line 106
    iget v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mIconSize:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v2, v1

    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    .line 107
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x17

    .line 108
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    goto :goto_1

    .line 110
    :cond_1
    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mIconSize:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 112
    :goto_1
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    iget v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    add-int/2addr v1, v2

    :cond_2
    move v4, v1

    .line 115
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v6, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mIconSize:I

    move-object v2, p1

    move v3, v0

    move v5, v6

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 117
    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mIconSize:I

    add-int/2addr v0, v1

    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoTextMargin:I

    add-int/2addr v0, v1

    .line 118
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0x1f

    .line 119
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    goto :goto_2

    .line 121
    :cond_3
    iget v1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mBarHeight:I

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    .line 123
    :goto_2
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 124
    iget v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mSpaceForFullScreen:I

    add-int/2addr v1, v2

    .line 126
    :cond_4
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mUndoText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v2, p1, v0, v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 129
    :cond_5
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public setOnClickListener(Lcn/nubia/gallery3d/ui/GLView$OnClickListener;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mOnClickListener:Lcn/nubia/gallery3d/ui/GLView$OnClickListener;

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 163
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/UndoBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAlpha:F

    const-wide/16 v0, -0x1

    .line 164
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/UndoBarView;->mAnimationStartTime:J

    .line 165
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 166
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/UndoBarView;->invalidate()V

    return-void
.end method
