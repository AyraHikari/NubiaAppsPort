.class Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;
.super Ljava/lang/Object;
.source "CalendarPressWidgetProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    .prologue
    .line 149
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 152
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {v1, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 153
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$200(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V

    .line 154
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    iget-object v2, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$300(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V

    .line 155
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$400(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 156
    .local v0, "message":Landroid/os/Message;
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$2;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$400(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 158
    .end local v0    # "message":Landroid/os/Message;
    :cond_0
    return-void
.end method
