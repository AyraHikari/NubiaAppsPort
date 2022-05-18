.class Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;
.super Ljava/lang/Object;
.source "DayFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/calendar/submodule_day/view/DayFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TZUpdateTask"
.end annotation


# instance fields
.field mDayFragmentWR:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcn/nubia/calendar/submodule_day/view/DayFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/nubia/calendar/submodule_day/view/DayFragment;)V
    .locals 1
    .param p1, "dayFragment"    # Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;->mDayFragmentWR:Ljava/lang/ref/WeakReference;

    .line 80
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, "dayFragment":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;->mDayFragmentWR:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "dayFragment":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .restart local v0    # "dayFragment":Lcn/nubia/calendar/submodule_day/view/DayFragment;
    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    invoke-static {v0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->access$000(Lcn/nubia/calendar/submodule_day/view/DayFragment;)Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    move-result-object v2

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUpdater:Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

    invoke-virtual {v2, v3, v4}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "tz":Ljava/lang/String;
    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    iput-object v1, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 92
    iget-object v2, v0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/text/format/Time;->normalize(Z)J

    goto :goto_0
.end method
