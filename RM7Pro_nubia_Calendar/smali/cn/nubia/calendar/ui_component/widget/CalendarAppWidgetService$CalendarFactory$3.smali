.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 680
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    iput-object p2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 693
    const-string v1, "CalendarAppWidgetService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Thread id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$500(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->stopWidgetServicePowerOn(Landroid/content/Context;)V

    .line 695
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$600(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Ljava/lang/String;

    move-result-object v0

    .line 697
    .local v0, "selection":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    if-nez v1, :cond_0

    .line 698
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    const/4 v2, -0x1

    invoke-static {v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$702(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 699
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$800(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3$1;

    invoke-direct {v2, p0, v0}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3$1;-><init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 710
    :goto_0
    return-void

    .line 707
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$800(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$3;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    .line 708
    invoke-static {}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v4

    .line 707
    invoke-static {v2, v0, v3, v4}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$900(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
