.class public Lcn/nubia/gallery3d/anim/AlphaAnimation;
.super Lcn/nubia/gallery3d/anim/CanvasAnimation;
.source "AlphaAnimation.java"


# instance fields
.field private mCurrentAlpha:F

.field private final mEndAlpha:F

.field private final mStartAlpha:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/CanvasAnimation;-><init>()V

    .line 28
    iput p1, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    .line 29
    iput p2, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    .line 30
    iput p1, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 1

    .line 35
    iget v0, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    invoke-interface {p1, v0}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->multiplyAlpha(F)V

    return-void
.end method

.method public getCanvasSaveFlags()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected onCalculate(F)V
    .locals 2

    .line 45
    iget v0, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mStartAlpha:F

    iget v1, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mEndAlpha:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    const/4 p1, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, p1, v1}, Lcn/nubia/gallery3d/common/Utils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcn/nubia/gallery3d/anim/AlphaAnimation;->mCurrentAlpha:F

    return-void
.end method
