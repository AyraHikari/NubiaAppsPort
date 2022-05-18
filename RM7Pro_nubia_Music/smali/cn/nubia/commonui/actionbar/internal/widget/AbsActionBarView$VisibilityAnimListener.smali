.class public Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;
.super Ljava/lang/Object;
.source "AbsActionBarView.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "VisibilityAnimListener"
.end annotation


# instance fields
.field private mCanceled:Z

.field mFinalVisibility:I

.field final synthetic this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;


# direct methods
.method protected constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;)V
    .locals 1

    .prologue
    .line 266
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 297
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 285
    iget-boolean v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    if-eqz v0, :cond_1

    .line 292
    :cond_0
    :goto_0
    return-void

    .line 287
    :cond_1
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 288
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mSplitView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    iget-object v0, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mMenuView:Lcn/nubia/commonui/actionbar/widget/ActionMenuView;

    iget v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/widget/ActionMenuView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 279
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->setVisibility(I)V

    .line 280
    iput-boolean v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mCanceled:Z

    .line 281
    return-void
.end method

.method public withFinalVisibility(Landroid/support/v4/view/ViewPropertyAnimatorCompat;I)Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;
    .locals 1

    .prologue
    .line 272
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->this$0:Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;

    iput-object p1, v0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView;->mVisibilityAnim:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 273
    iput p2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsActionBarView$VisibilityAnimListener;->mFinalVisibility:I

    .line 274
    return-object p0
.end method
