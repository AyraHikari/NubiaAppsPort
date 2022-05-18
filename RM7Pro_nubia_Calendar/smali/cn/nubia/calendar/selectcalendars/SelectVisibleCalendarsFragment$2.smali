.class Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;
.super Lcn/nubia/calendar/AsyncQueryService;
.source "SelectVisibleCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->onAttach(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 139
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {p0, p2}, Lcn/nubia/calendar/AsyncQueryService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    .line 143
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-static {v0, p3}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$102(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 144
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-static {v0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$300(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;-><init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;)V

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 151
    return-void
.end method

.method protected onUpdateComplete(ILjava/lang/Object;I)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "result"    # I

    .prologue
    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "ACTION_EVENTS_RELOAD"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-static {v1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$400(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcn/nubia/commonui/actionbar/app/ActionBarActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    return-void
.end method
