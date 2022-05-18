.class Lcn/nubia/deskclock/fragment/CountdownFragment$4;
.super Ljava/lang/Object;
.source "CountdownFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/deskclock/fragment/CountdownFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;


# direct methods
.method constructor <init>(Lcn/nubia/deskclock/fragment/CountdownFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/deskclock/fragment/CountdownFragment;

    .prologue
    .line 520
    iput-object p1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v4, 0x234

    .line 523
    const-string v0, "CountdownFragment"

    const-string v1, "mStopBtn"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v0

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$900(Lcn/nubia/deskclock/fragment/CountdownFragment;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 526
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v1}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$400(Lcn/nubia/deskclock/fragment/CountdownFragment;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 527
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->getIsLayoutMax()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 528
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1000(Lcn/nubia/deskclock/fragment/CountdownFragment;)Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/VerticalMotionFrameLayout;->translateToMin()V

    .line 529
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 531
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/fragment/CountdownFragment$4;->this$0:Lcn/nubia/deskclock/fragment/CountdownFragment;

    invoke-static {v0}, Lcn/nubia/deskclock/fragment/CountdownFragment;->access$1100(Lcn/nubia/deskclock/fragment/CountdownFragment;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
