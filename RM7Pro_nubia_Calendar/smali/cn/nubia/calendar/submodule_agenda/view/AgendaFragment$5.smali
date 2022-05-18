.class Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "AgendaFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 223
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;"
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

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
    .line 226
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;"
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/submodule_alerts/AlertService;->updateAlertNotification(Landroid/content/Context;)Z

    .line 227
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 232
    .local p0, "this":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;, "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;"
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 236
    new-instance v1, Lcn/nubia/calendar/model/CalendarEventModel;

    invoke-direct {v1}, Lcn/nubia/calendar/model/CalendarEventModel;-><init>()V

    .line 237
    .local v1, "model":Lcn/nubia/calendar/model/CalendarEventModel;
    invoke-static {v1, p3}, Lcn/nubia/calendar/submodule_agenda/view/EditEventHelper;->setModelFromCursor(Lcn/nubia/calendar/model/CalendarEventModel;Landroid/database/Cursor;)V

    .line 238
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    move-object v0, p2

    .line 239
    check-cast v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    .line 240
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$5;->this$0:Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;

    .line 241
    invoke-static {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;)I

    move-result v3

    .line 240
    invoke-virtual {v2, v1, v0, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment;->deleteRepeatingEvent(Lcn/nubia/calendar/model/CalendarEventModel;Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;I)V

    goto :goto_0
.end method
