.class public abstract Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SlotAnimation"
.end annotation


# instance fields
.field protected mProgress:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 448
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    const/4 v0, 0x0

    .line 446
    iput v0, p0, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    .line 449
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0x5dc

    .line 450
    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public abstract apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
.end method

.method protected onCalculate(F)V
    .locals 0

    .line 455
    iput p1, p0, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;->mProgress:F

    return-void
.end method
