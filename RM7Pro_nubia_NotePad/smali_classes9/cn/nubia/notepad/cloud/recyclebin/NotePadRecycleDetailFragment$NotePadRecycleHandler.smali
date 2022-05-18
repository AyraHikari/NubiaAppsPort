.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;
.super Landroid/os/Handler;
.source "NotePadRecycleDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotePadRecycleHandler"
.end annotation


# instance fields
.field mActivityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 1
    .param p1, "fragment"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 689
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 690
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->mActivityReference:Ljava/lang/ref/WeakReference;

    .line 691
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 696
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->mActivityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .line 697
    .local v0, "fragment":Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 698
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 732
    :cond_0
    :goto_0
    return-void

    .line 701
    :cond_1
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2700(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/commonui/app/ProgressDialog;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2800(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/commonui/app/ProgressDialog;)V

    .line 702
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 731
    :goto_1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 704
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)V

    goto :goto_1

    .line 707
    :sswitch_1
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3000(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    goto :goto_1

    .line 710
    :sswitch_2
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 711
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    goto :goto_1

    .line 714
    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)V

    .line 715
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 716
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    goto :goto_1

    .line 719
    :sswitch_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)V

    goto :goto_1

    .line 722
    :sswitch_5
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3400(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    goto :goto_1

    .line 725
    :sswitch_6
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    .line 726
    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$3500(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V

    goto :goto_1

    .line 702
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_2
        0x5 -> :sswitch_6
        0x6 -> :sswitch_5
        0x3ef -> :sswitch_1
    .end sparse-switch
.end method
