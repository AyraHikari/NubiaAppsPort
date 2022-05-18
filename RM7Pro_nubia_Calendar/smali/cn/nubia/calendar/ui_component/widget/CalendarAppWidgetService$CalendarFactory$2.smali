.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->createUpdateLoaderRunnable(Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

.field final synthetic val$result:Landroid/content/BroadcastReceiver$PendingResult;

.field final synthetic val$selection:Ljava/lang/String;

.field final synthetic val$version:I


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;ILjava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 153
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    iput p2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$version:I

    iput-object p3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$selection:Ljava/lang/String;

    iput-object p4, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 159
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    if-eqz v2, :cond_0

    iget v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$version:I

    invoke-static {}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$100()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 160
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$200(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/net/Uri;

    move-result-object v1

    .line 161
    .local v1, "uri":Landroid/net/Uri;
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/CursorLoader;->setUri(Landroid/net/Uri;)V

    .line 162
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$selection:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/CursorLoader;->setSelection(Ljava/lang/String;)V

    .line 163
    invoke-static {}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v3

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :try_start_1
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$300()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$302(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v2, v4}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$402(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;I)I

    .line 165
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/CursorLoader;->forceLoad()V

    .line 168
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$2;->val$result:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v2}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 172
    :goto_0
    return-void

    .line 165
    .restart local v1    # "uri":Landroid/net/Uri;
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 169
    .end local v1    # "uri":Landroid/net/Uri;
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
