.class public Lcn/nubia/calendar/submodule_day/view/DayFragment;
.super Landroid/app/Fragment;
.source "DayFragment.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;
    }
.end annotation


# static fields
.field protected static final BUNDLE_KEY_RESTORE_TIME:Ljava/lang/String; = "key_restore_time"

.field static final SHARED_PREFS_NAME:Ljava/lang/String; = "cn.nubia.calendar.preset_preferences"

.field private static final VIEW_ID:I = 0x1


# instance fields
.field private dayDate:Landroid/widget/TextView;

.field mEventLoader:Lcn/nubia/calendar/EventLoader;

.field protected mInAnimationBackward:Landroid/view/animation/Animation;

.field protected mInAnimationForward:Landroid/view/animation/Animation;

.field private mNumDays:I

.field protected mOutAnimationBackward:Landroid/view/animation/Animation;

.field protected mOutAnimationForward:Landroid/view/animation/Animation;

.field private mOutterHandler:Landroid/os/Handler;

.field mSelectedDay:Landroid/text/format/Time;

.field mTZUpdater:Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

.field private final mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

.field protected mViewSwitcher:Landroid/widget/ViewSwitcher;

.field mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private monthDate:Landroid/widget/TextView;

.field private weekDate:Landroid/widget/TextView;

.field private yearDate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(JILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 3
    .param p1, "timeMillis"    # J
    .param p3, "numOfDays"    # I
    .param p4, "outterHandler"    # Landroid/os/Handler;
    .param p5, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 67
    new-instance v0, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    const-string v1, "cn.nubia.calendar.preset_preferences"

    invoke-direct {v0, v1}, Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    .line 69
    new-instance v0, Landroid/text/format/Time;

    invoke-direct {v0}, Landroid/text/format/Time;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutterHandler:Landroid/os/Handler;

    .line 74
    new-instance v0, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;-><init>(Lcn/nubia/calendar/submodule_day/view/DayFragment;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUpdater:Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

    .line 109
    iput p3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mNumDays:I

    .line 110
    iput-object p4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutterHandler:Landroid/os/Handler;

    .line 111
    iput-object p5, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 113
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0}, Landroid/text/format/Time;->setToNow()V

    .line 118
    :goto_0
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, p1, p2}, Landroid/text/format/Time;->set(J)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_day/view/DayFragment;)Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_day/view/DayFragment;

    .prologue
    .line 56
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUtils:Lcn/nubia/calendar/util/CalendarUtils$TimeZoneUtils;

    return-object v0
.end method

.method private goTo(Landroid/text/format/Time;ZZ)V
    .locals 6
    .param p1, "goToTime"    # Landroid/text/format/Time;
    .param p2, "ignoreTime"    # Z
    .param p3, "animateToday"    # Z

    .prologue
    const-wide/16 v4, 0x1f4

    .line 202
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v3, :cond_0

    .line 205
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v3, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 236
    :goto_0
    return-void

    .line 208
    :cond_0
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 210
    .local v0, "currentView":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_day/view/DayView;->compareToVisibleTimeRange(Landroid/text/format/Time;)I

    move-result v1

    .line 212
    .local v1, "diff":I
    if-nez v1, :cond_1

    .line 214
    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    goto :goto_0

    .line 217
    :cond_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 218
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 219
    if-lez v1, :cond_3

    .line 220
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 221
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 226
    :goto_1
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 227
    .local v2, "next":Lcn/nubia/calendar/submodule_day/view/DayView;
    if-eqz p2, :cond_2

    .line 228
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getFirstVisibleHour()I

    move-result v3

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setFirstVisibleHour(I)V

    .line 230
    :cond_2
    invoke-virtual {v2, p1, p2, p3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 231
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->reloadEvents()V

    .line 232
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v3}, Landroid/widget/ViewSwitcher;->showNext()V

    .line 233
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->requestFocus()Z

    .line 234
    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_day/view/DayView;->restartCurrentTimeUpdates()V

    goto :goto_0

    .line 223
    .end local v2    # "next":Lcn/nubia/calendar/submodule_day/view/DayView;
    :cond_3
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 224
    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/widget/ViewSwitcher;->setOutAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1
.end method


# virtual methods
.method public eventsChanged()V
    .locals 2

    .prologue
    .line 257
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_0

    .line 265
    :goto_0
    return-void

    .line 260
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 261
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->clearCachedEvents()V

    .line 262
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->reloadEvents()V

    .line 263
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 264
    .restart local v0    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->clearCachedEvents()V

    goto :goto_0
.end method

.method getNewEvent()Lcn/nubia/calendar/model/Event;
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 294
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getNewEvent()Lcn/nubia/calendar/model/Event;

    move-result-object v1

    return-object v1
.end method

.method public getNextView()Lcn/nubia/calendar/submodule_day/view/DayView;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    return-object v0
.end method

.method getSelectedEvent()Lcn/nubia/calendar/model/Event;
    .locals 2

    .prologue
    .line 283
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 284
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedEvent()Lcn/nubia/calendar/model/Event;

    move-result-object v1

    return-object v1
.end method

.method public getSelectedTimeInMillis()J
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 246
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-nez v1, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-wide v2

    .line 249
    :cond_1
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 250
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    if-eqz v0, :cond_0

    .line 253
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->getSelectedTimeInMillis()J

    move-result-wide v2

    goto :goto_0
