.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 751
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 754
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$802(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 755
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$900(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/text/format/Time;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 756
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$900(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/text/format/Time;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$6;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$800(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 758
    :cond_0
    return-void
.end method
