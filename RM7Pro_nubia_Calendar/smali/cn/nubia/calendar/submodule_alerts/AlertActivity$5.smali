.class Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "AlertActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_alerts/AlertActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    .prologue
    .line 769
    iput-object p1, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 772
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 773
    .local v0, "action":Ljava/lang/String;
    const-string v2, "CLOSE_ALERT_DIALOG_ACTION"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 774
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->dismiss()V

    .line 775
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    .line 776
    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 779
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    const-string v3, "notification"

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 780
    .local v1, "nm":Landroid/app/NotificationManager;
    invoke-virtual {v1}, Landroid/app/NotificationManager;->cancelAll()V

    .line 781
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-static {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->access$500(Lcn/nubia/calendar/submodule_alerts/AlertActivity;)V

    .line 782
    iget-object v2, p0, Lcn/nubia/calendar/submodule_alerts/AlertActivity$5;->this$0:Lcn/nubia/calendar/submodule_alerts/AlertActivity;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_alerts/AlertActivity;->finish()V

    .line 784
    .end local v1    # "nm":Landroid/app/NotificationManager;
    :cond_0
    return-void
.end method
