.class Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "AgendaListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 256
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDeleteComplete(ILjava/lang/Object;I)V
    .locals 1
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 259
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 260
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 265
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 268
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 269
    new-instance v1, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v1}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 270
    .local v1, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    invoke-static {v1, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 271
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    move-object v0, p2

    .line 272
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    .line 273
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity$2;->this$0:Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;

    .line 274
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->access$500(Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;)I

    move-result v3

    .line 273
    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/calendar/submodule_agenda/activity/AgendaListActivity;->deleteRepeatingEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;I)V

    goto :goto_0
.end method
