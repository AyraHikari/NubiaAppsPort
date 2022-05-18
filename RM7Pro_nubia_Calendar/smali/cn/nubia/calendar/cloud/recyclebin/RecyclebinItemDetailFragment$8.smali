.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Lcn/nubia/cloud/utils/SimpleListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;
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
        "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 239
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onComplete(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 239
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->onComplete(Ljava/util/List;)V

    return-void
.end method

.method public onComplete(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "dataList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    .line 243
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1502(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Z)Z

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1308(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)I

    .line 246
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1600(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Ljava/util/List;)V

    .line 247
    return-void
.end method

.method public onException(ILjava/lang/String;)V
    .locals 2
    .param p1, "errorCode"    # I
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    .line 251
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8$1;-><init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$8;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method
