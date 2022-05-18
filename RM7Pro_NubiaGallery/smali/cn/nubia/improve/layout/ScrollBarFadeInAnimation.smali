.class public Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;
.super Lcn/nubia/improve/layout/ScrollBarFadeAnimation;
.source "ScrollBarFadeInAnimation.java"


# instance fields
.field private mExtend:Z


# direct methods
.method public constructor <init>(Lcn/nubia/improve/layout/ScrollBarIndicator;Z)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;-><init>(Lcn/nubia/improve/layout/ScrollBarIndicator;)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mExtend:Z

    .line 11
    iput-boolean p2, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mExtend:Z

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/improve/layout/ScrollBarIndicator;I)V
    .locals 4

    .line 16
    iget-boolean v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mExtend:Z

    const v1, 0x3ecccccc    # 0.39999998f

    if-nez v0, :cond_0

    .line 17
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mBarWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mBarWidth:I

    int-to-float v1, v1

    const v2, 0x3f19999a    # 0.6f

    mul-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    iget v3, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mProgress:F

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    .line 19
    :cond_0
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mBarWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 21
    :goto_0
    iget-object v1, p0, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeInAnimation;->isActive()Z

    move-result v2

    invoke-interface {v1, v2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;->AnimationCompleted(Z)V

    .line 22
    invoke-virtual {p2, p1, v0, p3}, Lcn/nubia/improve/layout/ScrollBarIndicator;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    return-void
.end method
