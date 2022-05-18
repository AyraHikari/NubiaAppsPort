.class Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;
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
        "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
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
    .line 227
    iput-object p1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/notepad/cloud/recyclebin/NotePadGarbageData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_0

    .line 231
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1002(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Z)Z

    .line 233
    :cond_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$408(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)I

    .line 235
    :try_start_0
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1, p1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1100(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;Ljava/util/List;)V

    .line 236
    iget-object v1, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$1200(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onException(ILjava/lang/String;)V
    .locals 3
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0x3ef

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mListNotePadListener "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/notepad/utils/NubiaLogUtils;->showLogWithoutPermit(Ljava/lang/String;)V

    .line 245
    if-ne p1, v2, :cond_0

    .line 246
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendEmptyMessage(I)Z

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iget-object v0, p0, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$5;->this$0:Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;

    invoke-static {v0}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;->access$900(Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment;)Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcn/nubia/notepad/cloud/recyclebin/NotePadRecycleDetailFragment$NotePadRecycleHandler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
