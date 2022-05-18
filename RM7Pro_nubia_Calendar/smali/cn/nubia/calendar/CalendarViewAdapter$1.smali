.class Lcn/nubia/calendar/CalendarViewAdapter$1;
.super Ljava/lang/Object;
.source "CalendarViewAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/CalendarViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/CalendarViewAdapter;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/CalendarViewAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/CalendarViewAdapter;

    .prologue
    .line 111
    iput-object p1, p0, Lcn/nubia/calendar/CalendarViewAdapter$1;->this$0:Lcn/nubia/calendar/CalendarViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcn/nubia/calendar/CalendarViewAdapter$1;->this$0:Lcn/nubia/calendar/CalendarViewAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarViewAdapter$1;->this$0:Lcn/nubia/calendar/CalendarViewAdapter;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarViewAdapter;->access$000(Lcn/nubia/calendar/CalendarViewAdapter;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/CalendarViewAdapter;->refresh(Landroid/content/Context;)V

    .line 115
    return-void
.end method
