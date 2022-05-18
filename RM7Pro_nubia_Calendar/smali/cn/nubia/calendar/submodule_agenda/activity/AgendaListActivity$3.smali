.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;
.super Ljava/lang/Object;
.source "AgendaListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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
    .line 429
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .param p1, "arg0"    # Landroid/content/DialogInterface;
    .param p2, "pos"    # I

    .prologue
    .line 432
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->deleteEvents()V

    .line 433
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$600(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)V

    .line 434
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$700(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Landroid/view/ActionMode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ActionMode;->finish()V

    .line 435
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 436
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$100(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->refresh(Z)V

    .line 438
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 439
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_EVENTS_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 440
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$3;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 441
    return-void
.end method
