.class Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;
.super Landroid/database/ContentObserver;
.source "SelectVisibleCalendarsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 333
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    .prologue
    .line 341
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$3;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {v0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->eventsChanged()V

    .line 342
    return-void
.end method
