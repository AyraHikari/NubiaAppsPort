.class public abstract Landroid/support/v7/widget/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$ScrollVectorProvider;,
        Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private final mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11182
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11197
    new-instance v0, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-direct {v0, v1, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;-><init>(II)V

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    .line 11198
    return-void
.end method

.method static synthetic access$600(Landroid/support/v7/widget/RecyclerView$SmoothScroller;II)V
    .locals 0
    .param p0, "x0"    # Landroid/support/v7/widget/RecyclerView$SmoothScroller;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 11180
    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 5
    .param p1, "dx"    # I
    .param p2, "dy"    # I

    .prologue
    .line 11292
    iget-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11293
    .local v1, "recyclerView":Landroid/support/v7/widget/RecyclerView;
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_0

    iget v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    if-nez v1, :cond_1

    .line 11294
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11296
    :cond_1
    const/4 v2, 0x0

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11297
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 11299
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v2, v3, :cond_4

    .line 11300
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v3, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v4, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v2, v3, v4}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11301
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    .line 11302
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    .line 11308
    :cond_2
    :goto_0
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_3

    .line 11309
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget-object v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v2, v3}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V

    .line 11310
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v0

    .line 11311
    .local v0, "hadJumpTarget":Z
    iget-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclingAction:Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;->runIfNecessary(Landroid/support/v7/widget/RecyclerView;)V

    .line 11312
    if-eqz v0, :cond_3

    .line 11314
    iget-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_5

    .line 11315
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11316
    iget-object v2, v1, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11322
    .end local v0    # "hadJumpTarget":Z
    :cond_3
    :goto_1
    return-void

    .line 11304
    :cond_4
    const-string v2, "RecyclerView"

    const-string v3, "Passed over target position while smooth scrolling."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11305
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    goto :goto_0

    .line 11318
    .restart local v0    # "hadJumpTarget":Z
    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->stop()V

    goto :goto_1
.end method


# virtual methods
.method public findViewByPosition(I)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 11342
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildCount()I
    .locals 1

    .prologue
    .line 11335
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mLayout:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getChildPosition(Landroid/view/View;)I
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 11328
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 11236
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public getTargetPosition()I
    .locals 1

    .prologue
    .line 11288
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public instantScrollToPosition(I)V
    .locals 1
    .param p1, "position"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 11351
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 11352
    return-void
.end method

.method public isPendingInitialRun()Z
    .locals 1

    .prologue
    .line 11270
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 11278
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected normalize(Landroid/graphics/PointF;)V
    .locals 4
    .param p1, "scrollVector"    # Landroid/graphics/PointF;

    .prologue
    .line 11368
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-double v2, v1

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    double-to-float v0, v2

    .line 11370
    .local v0, "magnitude":F
    iget v1, p1, Landroid/graphics/PointF;->x:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->x:F

    .line 11371
    iget v1, p1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v0

    iput v1, p1, Landroid/graphics/PointF;->y:F

    .line 11372
    return-void
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 11355
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 11356
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11361
    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILandroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStart()V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0
    .param p1, "targetPosition"    # I

    .prologue
    .line 11227
    iput p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11228
    return-void
.end method

.method start(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "layoutManager"    # Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .prologue
    const/4 v2, 0x1

    .line 11213
    iput-object p1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 11214
    iput-object p2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 11215
    iget v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 11216
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid target position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11218
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    iget v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView$State;->access$1302(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 11219
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11220
    iput-boolean v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11221
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11222
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onStart()V

    .line 11223
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mViewFlinger:Landroid/support/v7/widget/RecyclerView$ViewFlinger;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$ViewFlinger;->postOnAnimation()V

    .line 11224
    return-void
.end method

.method protected final stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 11246
    iget-boolean v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    .line 11260
    :goto_0
    return-void

    .line 11249
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->onStop()V

    .line 11250
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-static {v0, v2}, Landroid/support/v7/widget/RecyclerView$State;->access$1302(Landroid/support/v7/widget/RecyclerView$State;I)I

    .line 11251
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    .line 11252
    iput v2, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mTargetPosition:I

    .line 11253
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    .line 11254
    iput-boolean v3, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRunning:Z

    .line 11256
    iget-object v0, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->access$1400(Landroid/support/v7/widget/RecyclerView$LayoutManager;Landroid/support/v7/widget/RecyclerView$SmoothScroller;)V

    .line 11258
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 11259
    iput-object v1, p0, Landroid/support/v7/widget/RecyclerView$SmoothScroller;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0
.end method
