.class Lcn/nubia/calendar/submodule_day/view/DayView$2;
.super Ljava/lang/Object;
.source "DayView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/calendar/submodule_day/view/DayView;


# direct methods
.method constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayView;)V
    .locals 0
    .param p1, "this$0"    # Lcn/nubia/calendar/submodule_day/view/DayView;

    .prologue
    .line 299
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$2;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 302
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$2;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$2;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$400(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$302(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/model/Event;)Lcn/nubia/calendar/model/Event;

    .line 303
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$2;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$402(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/model/Event;)Lcn/nubia/calendar/model/Event;

    .line 304
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$2;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 305
    return-void
.end method
