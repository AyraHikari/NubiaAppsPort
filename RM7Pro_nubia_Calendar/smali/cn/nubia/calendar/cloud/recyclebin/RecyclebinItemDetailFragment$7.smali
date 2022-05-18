.class Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;
.super Ljava/lang/Object;
.source "RecyclebinItemDetailFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->loadData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .prologue
    .line 222
    iput-object p1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 226
    :try_start_0
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$700(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v1}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$800(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v2}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$900(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/service/common/SyncType;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    .line 228
    invoke-static {v3}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1300(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)I

    move-result v3

    const/16 v4, 0xa

    iget-object v5, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v5}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1400(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/utils/SimpleListener;

    move-result-object v5

    sget-object v6, Lcn/nubia/calendar/cloud/recyclebin/CalendarGarbageData;->CREATOR:Lcn/nubia/cloud/utils/Jsonable$Creator;

    .line 227
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->list(Ljava/lang/String;Lcn/nubia/cloud/service/common/SyncType;IILcn/nubia/cloud/utils/SimpleListener;Lcn/nubia/cloud/utils/Jsonable$Creator;)V

    .line 230
    iget-object v0, p0, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment$7;->this$0:Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;

    invoke-static {v0}, Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;->access$1000(Lcn/nubia/calendar/cloud/recyclebin/RecyclebinItemDetailFragment;)Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/cloud/sync/common/recyclebin/RecyclebinManager;->close()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 232
    :catch_0
    move-exception v7

    .line 233
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
