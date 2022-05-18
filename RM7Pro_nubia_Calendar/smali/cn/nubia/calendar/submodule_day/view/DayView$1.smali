.class Lcn/nubia/calendar/submodule_day/view/DayView$1;
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
    .line 287
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 290
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$100(Lcn/nubia/calendar/submodule_day/view/DayView;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v2, v2, Lcn/nubia/calendar/submodule_day/view/DayView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    .line 291
    .local v0, "tz":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    iput-object v0, v1, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 292
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    iget-object v1, v1, Lcn/nubia/calendar/submodule_day/view/DayView;->mBaseDate:Landroid/text/format/Time;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/text/format/Time;->normalize(Z)J

    .line 293
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-static {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->access$200(Lcn/nubia/calendar/submodule_day/view/DayView;)Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 294
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$1;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->invalidate()V

    .line 295
    return-void
.end method
