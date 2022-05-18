.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->restoreItem(Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

.field final synthetic val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

.field final synthetic val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;Lcn/nubia/cloud/utils/SimpleListener;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 494
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    iput-object p2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    iput-object p3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 498
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 500
    invoke-static {v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$800(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$900(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    iget-object v6, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->val$info:Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;

    .line 501
    invoke-virtual {v6}, Lcn/nubia/calendar/cloud/recyclebin/ChildItemInfo;->getmServerId()J

    move-result-wide v6

    aput-wide v6, v4, v5

    iget-object v5, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->val$restoreListener:Lcn/nubia/cloud/utils/SimpleListener;

    .line 500
    invoke-virtual {v1, v2, v3, v4, v5}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->restore(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;[JLcn/nubia/cloud/utils/SimpleListener;)V

    .line 503
    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$16;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_0
    :goto_0
    return-void

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
