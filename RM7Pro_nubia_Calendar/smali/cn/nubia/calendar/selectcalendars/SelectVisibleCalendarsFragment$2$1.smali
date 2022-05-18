.class Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;
.super Ljava/lang/Object;
.source "SelectVisibleCalendarsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;)V
    .locals 0
    .param p1, "this$1"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;

    .prologue
    .line 144
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;->this$1:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;->this$1:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;

    iget-object v0, v0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-static {v0}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$200(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2$1;->this$1:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;

    iget-object v1, v1, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$2;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-static {v1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$100(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)Landroid/database/Cursor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectCalendarsSimpleAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 149
    return-void
.end method
