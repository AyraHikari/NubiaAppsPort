.class public Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;
.super Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;
.source "SlotView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/ui/SlotView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FadeInAnimation"
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 490
    invoke-direct {p0}, Lcn/nubia/gallery3d/ui/SlotView$SlotAnimation;-><init>()V

    .line 491
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-direct {v0, v1}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 492
    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;->setDuration(I)V

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;ILandroid/graphics/Rect;)V
    .locals 0

    .line 497
    iget p2, p0, Lcn/nubia/gallery3d/ui/SlotView$FadeInAnimation;->mProgress:F

    invoke-interface {p1, p2}, Lcn/nubia/gallery3d/glrenderer/GLCanvas;->setAlpha(F)V

    return-void
.end method
