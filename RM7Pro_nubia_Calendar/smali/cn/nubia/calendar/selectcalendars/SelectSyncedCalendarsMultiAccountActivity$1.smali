.class Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$1;
.super Ljava/lang/Object;
.source "SelectSyncedCalendarsMultiAccountActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    .prologue
    .line 84
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectSyncedCalendarsMultiAccountActivity;->onActionBarItemSelected(I)V

    .line 88
    return-void
.end method
