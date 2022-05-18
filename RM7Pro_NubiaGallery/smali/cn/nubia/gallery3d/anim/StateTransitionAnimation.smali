.class public Lcn/nubia/gallery3d/anim/StateTransitionAnimation;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "StateTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;,
        Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;,
        Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;
    }
.end annotation


# instance fields
.field private mCurrentBackgroundAlpha:F

.field private mCurrentBackgroundScale:F

.field private mCurrentOverlayAlpha:F

.field private mCurrentOverlayScale:F

.field private mListener:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;

.field private mOldScreenTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

.field private final mTransitionSpec:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;


# direct methods
.method public constructor <init>(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 1

    .line 109
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    if-eqz p1, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    sget-object p1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->OUTGOING:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    :goto_0
    iput-object p1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mTransitionSpec:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    .line 111
    iget v0, p1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->duration:I

    invoke-virtual {p0, v0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->setDuration(I)V

    .line 112
    iget-object p1, p1, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->interpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 113
    iput-object p2, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V
    .locals 0

    .line 106
    invoke-static {p1}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;->access$000(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Transition;)Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;-><init>(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Spec;Lcn/nubia/gallery3d/glrenderer/RawTexture;)V

    return-void
.end method

.method private applyOldTexture(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;FFZ)V
    .locals 0

    .line 150
    iget-object p1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 152
    invoke-virtual {p1, p2, p3, p3}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method


# virtual methods
.method public applyBackground(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    .line 165
    iget v3, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundAlpha:F

    iget v4, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mCurrentBackgroundScale:F

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;FFZ)V

    return-void
.end method

.method public applyContentTransform(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 0

    return-void
.end method

.method public applyOverlay(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;)V
    .locals 6

    .line 181
    iget v3, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayAlpha:F

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_0

    .line 182
    iget v4, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mCurrentOverlayScale:F

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->applyOldTexture(Lcn/nubia/gallery3d/ui/GLView;Lcn/nubia/gallery3d/glrenderer/GLCanvas;FFZ)V

    :cond_0
    return-void
.end method

.method public calculate(J)Z
    .locals 0

    .line 119
    invoke-super {p0, p1, p2}, Lcn/nubia/gallery3d/anim/Animation;->calculate(J)Z

    move-result p1

    .line 120
    invoke-virtual {p0}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->isActive()Z

    move-result p2

    if-nez p2, :cond_1

    .line 121
    iget-object p2, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    if-eqz p2, :cond_0

    .line 122
    invoke-virtual {p2}, Lcn/nubia/gallery3d/glrenderer/RawTexture;->recycle()V

    const/4 p2, 0x0

    .line 123
    iput-object p2, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mOldScreenTexture:Lcn/nubia/gallery3d/glrenderer/RawTexture;

    .line 126
    :cond_0
    iget-object p2, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mListener:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;

    invoke-interface {p2}, Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;->onAnimationDone()V

    :cond_1
    return p1
.end method

.method protected onCalculate(F)V
    .locals 0

    return-void
.end method

.method public setListener(Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcn/nubia/gallery3d/anim/StateTransitionAnimation;->mListener:Lcn/nubia/gallery3d/anim/StateTransitionAnimation$Listener;

    return-void
.end method
