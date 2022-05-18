.class Lcn/nubia/calendar/submodule_day/view/DayView$5;
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
    .line 2402
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayView$5;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 2404
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayView$5;->this$0:Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->clearCachedEvents()V

    .line 2405
    return-void
.end method
