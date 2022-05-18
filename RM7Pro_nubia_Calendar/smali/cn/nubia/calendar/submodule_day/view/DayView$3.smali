.class Lcn/nubia/calendar/submodule_day/view/DayView$3;
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
    .line 309
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 312
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    new-instance v1, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 314
    invoke-static {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v2

    iget-wide v2, v2, Lcn/nubia/calendar/model/Event;->id:J

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v4}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v4

    iget-wide v4, v4, Lcn/nubia/calendar/model/Event;->startMillis:J

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 315
    invoke-static {v6}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$300(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/Event;

    move-result-object v6

    iget-wide v6, v6, Lcn/nubia/calendar/model/Event;->endMillis:J

    const-wide/16 v8, 0x0

    invoke-direct/range {v1 .. v9}, Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;-><init>(JJJJ)V

    .line 313
    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$500(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/deftcontroller/UserActionController$ActionData;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$302(Lcn/nubia/calendar/submodule_day/view/DayView;Lcn/nubia/calendar/model/Event;)Lcn/nubia/calendar/model/Event;

    .line 318
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$3;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 319
    return-void
.end method
