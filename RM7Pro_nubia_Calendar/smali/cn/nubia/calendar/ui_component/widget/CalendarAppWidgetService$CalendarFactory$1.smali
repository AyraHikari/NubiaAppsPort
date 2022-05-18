.class Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;
.super Ljava/lang/Object;
.source "CalendarAppWidgetService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    .prologue
    .line 138
    iput-object p1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 142
    :try_start_0
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory$1;->this$0:Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;

    invoke-static {v1}, Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;->access$000(Lcn/nubia/calendar/ui_component/widget/CalendarAppWidgetService$CalendarFactory;)Landroid/content/CursorLoader;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/CursorLoader;->forceLoad()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
