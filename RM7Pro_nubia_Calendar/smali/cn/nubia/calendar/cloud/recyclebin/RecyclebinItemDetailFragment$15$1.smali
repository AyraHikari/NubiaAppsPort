.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    .prologue
    .line 462
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 465
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 466
    invoke-virtual {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 467
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1100(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V

    .line 468
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;->this$1:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;

    iget-object v0, v0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    const v1, 0x7f0c01fc

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;I)V

    .line 470
    :cond_0
    return-void
.end method
