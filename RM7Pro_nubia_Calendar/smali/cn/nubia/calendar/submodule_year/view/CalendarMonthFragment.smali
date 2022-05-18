.class public Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;
.super Landroid/app/Fragment;
.source "CalendarMonthFragment.java"

# interfaces
.implements Lcn/nubia/calendar/submodule_year/model/IQueryEventComplete;


# static fields
.field public static final ARG_PAGE:Ljava/lang/String; = "page"


# instance fields
.field private mCalendar:Ljava/util/Calendar;

.field private mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mOutterHandler:Landroid/os/Handler;

.field private mPageNumber:I

.field private mTableLayout:Landroid/widget/TableLayout;

.field private mViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

.field private typedArray:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(ILandroid/os/Handler;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V
    .locals 2
    .param p1, "pageNumber"    # I
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "workingModel"    # Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 56
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mOutterHandler:Landroid/os/Handler;

    .line 57
    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    .local v0, "args":Landroid/os/Bundle;
    const-string v1, "page"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    invoke-virtual {p0, v0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->setArguments(Landroid/os/Bundle;)V

    .line 65
    iput-object p2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mOutterHandler:Landroid/os/Handler;

    .line 66
    iput-object p3, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 67
    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/widget/TableLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mTableLayout:Landroid/widget/TableLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;

    .prologue
    .line 48
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mOutterHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private init(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 82
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e0

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100e9

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100ea

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 93
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    const v2, 0x7f1100eb

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 95
    const v1, 0x7f1100df

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mTableLayout:Landroid/widget/TableLayout;

    .line 97
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mTableLayout:Landroid/widget/TableLayout;

    invoke-virtual {v1}, Landroid/widget/TableLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 98
    .local v0, "vto":Landroid/view/ViewTreeObserver;
    new-instance v1, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$1;-><init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcn/nubia/calendar/preset/R$styleable;->ScrollerCalendar:[I

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->typedArray:Landroid/content/res/TypedArray;

    .line 74
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "page"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mPageNumber:I

    .line 75
    new-instance v0, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mPageNumber:I

    .line 76
    invoke-virtual {v0, v1}, Lcn/nubia/calendar/submodule_year/model/YearCommonUtils;->getSelectCalendar2(I)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mViewList:Ljava/util/ArrayList;

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v6, 0x1

    .line 123
    const v2, 0x7f03003f

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 125
    .local v1, "rootView":Landroid/view/ViewGroup;
    invoke-direct {p0, v1}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->init(Landroid/view/View;)V

    .line 127
    new-instance v2, Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->typedArray:Landroid/content/res/TypedArray;

    iget-object v5, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mLocalWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {v2, v3, v4, v5}, Lcn/nubia/calendar/submodule_year/view/YearView;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;)V

    iput-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    .line 128
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 129
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v2}, Lcn/nubia/calendar/submodule_year/view/YearView;->reuse()V

    .line 131
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    .line 132
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    .line 131
    invoke-virtual {v2, v3, p0, v4}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->queryEventsAllYear(ILcn/nubia/calendar/submodule_year/model/IQueryEventComplete;Landroid/view/View;)V

    .line 133
    const-string v2, "current"

    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    .line 134
    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 133
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v2, "week_start"

    iget-object v3, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    .line 136
    invoke-virtual {v3}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 135
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v2, v0}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(Ljava/util/HashMap;)V

    .line 138
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    new-instance v3, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$2;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$2;-><init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_year/view/YearView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    new-instance v3, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;

    invoke-direct {v3, p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment$3;-><init>(Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;)V

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/submodule_year/view/YearView;->setOnMonthClickListener(Lcn/nubia/calendar/submodule_year/view/OnMonthClickListener;)V

    .line 171
    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 172
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    .line 201
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 205
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mOutterHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mOutterHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 208
    :cond_0
    return-void
.end method

.method public onQueryEventComplete(Ljava/lang/Object;)V
    .locals 0
    .param p1, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 187
    check-cast p1, Lcn/nubia/calendar/submodule_year/view/YearView;

    .end local p1    # "cookie":Ljava/lang/Object;
    invoke-virtual {p1}, Lcn/nubia/calendar/submodule_year/view/YearView;->invalidate()V

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 193
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 194
    invoke-virtual {p0}, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/submodule_year/model/AllYearEvents;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x1

    .line 195
    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    .line 194
    invoke-virtual {v0, v1, p0, v2}, Lcn/nubia/calendar/submodule_year/model/AllYearEvents;->queryEventsAllYear(ILcn/nubia/calendar/submodule_year/model/IQueryEventComplete;Landroid/view/View;)V

    .line 196
    iget-object v0, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v0}, Lcn/nubia/calendar/submodule_year/view/YearView;->invalidate()V

    .line 197
    return-void
.end method

.method public updateYearView()V
    .locals 4

    .prologue
    .line 176
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 177
    .local v0, "drawingParams":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v1, "current"

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    const/4 v3, 0x1

    .line 178
    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 177
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    const-string v1, "week_start"

    iget-object v2, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mCalendar:Ljava/util/Calendar;

    .line 180
    invoke-virtual {v2}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 179
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/submodule_year/view/YearView;->setYearParams(Ljava/util/HashMap;)V

    .line 182
    iget-object v1, p0, Lcn/nubia/calendar/submodule_year/view/CalendarMonthFragment;->mYearView:Lcn/nubia/calendar/submodule_year/view/YearView;

    invoke-virtual {v1}, Lcn/nubia/calendar/submodule_year/view/YearView;->invalidate()V

    .line 183
    return-void
.end method
