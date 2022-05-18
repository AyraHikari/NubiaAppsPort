.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$9;
.super Landroid/content/BroadcastReceiver;
.source "AgendaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .prologue
    .line 842
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$9;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 844
    const-string v0, "cn.nubia.calendar.delete.events"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 845
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$9;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$600(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    .line 847
    :cond_0
    return-void
.end method
