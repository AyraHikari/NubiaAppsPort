.class public Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "ScrollingTabContainerView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field private mFinalVisibility:I

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;


# direct methods
.method protected constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;)V
    .locals 1

    .prologue
    .line 578
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 579
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 605
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 606
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 597
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_0

    .line 601
    :goto_0
    return-void

    .line 599
    :cond_0
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 600
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 591
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 592
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mCanceled:Z

    .line 593
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;
    .locals 1

    .prologue
    .line 584
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->mFinalVisibility:I

    .line 585
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/ScrollingTabContainerView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 586
    return-object p0
.end method
