.class public Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;
.super Lcn/nubia/improve/layout/ScrollBarFadeAnimation;
.source "ScrollBarFadeOutAnimation.java"


# instance fields
.field private mAutoFadeStart:J

.field private mAutoFadeout:Z

.field private mAutoFadeoutTime:J

.field private mExtend:Z


# direct methods
.method public constructor <init>(Lcn/nubia/improve/layout/ScrollBarIndicator;ZJ)V
    .locals 2

    .line 12
    invoke-direct {p0, p1}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation;-><init>(Lcn/nubia/improve/layout/ScrollBarIndicator;)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mExtend:Z

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeoutTime:J

    .line 9
    iput-wide v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeStart:J

    .line 10
    iput-boolean p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    .line 14
    iput-boolean p2, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mExtend:Z

    .line 15
    iput-wide p3, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeoutTime:J

    return-void
.end method


# virtual methods
.method public apply(Lcn/nubia/gallery3d/glrenderer/GLCanvas;Lcn/nubia/improve/layout/ScrollBarIndicator;I)V
    .locals 9

    .line 20
    iget-boolean v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mExtend:Z

    const v1, 0x3f19999a    # 0.6f

    const/4 v2, 0x0

    const v3, 0x3ecccccc    # 0.39999998f

    const/4 v4, 0x1

    if-ne v0, v4, :cond_4

    .line 21
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mProgress:F

    iget v5, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mBarWidth:I

    int-to-float v5, v5

    mul-float/2addr v0, v5

    iget-boolean v5, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 22
    iget-boolean v1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    if-ne v1, v4, :cond_1

    .line 23
    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mBarWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 25
    :cond_1
    invoke-virtual {p2, p1, v0, p3}, Lcn/nubia/improve/layout/ScrollBarIndicator;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 26
    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->isActive()Z

    move-result p1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    if-nez p1, :cond_2

    .line 27
    iput-boolean v4, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    .line 28
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeStart:J

    .line 30
    :cond_2
    iget-boolean p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    if-ne p1, v4, :cond_3

    .line 31
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide p1

    iget-wide v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeStart:J

    sub-long/2addr p1, v0

    .line 32
    iget-wide v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeoutTime:J

    const-wide/16 v5, 0x2

    div-long/2addr v0, v5

    cmp-long p1, p1, v0

    if-gez p1, :cond_3

    .line 33
    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->start()V

    .line 34
    iget-object p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    invoke-interface {p1, v2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;->AnimationCompleted(Z)V

    .line 37
    :cond_3
    iget-object p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->isActive()Z

    move-result p2

    xor-int/2addr p2, v4

    invoke-interface {p1, p2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;->AnimationCompleted(Z)V

    goto :goto_2

    .line 39
    :cond_4
    iget-boolean v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    if-nez v0, :cond_5

    .line 40
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    iput-wide v5, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeStart:J

    .line 41
    iput-boolean v4, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeout:Z

    .line 44
    :cond_5
    invoke-static {}, Lcn/nubia/gallery3d/ui/AnimationTime;->get()J

    move-result-wide v5

    iget-wide v7, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeStart:J

    sub-long/2addr v5, v7

    .line 45
    iget-wide v7, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mAutoFadeoutTime:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_6

    .line 46
    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->start()V

    .line 48
    iget-object v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    invoke-interface {v0, v2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;->AnimationCompleted(Z)V

    move v2, v4

    :cond_6
    if-eqz v2, :cond_7

    .line 52
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mBarWidth:I

    int-to-float v0, v0

    mul-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_1

    .line 54
    :cond_7
    iget v0, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mProgress:F

    iget v2, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mBarWidth:I

    int-to-float v2, v2

    mul-float/2addr v0, v2

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 55
    iget v1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mBarWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :goto_1
    invoke-virtual {p2, p1, v0, p3}, Lcn/nubia/improve/layout/ScrollBarIndicator;->draw(Lcn/nubia/gallery3d/glrenderer/GLCanvas;II)V

    .line 58
    iget-object p1, p0, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->mListener:Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;

    invoke-virtual {p0}, Lcn/nubia/improve/layout/ScrollBarFadeOutAnimation;->isActive()Z

    move-result p2

    xor-int/2addr p2, v4

    invoke-interface {p1, p2}, Lcn/nubia/improve/layout/ScrollBarFadeAnimation$Listener;->AnimationCompleted(Z)V

    :goto_2
    return-void
.end method
