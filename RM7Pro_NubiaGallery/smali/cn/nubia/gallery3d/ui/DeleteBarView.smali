.class public Lcn/nubia/gallery3d/ui/DeleteBarView;
.super Lcn/nubia/gallery3d/ui/GLView;
.source "DeleteBarView.java"


# static fields
.field private static ANIM_TIME:J = 0xc8L

.field private static final GRAY:I = -0x555556

.field private static final NO_ANIMATION:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "DeleteBarView"

.field private static final TRANSLUCENT_RED:I = -0x6f710000

.field private static final WHITE:I = -0x1


# instance fields
.field private mAlpha:F

.field private mAnimationStartTime:J

.field private final mBarHeight:I

.field private mChangeColor:Z

.field private mContext:Landroid/content/Context;

.field private final mDeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

.field private final mDeletedText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

.field private final mDeletedTextMargin:I

.field private mFromAlpha:F

.field private final mIconSize:I

.field private final mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

.field private mSpaceForFullScreen:I

.field private mToAlpha:F


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
    iput v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    .line 46
    iput-boolean v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mChangeColor:Z

    const-wide/16 v1, -0x1

    .line 135
    iput-wide v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    .line 56
    iput-object p1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

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

    iput v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    goto :goto_0

    :cond_0
    const/16 v1, 0x30

    .line 60
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    :goto_0
    const/16 v1, 0x20

    .line 62
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v1

    iput v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mIconSize:I

    const/16 v1, 0xe

    .line 63
    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    iput v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedTextMargin:I

    .line 65
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const v3, 0x7f0801d3

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    .line 66
    new-instance v2, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v3, 0x7f080083

    invoke-direct {v2, p1, v3}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    const v2, 0x7f100213

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

    iput-object v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    .line 69
    invoke-static {}, Lcn/nubia/gallery3d/util/GalleryUtils;->needToAdjustUI()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    :cond_1
    return-void
.end method

.method private advanceAnimation()V
    .locals 6

    .line 164
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    return-void

    .line 166
    :cond_0
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v0

    iget-wide v4, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    sub-long/2addr v0, v4

    long-to-float v0, v0

    sget-wide v4, Lcn/nubia/gallery3d/ui/DeleteBarView;->ANIM_TIME:J

    long-to-float v1, v4

    div-float/2addr v0, v1

    .line 168
    iget v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mFromAlpha:F

    iget v4, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mToAlpha:F

    cmpl-float v4, v4, v1

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    neg-float v0, v0

    :goto_0
    add-float/2addr v1, v0

    iput v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 169
    invoke-static {v1, v4, v0}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    .line 171
    iget v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mToAlpha:F

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 172
    iput-wide v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 174
    invoke-super {p0, v0}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 177
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->invalidate()V

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

    .line 151
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->getTargetAlpha(I)F

    move-result p1

    .line 152
    iget-wide v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v4, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    cmpl-float v4, v4, p1

    if-nez v4, :cond_0

    return-void

    :cond_0
    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 153
    iget v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mToAlpha:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_1

    return-void

    .line 155
    :cond_1
    iget v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    iput v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mFromAlpha:F

    .line 156
    iput p1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mToAlpha:F

    .line 157
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->startTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    const/4 p1, 0x0

    .line 159
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 160
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->invalidate()V

    return-void
.end method

.method public changeColor(Z)V
    .locals 0

    .line 181
    iput-boolean p1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mChangeColor:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 76
    iget p1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->setMeasuredSize(II)V

    return-void
.end method

.method protected render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 14

    .line 81
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->render(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V

    .line 82
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->advanceAnimation()V

    const/4 v0, 0x1

    .line 84
    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->save(I)V

    .line 85
    iget v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    .line 87
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->getWidth()I

    move-result v0

    .line 88
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const/4 v3, 0x0

    iget v4, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    iget v6, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    goto :goto_0

    .line 91
    :cond_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mPanel:Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v6, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    move-object v2, p1

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcn/nubia/gallery3d/glrenderer/NinePatchTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 96
    :goto_0
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    if-eqz v2, :cond_5

    .line 97
    iget v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mIconSize:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedTextMargin:I

    add-int/2addr v2, v3

    invoke-virtual {v1}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getWidth()I

    move-result v1

    add-int/2addr v2, v1

    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    .line 98
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x17

    .line 99
    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    goto :goto_1

    .line 101
    :cond_1
    iget v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    iget v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mIconSize:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 103
    :goto_1
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 104
    iget v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    add-int/2addr v2, v3

    :cond_2
    move v5, v2

    .line 106
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedIcon:Lcn/nubia/gallery3d/glrenderer/ResourceTexture;

    iget v7, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mIconSize:I

    move-object v3, p1

    move v4, v1

    move v6, v7

    invoke-virtual/range {v2 .. v7}, Lcn/nubia/gallery3d/glrenderer/ResourceTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;IIII)V

    .line 108
    iget v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mIconSize:I

    add-int/2addr v1, v2

    iget v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedTextMargin:I

    add-int/2addr v1, v2

    .line 109
    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-static {v2}, Lcn/nubia/improve/ImproveConfig;->isSupportCutoutMode(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, 0x1f

    .line 110
    invoke-static {v2}, Lcn/nubia/gallery3d/util/GalleryUtils;->dpToPixel(I)I

    move-result v2

    goto :goto_2

    .line 112
    :cond_3
    iget v2, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v3}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    .line 114
    :goto_2
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 115
    iget v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    add-int/2addr v2, v3

    .line 117
    :cond_4
    iget-object v3, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mDeletedText:Lcn/nubia/gallery3d/glrenderer/StringTexture;

    invoke-virtual {v3, p1, v1, v2}, Lcn/nubia/gallery3d/glrenderer/StringTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 119
    :cond_5
    iget-boolean v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mChangeColor:Z

    if-eqz v1, :cond_7

    .line 120
    iget-object v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isPortrait(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v3, 0x0

    .line 121
    iget v1, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mSpaceForFullScreen:I

    int-to-float v4, v1

    int-to-float v5, v0

    iget v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    int-to-float v6, v0

    const/high16 v7, -0x6f710000

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    goto :goto_3

    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x0

    int-to-float v11, v0

    .line 123
    iget v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mBarHeight:I

    int-to-float v12, v0

    const/high16 v13, -0x6f710000

    move-object v8, p1

    invoke-interface/range {v8 .. v13}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->fillRect(FFFFI)V

    .line 126
    :cond_7
    :goto_3
    invoke-interface {p1}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->restore()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 144
    invoke-static {p1}, Lcn/nubia/gallery3d/ui/DeleteBarView;->getTargetAlpha(I)F

    move-result v0

    iput v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAlpha:F

    const-wide/16 v0, -0x1

    .line 145
    iput-wide v0, p0, Lcn/nubia/gallery3d/ui/DeleteBarView;->mAnimationStartTime:J

    .line 146
    invoke-super {p0, p1}, Lcn/nubia/gallery3d/ui/GLView;->setVisibility(I)V

    .line 147
    invoke-virtual {p0}, Lcn/nubia/gallery3d/ui/DeleteBarView;->invalidate()V

    return-void
.end method
