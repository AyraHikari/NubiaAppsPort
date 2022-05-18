.class public abstract Lcn/nubia/improve/layout/ScrollBarFadeAnimation;
.super Lcn/nubia/gallery3d/anim/Animation;
.source "ScrollBarFadeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;
    }
.end annotation


# instance fields
.field protected final RATE:F

.field protected mBarWidth:I

.field protected mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

.field protected mProgress:F

.field protected mResourceTexture:Lcn/nubia/improve/layout/ScrollBarIndicator;


# direct methods
.method public constructor <init>(Lcn/nubia/improve/layout/ScrollBarIndicator;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lcn/nubia/gallery3d/anim/Animation;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mProgress:F

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mBarWidth:I

    const v0, 0x3f19999a    # 0.6f

    .line 15
    iput v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->RATE:F

    .line 18
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/16 v0, 0x12c

    .line 19
    invoke-virtual {p0, v0}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->setDuration(I)V

    .line 20
    iput-object p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mResourceTexture:Lcn/nubia/improve/layout/ScrollBarIndicator;

    .line 21
    invoke-virtual {p1}, Lcn/nubia/improve/layout/ScrollBarIndicator;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mBarWidth:I

    return-void
.end method


# virtual methods
.method public abstract apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/improve/layout/ScrollBarIndicator;I)V
.end method

.method public getRate()F
    .locals 1

    const v0, 0x3f19999a    # 0.6f

    return v0
.end method

.method protected onCalculate(F)V
    .locals 0

    .line 27
    iput p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mProgress:F

    return-void
.end method

.method public setListener(Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    return-void
.end method
