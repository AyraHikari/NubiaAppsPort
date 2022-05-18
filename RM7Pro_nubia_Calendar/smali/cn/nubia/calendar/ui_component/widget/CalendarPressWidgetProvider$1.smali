.class Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;
.super Landroid/os/Handler;
.source "CalendarPressWidgetProvider.java"


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
    .line 116
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 124
    :goto_0
    return-void

    .line 120
    :pswitch_0
    iget-object v0, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->access$100(Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method
