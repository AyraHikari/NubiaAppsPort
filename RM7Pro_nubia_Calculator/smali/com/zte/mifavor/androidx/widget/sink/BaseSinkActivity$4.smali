.class Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;
.super Ljava/lang/Object;
.source "BaseSinkActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->callDependentViewChangedOfTitleView(Landroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

.field final synthetic val$titleView:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;Landroid/widget/TextView;)V
    .locals 0

    .line 547
    iput-object p1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iput-object p2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->val$titleView:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->val$titleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 551
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    if-nez v1, :cond_0

    goto :goto_0

    .line 556
    :cond_0
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;

    invoke-virtual {v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$LayoutParams;->getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 558
    iget-object v1, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object v1, v1, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mRootCoordinatorLy:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->val$titleView:Landroid/widget/TextView;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity$4;->this$0:Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;

    iget-object p0, p0, Lcom/zte/mifavor/androidx/widget/sink/BaseSinkActivity;->mAppBarLy:Lcom/google/android/material/appbar/AppBarLayout;

    invoke-virtual {v0, v1, v2, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;->onDependentViewChanged(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "BaseSinkActivity"

    const-string v0, "callDependentViewChangedOfTitleView, params is null or not CoordinatorLayout.LayoutParams !!!"

    .line 552
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
