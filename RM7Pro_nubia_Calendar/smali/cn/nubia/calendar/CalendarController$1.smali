.class Lcn/nubia/calendar/CalendarController$1;
.super Ljava/lang/Object;
.source "CalendarController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/CalendarController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/CalendarController;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/CalendarController;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/CalendarController;

    .prologue
    .line 109
    iput-object p1, p0, Lcn/nubia/calendar/CalendarController$1;->this$0:Lcn/nubia/calendar/CalendarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 112
    iget-object v0, p0, Lcn/nubia/calendar/CalendarController$1;->this$0:Lcn/nubia/calendar/CalendarController;

    iget-object v0, v0, Lcn/nubia/calendar/CalendarController;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/CalendarController$1;->this$0:Lcn/nubia/calendar/CalendarController;

    invoke-static {v1}, Lcn/nubia/calendar/CalendarController;->access$000(Lcn/nubia/calendar/CalendarController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 113
    return-void
.end method