.end method

.method public goToTime(Landroid/text/format/Time;)V
    .locals 2
    .param p1, "time"    # Landroid/text/format/Time;

    .prologue
    .line 302
    const/4 v1, 0x0

    .line 303
    .local v1, "ignoreTime":Z
    const/4 v0, 0x1

    .line 305
    .local v0, "animateToday":Z
    invoke-direct {p0, p1, v1, v0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->goTo(Landroid/text/format/Time;ZZ)V

    .line 306
    return-void
.end method

.method public goToTime(Landroid/text/format/Time;ZZ)V
    .locals 0
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "ignoreTime"    # Z
    .param p3, "animateToday"    # Z

    .prologue
    .line 309
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->goTo(Landroid/text/format/Time;ZZ)V

    .line 310
    return-void
.end method

.method public initParentActivityTab(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "monthDate"    # Landroid/widget/TextView;
    .param p2, "weekDate"    # Landroid/widget/TextView;
    .param p3, "dayDate"    # Landroid/widget/TextView;
    .param p4, "yearDate"    # Landroid/widget/TextView;

    .prologue
    .line 122
    iput-object p1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->monthDate:Landroid/widget/TextView;

    .line 123
    iput-object p2, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->weekDate:Landroid/widget/TextView;

    .line 124
    iput-object p3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->dayDate:Landroid/widget/TextView;

    .line 125
    iput-object p4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->yearDate:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method isEventSelected()Z
    .locals 2

    .prologue
    .line 288
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 289
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->isEventSelected()Z

    move-result v1

    return v1
.end method

.method public makeView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, -0x1

    .line 154
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUpdater:Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;->run()V

    .line 155
    new-instance v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v3, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    iget v4, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mNumDays:I

    iget-object v5, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutterHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct/range {v0 .. v6}, Lcn/nubia/calendar/submodule_day/view/DayView;-><init>(Landroid/content/Context;Landroid/widget/ViewSwitcher;Lcn/nubia/calendar/EventLoader;ILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    .line 157
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setId(I)V

    .line 158
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 160
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mSelectedDay:Landroid/text/format/Time;

    invoke-virtual {v0, v1, v8, v8}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 161
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 132
    .local v0, "context":Landroid/content/Context;
    const v1, 0x7f04002f

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mInAnimationForward:Landroid/view/animation/Animation;

    .line 134
    const v1, 0x7f040030

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutAnimationForward:Landroid/view/animation/Animation;

    .line 136
    const v1, 0x7f040033

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mInAnimationBackward:Landroid/view/animation/Animation;

    .line 138
    const v1, 0x7f040034

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutAnimationBackward:Landroid/view/animation/Animation;

    .line 140
    new-instance v1, Lcn/nubia/calendar/EventLoader;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/calendar/EventLoader;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    .line 141
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 146
    const v1, 0x7f030049

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 147
    .local v0, "v":Landroid/view/View;
    const v1, 0x7f1100ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewSwitcher;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 148
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1, p0}, Landroid/widget/ViewSwitcher;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    .line 149
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 150
    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 324
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 325
    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    .line 326
    iput-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    .line 327
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 315
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 316
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    invoke-virtual {v0}, Lcn/nubia/calendar/EventLoader;->onDestory()V

    .line 317
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 320
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 270
    :try_start_0
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    if-eqz v2, :cond_0

    .line 271
    iget-object v2, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v2}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 272
    .local v1, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_day/view/DayView;->onDetach()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    .end local v1    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    :cond_0
    :goto_0
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 280
    return-void

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 191
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 192
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 193
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->stopEventsAnimation()V

    .line 194
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cleanup()V

    .line 195
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getNextView()Landroid/view/View;

    move-result-object v0

    .end local v0    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 196
    .restart local v0    # "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->stopEventsAnimation()V

    .line 197
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->cleanup()V

    .line 198
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventLoader;->stopBackgroundThread()V

    .line 199
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 166
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 167
    iget v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mNumDays:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 170
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mEventLoader:Lcn/nubia/calendar/EventLoader;

    invoke-virtual {v1}, Lcn/nubia/calendar/EventLoader;->startBackgroundThread()V

    .line 171
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mTZUpdater:Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_day/view/DayFragment$TZUpdateTask;->run()V

    .line 172
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->eventsChanged()V

    .line 173
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v1}, Landroid/widget/ViewSwitcher;->getCurrentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/submodule_day/view/DayView;

    .line 174
    .local v0, "view":Lcn/nubia/calendar/submodule_day/view/DayView;
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->handleOnResume()V

    .line 175
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->restartCurrentTimeUpdates()V

    .line 176
    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_day/view/DayView;->loadLunarVisible()V

    .line 177
    iget-object v1, p0, Lcn/nubia/calendar/submodule_day/view/DayFragment;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getGoToTimeWithTimeType()Landroid/text/format/Time;

    move-result-object v1

    invoke-virtual {v0, v1, v3, v3}, Lcn/nubia/calendar/submodule_day/view/DayView;->setSelected(Landroid/text/format/Time;ZZ)V

    .line 178
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 182
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 183
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_day/view/DayFragment;->getSelectedTimeInMillis()J

    move-result-wide v0

    .line 184
    .local v0, "time":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 185
    const-string v2, "key_restore_time"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 187
    :cond_0
    return-void
.end method
