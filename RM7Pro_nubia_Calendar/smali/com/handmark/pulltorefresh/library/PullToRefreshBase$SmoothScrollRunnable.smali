.class final Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;
.super Ljava/lang/Object;
.source "PullToRefreshBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "SmoothScrollRunnable"
.end annotation


# instance fields
.field private mContinueRunning:Z

.field private mCurrentY:I

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

.field private final mScrollFromY:I

.field private final mScrollToY:I

.field private mStartTime:J

.field final synthetic this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;


# direct methods
.method public constructor <init>(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;IIJLcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;)V
    .locals 2
    .param p1, "this$0"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase;
    .param p2, "fromY"    # I
    .param p3, "toY"    # I
    .param p4, "duration"    # J
    .param p6, "listener"    # Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .prologue
    .line 1600
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    iput-object p1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1596
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1597
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1598
    const/4 v0, -0x1

    iput v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1601
    iput p2, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    .line 1602
    iput p3, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    .line 1603
    invoke-static {p1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->access$200(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 1604
    iput-wide p4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    .line 1605
    iput-object p6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    .line 1606
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const-wide/16 v8, 0x3e8

    .line 1615
    iget-wide v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    const-wide/16 v6, -0x1

    cmp-long v1, v4, v6

    if-nez v1, :cond_1

    .line 1616
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    .line 1634
    :goto_0
    iget-boolean v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    if-eq v1, v4, :cond_2

    .line 1635
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-static {v1, p0}, Lcom/handmark/pulltorefresh/library/internal/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 1641
    :cond_0
    :goto_1
    return-void

    .line 1624
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mStartTime:J

    sub-long/2addr v4, v6

    mul-long/2addr v4, v8

    iget-wide v6, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mDuration:J

    div-long v2, v4, v6

    .line 1625
    .local v2, "normalizedTime":J
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0x0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 1627
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollToY:I

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget-object v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v5, v2

    const/high16 v6, 0x447a0000    # 1000.0f

    div-float/2addr v5, v6

    .line 1628
    invoke-interface {v4, v5}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v4

    mul-float/2addr v1, v4

    .line 1627
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 1629
    .local v0, "deltaY":I
    iget v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mScrollFromY:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    .line 1630
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    iget v4, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mCurrentY:I

    invoke-virtual {v1, v4}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->setHeaderScroll(I)V

    goto :goto_0

    .line 1637
    .end local v0    # "deltaY":I
    .end local v2    # "normalizedTime":J
    :cond_2
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    if-eqz v1, :cond_0

    .line 1638
    iget-object v1, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mListener:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;

    invoke-interface {v1}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$OnSmoothScrollFinishedListener;->onSmoothScrollFinished()V

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1644
    .local p0, "this":Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;, "Lcom/handmark/pulltorefresh/library/PullToRefreshBase<TT;>.SmoothScrollRunnable;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->mContinueRunning:Z

    .line 1645
    iget-object v0, p0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$SmoothScrollRunnable;->this$0:Lcom/handmark/pulltorefresh/library/PullToRefreshBase;

    invoke-virtual {v0, p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshBase;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1646
    return-void
.end method
