.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->restoreItem(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
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
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

.field final synthetic val$childId:I

.field final synthetic val$groupId:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;II)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 450
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iput p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$groupId:I

    iput p3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$childId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcn/nubia/cloud/utils/NBResponse;)V
    .locals 3
    .param p1, "ret"    # Lcn/nubia/cloud/utils/NBResponse;

    .prologue
    .line 453
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 454
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$groupId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 455
    .local v0, "itemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$childId:I

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 456
    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$childId:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 458
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$groupId:I

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 459
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2200(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$groupId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$2300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->val$groupId:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 462
    :cond_1
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$1;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 473
    .end local v0    # "itemInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;>;"
    :cond_2
    return-void
.end method

.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 450
    check-cast p1, Lcn/nubia/cloud/utils/NBResponse;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;->onComplete(Lcn/nubia/cloud/utils/NBResponse;)V

    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 477
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15$2;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$15;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 491
    return-void
.end method
