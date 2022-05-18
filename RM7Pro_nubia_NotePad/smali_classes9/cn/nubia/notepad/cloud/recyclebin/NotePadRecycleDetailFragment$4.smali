.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;
.super Ljava/lang/Object;
.source "NotePadRecycleDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;
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
        "Ljava/util/List",
        "<",
        "Lcn/nubia/notepad/cloud/recyclebin/SummaryData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    .prologue
    .line 202
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 202
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/SummaryData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 205
    .local p1, "summaryDataList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/recyclebin/SummaryData;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;

    .line 206
    .local v0, "summaryData":Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->getType()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 207
    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    .line 208
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-virtual {v0}, Lcn/nubia/notepad/cloud/recyclebin/SummaryData;->getCount()I

    move-result v2

    invoke-static {v1, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$802(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;I)I

    .line 212
    .end local v0    # "summaryData":Lcn/nubia/notepad/cloud/recyclebin/SummaryData;
    :cond_1
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendEmptyMessage(I)Z

    .line 213
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 217
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$4;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendEmptyMessage(I)Z

    .line 218
    return-void
.end method
