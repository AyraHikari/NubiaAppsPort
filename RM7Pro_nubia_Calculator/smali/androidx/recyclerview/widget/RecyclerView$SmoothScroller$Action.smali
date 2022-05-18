.class public Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final UNDEFINED_DURATION:I = -0x80000000


# instance fields
.field private mChanged:Z

.field private mConsecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    .line 11950
    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 11959
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;-><init>(IIILandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public constructor <init>(IIILandroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 11970
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 11935
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v0, 0x0

    .line 11939
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 11943
    iput v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 11971
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 11972
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 11973
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 11974
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method private validate()V
    .locals 2

    .line 12025
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 12026
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 12028
    :cond_1
    :goto_0
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt p0, v1, :cond_2

    return-void

    .line 12029
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Scroll duration must be a positive number"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getDuration()I
    .locals 0

    .line 12054
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return p0
.end method

.method public getDx()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 12035
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return p0
.end method

.method public getDy()I
    .locals 0
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 12045
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return p0
.end method

.method public getInterpolator()Landroid/view/animation/Interpolator;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 12064
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method hasJumpTarget()Z
    .locals 0

    .line 11997
    iget p0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public jumpTo(I)V
    .locals 0

    .line 11993
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    return-void
.end method

.method runIfNecessary(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 5

    .line 12001
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    .line 12002
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v2, -0x1

    .line 12003
    iput v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    .line 12004
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->jumpToPositionForSmoothScroller(I)V

    .line 12005
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void

    .line 12008
    :cond_0
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    if-eqz v0, :cond_2

    .line 12009
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->validate()V

    .line 12010
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView;->mViewFlinger:Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;

    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroidx/recyclerview/widget/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    .line 12011
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    .line 12012
    iget p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    const-string p1, "RecyclerView"

    const-string v0, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    .line 12015
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12018
    :cond_1
    iput-boolean v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    goto :goto_0

    .line 12020
    :cond_2
    iput v1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mConsecutiveUpdates:I

    :goto_0
    return-void
.end method

.method public setDuration(I)V
    .locals 1

    const/4 v0, 0x1

    .line 12058
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12059
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    return-void
.end method

.method public setDx(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12039
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12040
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    return-void
.end method

.method public setDy(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12049
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12050
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    return-void
.end method

.method public setInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 1
    .param p1    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 12074
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    .line 12075
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public update(IIILandroid/view/animation/Interpolator;)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/Px;
        .end annotation
    .end param
    .param p4    # Landroid/view/animation/Interpolator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 12088
    iput p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDx:I

    .line 12089
    iput p2, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDy:I

    .line 12090
    iput p3, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mDuration:I

    .line 12091
    iput-object p4, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 p1, 0x1

    .line 12092
    iput-boolean p1, p0, Landroidx/recyclerview/widget/RecyclerView$SmoothScroller$Action;->mChanged:Z

    return-void
.end method
