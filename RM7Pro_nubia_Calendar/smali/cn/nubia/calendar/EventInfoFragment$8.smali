.class Lcn/nubia/calendar/EventInfoFragment$8;
.super Ljava/lang/Object;
.source "EventInfoFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/EventInfoFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/EventInfoFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/EventInfoFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/EventInfoFragment;

    .prologue
    .line 999
    iput-object p1, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    .line 1002
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1003
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    new-instance v1, Lcn/nubia/calendar/DeleteEventHelper;

    iget-object v2, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v2}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v3}, Lcn/nubia/calendar/EventInfoFragment;->access$000(Lcn/nubia/calendar/EventInfoFragment;)Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v2, v3, v4}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    invoke-static {v0, v1}, Lcn/nubia/calendar/EventInfoFragment;->access$2802(Lcn/nubia/calendar/EventInfoFragment;Lcn/nubia/calendar/DeleteEventHelper;)Lcn/nubia/calendar/DeleteEventHelper;

    .line 1005
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1006
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->setDeleteNotificationListener(Lcn/nubia/calendar/DeleteEventHelper$DeleteNotifyListener;)V

    .line 1007
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1008
    invoke-static {v1}, Lcn/nubia/calendar/EventInfoFragment;->access$3200(Lcn/nubia/calendar/EventInfoFragment;)Landroid/content/DialogInterface$OnDismissListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/DeleteEventHelper;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1009
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0, v4}, Lcn/nubia/calendar/EventInfoFragment;->access$3302(Lcn/nubia/calendar/EventInfoFragment;Z)Z

    .line 1010
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$2800(Lcn/nubia/calendar/EventInfoFragment;)Lcn/nubia/calendar/DeleteEventHelper;

    move-result-object v1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3400(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v2

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$1500(Lcn/nubia/calendar/EventInfoFragment;)J

    move-result-wide v6

    const/4 v8, -0x1

    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    .line 1011
    invoke-static {v0}, Lcn/nubia/calendar/EventInfoFragment;->access$3600(Lcn/nubia/calendar/EventInfoFragment;)Ljava/lang/Runnable;

    move-result-object v9

    .line 1010
    invoke-virtual/range {v1 .. v9}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJILjava/lang/Runnable;)V

    .line 1015
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/EventInfoFragment$8;->this$0:Lcn/nubia/calendar/EventInfoFragment;

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v1, v2

    invoke-virtual {v0, v1, v4}, Lcn/nubia/calendar/EventInfoFragment;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0
.end method
