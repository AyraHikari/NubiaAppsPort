.class public Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
.super Lcom/handmark/pulltorefresh/library/PullToRefreshListView;
.source "AgendaListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EVENT_UPDATE_TIME:I = 0x493e0

.field private static final TAG:Ljava/lang/String; = "Calendar"


# instance fields
.field private isFromItemClick:Z

.field private isMultiMode:Z

.field private mCheckbox:Landroid/widget/CheckBox;

.field private mContext:Landroid/content/Context;

.field private mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

.field private mHandler:Landroid/os/Handler;

.field private mIsChoosenMode:Z

.field private final mMidnightUpdater:Ljava/lang/Runnable;

.field private mMultiSelectionListener:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;

.field private final mPastEventUpdater:Ljava/lang/Runnable;

.field private mRefreshListView:Landroid/widget/ListView;

.field private mSelectedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mShowEventDetailsWithAgenda:Z

.field private final mTZUpdater:Ljava/lang/Runnable;

.field private mTime:Landroid/text/format/Time;

.field private mTimeZone:Ljava/lang/String;

.field private mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 113
    invoke-direct {p0, p1, p2}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 72
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isMultiMode:Z

    .line 74
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mSelectedSet:Ljava/util/Set;

    .line 75
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isFromItemClick:Z

    .line 82
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$1;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    .line 93
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$2;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    .line 102
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$3;-><init>(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    .line 568
    iput-boolean v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mIsChoosenMode:Z

    .line 114
    sget-object v0, Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;->BOTH:Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;

    invoke-super {p0, v0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->setMode(Lcom/handmark/pulltorefresh/library/PullToRefreshBase$Mode;)V

    .line 115
    invoke-super {p0}, Lcom/handmark/pulltorefresh/library/PullToRefreshListView;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    .line 116
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->initView(Landroid/content/Context;)V

    .line 117
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/text/format/Time;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->updatePastEvents()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;

    .prologue
    .line 52
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setPastEventsUpdater()V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const v5, 0x7f0f000b

    const/4 v4, 0x0

    .line 125
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    .line 126
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Lcn/nubia/calendar/util/Utils;->getTimeZone(Landroid/content/Context;Ljava/lang/Runnable;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    .line 127
    new-instance v0, Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 128
    invoke-virtual {p0, p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 133
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 134
    invoke-static {p1, v5}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v1

    iget-boolean v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isMultiMode:Z

    invoke-direct {v0, p1, p0, v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;-><init>(Landroid/content/Context;Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;ZZ)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 136
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v2, v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 137
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 138
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d000c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setCacheColorHint(I)V

    .line 140
    new-instance v0, Lcn/nubia/calendar/DeleteEventHelper;

    invoke-direct {v0, p1, v6, v4}, Lcn/nubia/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;Landroid/app/Activity;Z)V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    .line 146
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcn/nubia/calendar/util/Utils;->getConfigBool(Landroid/content/Context;I)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mShowEventDetailsWithAgenda:Z

    .line 149
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 150
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 151
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    .line 153
    return-void
.end method

.method private resetPastEventsUpdater()V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 170
    return-void
.end method

.method private setPastEventsUpdater()V
    .locals 10

    .prologue
    const-wide/32 v8, 0x493e0

    .line 160
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 161
    .local v0, "now":J
    div-long v4, v0, v8

    mul-long v2, v4, v8

    .line 162
    .local v2, "roundedTime":J
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mPastEventUpdater:Ljava/lang/Runnable;

    sub-long v6, v0, v2

    sub-long v6, v8, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 165
    return-void
.end method

.method private shiftPosition(I)V
    .locals 6
    .param p1, "offset"    # I

    .prologue
    .line 442
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v0

    .line 444
    .local v0, "firstVisibleItem":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 445
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 446
    .local v2, "r":Landroid/graphics/Rect;
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 449
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    .line 450
    invoke-virtual {v3, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 451
    .local v1, "position":I
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    add-int v5, v1, p1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-lez v3, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    :goto_0
    invoke-virtual {v4, v5, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 479
    .end local v1    # "position":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_0
    :goto_1
    return-void

    .line 451
    .restart local v1    # "position":I
    .restart local v2    # "r":Landroid/graphics/Rect;
    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    .line 469
    .end local v1    # "position":I
    .end local v2    # "r":Landroid/graphics/Rect;
    :cond_2
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v3

    if-ltz v3, :cond_0

    .line 476
    iget-object v3, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    .line 477
    invoke-virtual {v4}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v4

    add-int/2addr v4, p1

    .line 476
    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1
.end method

.method private updatePastEvents()Z
    .locals 12

    .prologue
    .line 177
    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getChildCount()I

    move-result v0

    .line 178
    .local v0, "childCount":I
    const/4 v4, 0x0

    .line 179
    .local v4, "needUpdate":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 180
    .local v6, "now":J
    new-instance v8, Landroid/text/format/Time;

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 181
    .local v8, "time":Landroid/text/format/Time;
    invoke-virtual {v8, v6, v7}, Landroid/text/format/Time;->set(J)V

    .line 182
    iget-wide v10, v8, Landroid/text/format/Time;->gmtoff:J

    invoke-static {v6, v7, v10, v11}, Landroid/text/format/Time;->getJulianDay(JJ)I

    move-result v9

    .line 185
    .local v9, "todayJulianDay":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 186
    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v10, v2}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 187
    .local v3, "listItem":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 188
    .local v5, "o":Ljava/lang/Object;
    instance-of v10, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    if-eqz v10, :cond_1

    move-object v1, v5

    .line 190
    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;

    .line 191
    .local v1, "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    iget v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_4

    iget-boolean v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_4

    .line 192
    const/4 v4, 0x1

    .line 207
    .end local v1    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter$ViewHolder;
    .end local v3    # "listItem":Landroid/view/View;
    .end local v5    # "o":Ljava/lang/Object;
    :cond_0
    :goto_1
    return v4

    .line 195
    .restart local v3    # "listItem":Landroid/view/View;
    .restart local v5    # "o":Ljava/lang/Object;
    :cond_1
    instance-of v10, v5, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    if-eqz v10, :cond_4

    move-object v1, v5

    .line 199
    check-cast v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    .line 200
    .local v1, "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    iget-boolean v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->grayed:Z

    if-nez v10, :cond_4

    iget-boolean v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    if-nez v10, :cond_2

    iget-wide v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->startTimeMilli:J

    cmp-long v10, v10, v6

    if-lez v10, :cond_3

    :cond_2
    iget-boolean v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->allDay:Z

    if-eqz v10, :cond_4

    iget v10, v1, Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;->julianDay:I

    if-gt v10, v9, :cond_4

    .line 202
    :cond_3
    const/4 v4, 0x1

    .line 203
    goto :goto_1

    .line 185
    .end local v1    # "holder":Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public callSelectAllItems()V
    .locals 2

    .prologue
    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isFromItemClick:Z

    .line 521
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->selectAllItems()V

    .line 522
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectAll(Z)V

    .line 523
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 524
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMultiSelectionListener:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 525
    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    .line 524
    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;->notifyFragmentSelectedNum(I)V

    .line 526
    return-void
.end method

.method public cancelSelectAllItems()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 530
    iget-boolean v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isFromItemClick:Z

    if-nez v0, :cond_0

    .line 531
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->cancelSelectAll()V

    .line 532
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectAll(Z)V

    .line 533
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 534
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMultiSelectionListener:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;

    invoke-interface {v0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;->notifyFragmentSelectedNum(I)V

    .line 537
    :cond_0
    return-void
.end method

.method public deleteSelectedEvent()V
    .locals 10

    .prologue
    .line 289
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v9

    .line 290
    .local v9, "position":I
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v1, v9}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 291
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 292
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mDeleteEventHelper:Lcn/nubia/calendar/DeleteEventHelper;

    iget-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v8, -0x1

    invoke-virtual/range {v1 .. v8}, Lcn/nubia/calendar/DeleteEventHelper;->delete(JJJI)V

    .line 294
    :cond_0
    return-void
.end method

.method public getFirstVisibleTime()J
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 325
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v8}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    .line 335
    .local v3, "position":I
    iget-boolean v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-eqz v8, :cond_0

    .line 336
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getFirstVisibleView()Landroid/view/View;

    move-result-object v7

    .line 337
    .local v7, "v":Landroid/view/View;
    if-eqz v7, :cond_0

    .line 338
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 339
    .local v4, "r":Landroid/graphics/Rect;
    invoke-virtual {v7, v4}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 340
    iget v8, v4, Landroid/graphics/Rect;->bottom:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v9}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getStickyHeaderHeight()I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 341
    add-int/lit8 v3, v3, 0x1

    .line 346
    .end local v4    # "r":Landroid/graphics/Rect;
    .end local v7    # "v":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 347
    invoke-virtual {v8, v3, v10}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(IZ)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 352
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_1

    .line 353
    new-instance v6, Landroid/text/format/Time;

    iget-object v8, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-direct {v6, v8}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 354
    .local v6, "t":Landroid/text/format/Time;
    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    invoke-virtual {v6, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 357
    iget v1, v6, Landroid/text/format/Time;->hour:I

    .line 358
    .local v1, "hour":I
    iget v2, v6, Landroid/text/format/Time;->minute:I

    .line 359
    .local v2, "minute":I
    iget v5, v6, Landroid/text/format/Time;->second:I

    .line 360
    .local v5, "second":I
    iget v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->startDay:I

    invoke-virtual {v6, v8}, Landroid/text/format/Time;->setJulianDay(I)J

    .line 361
    iput v1, v6, Landroid/text/format/Time;->hour:I

    .line 362
    iput v2, v6, Landroid/text/format/Time;->minute:I

    .line 363
    iput v5, v6, Landroid/text/format/Time;->second:I

    .line 368
    invoke-virtual {v6, v10}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v8

    .line 370
    .end local v1    # "hour":I
    .end local v2    # "minute":I
    .end local v5    # "second":I
    .end local v6    # "t":Landroid/text/format/Time;
    :goto_0
    return-wide v8

    :cond_1
    const-wide/16 v8, 0x0

    goto :goto_0
.end method

.method public getFirstVisibleView()Landroid/view/View;
    .locals 5

    .prologue
    .line 297
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 298
    .local v3, "r":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getChildCount()I

    move-result v0

    .line 299
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 300
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 301
    .local v2, "listItem":Landroid/view/View;
    invoke-virtual {v2, v3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 302
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_0

    .line 306
    .end local v2    # "listItem":Landroid/view/View;
    :goto_1
    return-object v2

    .line 299
    .restart local v2    # "listItem":Landroid/view/View;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v2    # "listItem":Landroid/view/View;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getJulianDayFromPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 374
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getAdapterInfoByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;

    move-result-object v0

    .line 375
    .local v0, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;
    if-eqz v0, :cond_0

    .line 376
    iget-object v1, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->dayAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;

    iget v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$DayAdapterInfo;->offset:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaByDayAdapter;->findJulianDayFromPosition(I)I

    move-result v1

    .line 379
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getSelectedEvents()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;",
            ">;"
        }
    .end annotation

    .prologue
    .line 540
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 541
    .local v1, "events":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;>;"
    iget-object v4, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 542
    invoke-virtual {v4}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedEvents()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 544
    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 550
    :cond_0
    return-object v1

    .line 547
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    .line 548
    .local v2, "info":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    new-instance v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;

    invoke-direct {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;-><init>()V

    .line 549
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 552
    iget-wide v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->id:J

    .line 553
    iget-wide v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->begin:J

    .line 554
    iget-wide v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    iput-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->end:J

    .line 555
    iget-boolean v4, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->hasRule:Z

    iput-boolean v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaFragment$Event;->hasRule:Z

    .line 556
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public getSelectedInstanceId()J
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSelectedItemsSize()I
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectItems()Ljava/util/HashSet;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    return v0
.end method

.method public getSelectedTime()J
    .locals 4

    .prologue
    .line 310
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v2}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v1

    .line 311
    .local v1, "position":I
    if-ltz v1, :cond_0

    .line 312
    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v2, v1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v0

    .line 313
    .local v0, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    if-eqz v0, :cond_0

    .line 314
    iget-wide v2, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    .line 317
    .end local v0    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v2

    goto :goto_0
.end method

.method public getSelectedViewHolder()Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedViewHolder()Lcn/nubia/calendar/submodule_agenda/view/AgendaAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public goTo(Landroid/text/format/Time;JLjava/lang/String;ZZ)V
    .locals 10
    .param p1, "time"    # Landroid/text/format/Time;
    .param p2, "id"    # J
    .param p4, "searchQuery"    # Ljava/lang/String;
    .param p5, "forced"    # Z
    .param p6, "refreshEventInfo"    # Z

    .prologue
    .line 266
    if-nez p1, :cond_1

    .line 267
    iget-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    .line 268
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->getFirstVisibleTime()J

    move-result-wide v8

    .line 269
    .local v8, "goToTime":J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_0

    .line 270
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 272
    :cond_0
    invoke-virtual {p1, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 274
    .end local v8    # "goToTime":J
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v0, p1}, Landroid/text/format/Time;->set(Landroid/text/format/Time;)V

    .line 275
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->switchTimezone(Ljava/lang/String;)V

    .line 276
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/text/format/Time;->normalize(Z)J

    .line 280
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    move-wide v2, p2

    move-object v4, p4

    move v5, p5

    move/from16 v6, p6

    .line 281
    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 282
    return-void
.end method

.method public isEventVisible(Landroid/text/format/Time;J)Z
    .locals 12
    .param p1, "startTime"    # Landroid/text/format/Time;
    .param p2, "id"    # J

    .prologue
    .line 385
    const-wide/16 v10, -0x1

    cmp-long v9, p2, v10

    if-eqz v9, :cond_0

    if-nez p1, :cond_1

    .line 386
    :cond_0
    const/4 v9, 0x0

    .line 416
    :goto_0
    return v9

    .line 389
    :cond_1
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 391
    .local v0, "child":Landroid/view/View;
    if-nez v0, :cond_2

    .line 392
    const/4 v9, 0x0

    goto :goto_0

    .line 394
    :cond_2
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getPositionForView(Landroid/view/View;)I

    move-result v8

    .line 395
    .local v8, "start":I
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v6

    .line 396
    .local v6, "milliTime":J
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v9}, Landroid/widget/ListView;->getChildCount()I

    move-result v1

    .line 397
    .local v1, "childCount":I
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v9}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getCount()I

    move-result v3

    .line 399
    .local v3, "eventsInAdapter":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v1, :cond_3

    .line 400
    add-int v9, v4, v8

    if-lt v9, v3, :cond_4

    .line 416
    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    .line 403
    :cond_4
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    add-int v10, v4, v8

    invoke-virtual {v9, v10}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v2

    .line 404
    .local v2, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    if-nez v2, :cond_6

    .line 399
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 407
    :cond_6
    iget-wide v10, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    cmp-long v9, v10, p2

    if-nez v9, :cond_5

    iget-wide v10, v2, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    cmp-long v9, v10, v6

    if-nez v9, :cond_5

    .line 408
    iget-object v9, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v9, v4}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 409
    .local v5, "listItem":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v10}, Landroid/widget/ListView;->getHeight()I

    move-result v10

    if-gt v9, v10, :cond_5

    .line 410
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    iget-object v10, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 411
    invoke-virtual {v10}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getStickyHeaderHeight()I

    move-result v10

    if-lt v9, v10, :cond_5

    .line 412
    const/4 v9, 0x1

    goto :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 22
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 217
    .local p1, "a":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const-wide/16 v4, -0x1

    cmp-long v3, p4, v4

    if-nez v3, :cond_1

    .line 262
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isMultiMode:Z

    if-nez v3, :cond_0

    .line 225
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    instance-of v3, v3, Lcn/nubia/calendar/HomeActivity;

    if-eqz v3, :cond_2

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    check-cast v18, Lcn/nubia/calendar/HomeActivity;

    .line 228
    .local v18, "allInOneAct":Lcn/nubia/calendar/HomeActivity;
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mIsChoosenMode:Z

    if-eqz v3, :cond_2

    .line 229
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 230
    .local v19, "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    move-object/from16 v0, v18

    invoke-virtual {v0, v4, v5}, Lcn/nubia/calendar/HomeActivity;->setChooserIntentResult(J)V

    goto :goto_0

    .line 237
    .end local v18    # "allInOneAct":Lcn/nubia/calendar/HomeActivity;
    .end local v19    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getEventByPosition(I)Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;

    move-result-object v19

    .line 238
    .restart local v19    # "event":Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v20

    .line 239
    .local v20, "oldInstanceId":J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectedView(Landroid/view/View;)V

    .line 243
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    .line 244
    invoke-virtual {v3}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->getSelectedInstanceId()J

    move-result-wide v4

    cmp-long v3, v20, v4

    if-nez v3, :cond_3

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mShowEventDetailsWithAgenda:Z

    if-nez v3, :cond_0

    .line 245
    :cond_3
    move-object/from16 v0, v19

    iget-wide v8, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->begin:J

    .line 246
    .local v8, "startTime":J
    move-object/from16 v0, v19

    iget-wide v10, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->end:J

    .line 247
    .local v10, "endTime":J
    move-object/from16 v0, v19

    iget-boolean v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    if-eqz v3, :cond_4

    .line 248
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v3, v8, v9, v4}, Lcn/nubia/calendar/util/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v8

    .line 250
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v3, v10, v11, v4}, Lcn/nubia/calendar/util/Utils;->convertAlldayLocalToUTC(Landroid/text/format/Time;JLjava/lang/String;)J

    move-result-wide v10

    .line 253
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    invoke-virtual {v3, v8, v9}, Landroid/text/format/Time;->set(J)V

    .line 254
    move-object/from16 v0, p0

    iget-object v3, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mContext:Landroid/content/Context;

    .line 255
    invoke-static {v3}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v2

    .line 256
    .local v2, "controller":Lcn/nubia/calendar/CalendarController;
    const-wide/16 v4, 0x2

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->id:J

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v19

    iget-boolean v14, v0, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter$EventInfo;->allDay:Z

    .line 258
    invoke-static {v3, v14}, Lcn/nubia/calendar/CalendarController$EventInfo;->buildViewExtraLong(IZ)J

    move-result-wide v14

    .line 260
    invoke-virtual {v2}, Lcn/nubia/calendar/CalendarController;->getTime()J

    move-result-wide v16

    move-object/from16 v3, p0

    .line 256
    invoke-virtual/range {v2 .. v17}, Lcn/nubia/calendar/CalendarController;->sendEventRelatedEventWithExtra(Ljava/lang/Object;JJJJIIJJ)V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 493
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcn/nubia/calendar/util/Utils;->resetMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;)V

    .line 494
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->resetPastEventsUpdater()V

    .line 495
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTZUpdater:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 487
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMidnightUpdater:Ljava/lang/Runnable;

    iget-object v2, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTimeZone:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcn/nubia/calendar/util/Utils;->setMidnightUpdater(Landroid/os/Handler;Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 488
    invoke-direct {p0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->setPastEventsUpdater()V

    .line 489
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->onResume()V

    .line 490
    return-void
.end method

.method public readdAdapter(Z)V
    .locals 1
    .param p1, "isMultiSelectionMode"    # Z

    .prologue
    .line 507
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isMultiMode:Z

    .line 508
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setMultiMode(Z)V

    .line 509
    if-nez p1, :cond_0

    .line 510
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->clearSelectItems()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->notifyDataSetChanged()V

    .line 513
    return-void
.end method

.method public refresh(Z)V
    .locals 7
    .param p1, "forced"    # Z

    .prologue
    .line 285
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mTime:Landroid/text/format/Time;

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    move v5, p1

    invoke-virtual/range {v0 .. v6}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->refresh(Landroid/text/format/Time;JLjava/lang/String;ZZ)V

    .line 286
    return-void
.end method

.method public setChoosenMode(Z)V
    .locals 0
    .param p1, "isChoosenMode"    # Z

    .prologue
    .line 211
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mIsChoosenMode:Z

    .line 212
    return-void
.end method

.method public setHideDeclinedEvents(Z)V
    .locals 1
    .param p1, "hideDeclined"    # Z

    .prologue
    .line 482
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setHideDeclinedEvents(Z)V

    .line 483
    return-void
.end method

.method public setIsFromItemClick(Z)V
    .locals 0
    .param p1, "b"    # Z

    .prologue
    .line 561
    iput-boolean p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->isFromItemClick:Z

    .line 562
    return-void
.end method

.method public setMultiSelectListner(Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;)V
    .locals 0
    .param p1, "listener"    # Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;

    .prologue
    .line 503
    iput-object p1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mMultiSelectionListener:Lcn/nubia/calendar/submodule_agenda/view/AgendaListView$ChangeMultiSelecttionModeListener;

    .line 504
    return-void
.end method

.method public setRefreshStackFromBottom(Z)V
    .locals 1
    .param p1, "flag"    # Z

    .prologue
    .line 120
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setStackFromBottom(Z)V

    .line 123
    :cond_0
    return-void
.end method

.method public setSelectedInstanceId(J)V
    .locals 1
    .param p1, "id"    # J

    .prologue
    .line 424
    iget-object v0, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mWindowAdapter:Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;

    invoke-virtual {v0, p1, p2}, Lcn/nubia/calendar/submodule_agenda/view/AgendaWindowAdapter;->setSelectedInstanceId(J)V

    .line 425
    return-void
.end method

.method public shiftSelection(I)V
    .locals 4
    .param p1, "offset"    # I

    .prologue
    .line 430
    invoke-direct {p0, p1}, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->shiftPosition(I)V

    .line 431
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    .line 432
    .local v0, "position":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 433
    iget-object v1, p0, Lcn/nubia/calendar/submodule_agenda/view/AgendaListView;->mRefreshListView:Landroid/widget/ListView;

    add-int v2, v0, p1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    .line 435
    :cond_0
    return-void
.end method
