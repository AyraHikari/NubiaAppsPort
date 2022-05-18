.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->restoreItem(Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/nubia/cloud/utils/SimpleListener",
        "<",
        "Lcn/nubia/cloud/utils/NBResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

.field final synthetic val$childId:I

.field final synthetic val$groupId:I

.field final synthetic val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 524
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iput-object p2, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    iput p3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$groupId:I

    iput p4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$childId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 6
    .param p1, "ret"    # Lcn/nubia/cloud/utils/NBResponse;

    .prologue
    const/4 v5, 0x0

    .line 528
    :try_start_0
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v3

    const/16 v4, 0x3e8

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 529
    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getClassify()I

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    .line 530
    invoke-virtual {v3}, Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;->getResource()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 531
    :cond_0
    const/4 v3, 0x0

    invoke-static {v3}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    :goto_0
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 539
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$groupId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 540
    .local v1, "itemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    iget v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$childId:I

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 541
    iget v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$childId:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 543
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$groupId:I

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v4}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 544
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$groupId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 545
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2300(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Ljava/util/ArrayList;

    move-result-object v3

    iget v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$groupId:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 548
    .end local v1    # "itemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;>;"
    :cond_2
    invoke-static {v5}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    .line 549
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 550
    .local v2, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 551
    const v3, 0x7f0a0099

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 552
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v3}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 553
    return-void

    .line 533
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    :try_start_1
    iget-object v3, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    iget-object v4, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->val$info:Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;

    invoke-static {v3, v4}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$2100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Lcn/nubia/notepad/cloud/recyclebin/ChildItemInfo;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 535
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 524
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ef

    .line 557
    const/4 v1, 0x0

    invoke-static {v1}, Lcn/nubia/notepad/utils/Util;->setRestoreStatus(Z)V

    .line 558
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 559
    .local v0, "msg":Landroid/os/Message;
    if-ne p1, v2, :cond_0

    .line 560
    iput v2, v0, Landroid/os/Message;->what:I

    .line 565
    :goto_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$14;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendMessage(Landroid/os/Message;)Z

    .line 566
    return-void

    .line 562
    :cond_0
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 563
    const v1, 0x7f0a0098

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_0
.end method
