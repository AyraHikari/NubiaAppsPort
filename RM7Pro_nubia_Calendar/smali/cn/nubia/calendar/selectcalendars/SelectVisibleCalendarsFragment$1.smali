.class Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;
.super Ljava/lang/Object;
.source "SelectVisibleCalendarsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
.method constructor <init>(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    .prologue
    .line 114
    iput-object p1, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 117
    iget-object v0, p0, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment$1;->this$0:Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;->access$000(Lcn/nubia/calendar/selectcalendars/SelectVisibleCalendarsFragment;I)Z

    .line 118
    return-void
.end method
