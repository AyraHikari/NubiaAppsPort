.class public final Lcom/google/android/material/picker/MaterialCalendar;
.super Landroidx/fragment/app/Fragment;
.source "MaterialCalendar.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;,
        Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Landroidx/fragment/app/Fragment;"
    }
.end annotation


# static fields
.field private static final CALENDAR_BOUNDS_KEY:Ljava/lang/String; = "CALENDAR_BOUNDS_KEY"

.field private static final GRID_SELECTOR_KEY:Ljava/lang/String; = "GRID_SELECTOR_KEY"

.field private static final THEME_RES_ID_KEY:Ljava/lang/String; = "THEME_RES_ID_KEY"

.field public static final VIEW_PAGER_TAG:Ljava/lang/Object;
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

.field private gridSelector:Lcom/google/android/material/picker/GridSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/picker/GridSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field private monthsPagerAdapter:Lcom/google/android/material/picker/MonthsPagerAdapter;

.field private final onSelectionChangedListeners:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet<",
            "Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener<",
            "TS;>;>;"
        }
    .end annotation
.end field

.field private themeResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "VIEW_PAGER_TAG"

    .line 57
    sput-object v0, Lcom/google/android/material/picker/MaterialCalendar;->VIEW_PAGER_TAG:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 59
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/GridSelector;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/MonthsPagerAdapter;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->monthsPagerAdapter:Lcom/google/android/material/picker/MonthsPagerAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/material/picker/MaterialCalendar;)Ljava/util/LinkedHashSet;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/material/picker/MaterialCalendar;)Lcom/google/android/material/picker/CalendarBounds;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    return-object p0
.end method

.method static synthetic access$302(Lcom/google/android/material/picker/MaterialCalendar;Lcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/CalendarBounds;
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    return-object p1
.end method

.method private addMonthChangeListeners(Landroid/view/View;)V
    .locals 4

    .line 187
    sget v0, Lcom/google/android/material/R$id;->month_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    .line 188
    sget v1, Lcom/google/android/material/R$id;->month_drop_select:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/google/android/material/button/MaterialButton;

    .line 189
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    move-result-object v2

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v3

    invoke-virtual {v2, v3}, Landroidx/viewpager/widget/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/material/button/MaterialButton;->setText(Ljava/lang/CharSequence;)V

    .line 190
    sget v2, Lcom/google/android/material/R$id;->month_previous:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 191
    sget v3, Lcom/google/android/material/R$id;->month_next:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 192
    new-instance v3, Lcom/google/android/material/picker/MaterialCalendar$2;

    invoke-direct {v3, p0, v1}, Lcom/google/android/material/picker/MaterialCalendar$2;-><init>(Lcom/google/android/material/picker/MaterialCalendar;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v0, v3}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 205
    new-instance v1, Lcom/google/android/material/picker/MaterialCalendar$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/material/picker/MaterialCalendar$3;-><init>(Lcom/google/android/material/picker/MaterialCalendar;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {p1, v1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    new-instance p1, Lcom/google/android/material/picker/MaterialCalendar$4;

    invoke-direct {p1, p0, v0}, Lcom/google/android/material/picker/MaterialCalendar$4;-><init>(Lcom/google/android/material/picker/MaterialCalendar;Landroidx/viewpager/widget/ViewPager;)V

    invoke-virtual {v2, p1}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static getDayHeight(Landroid/content/Context;)I
    .locals 1
    .annotation build Landroidx/annotation/Px;
    .end annotation

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_size:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method public static newInstance(Lcom/google/android/material/picker/GridSelector;ILcom/google/android/material/picker/CalendarBounds;)Lcom/google/android/material/picker/MaterialCalendar;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/android/material/picker/GridSelector<",
            "TT;>;I",
            "Lcom/google/android/material/picker/CalendarBounds;",
            ")",
            "Lcom/google/android/material/picker/MaterialCalendar<",
            "TT;>;"
        }
    .end annotation

    .line 77
    new-instance v0, Lcom/google/android/material/picker/MaterialCalendar;

    invoke-direct {v0}, Lcom/google/android/material/picker/MaterialCalendar;-><init>()V

    .line 78
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "THEME_RES_ID_KEY"

    .line 79
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "GRID_SELECTOR_KEY"

    .line 80
    invoke-virtual {v1, p1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string p0, "CALENDAR_BOUNDS_KEY"

    .line 81
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 82
    invoke-virtual {v0, v1}, Lcom/google/android/material/picker/MaterialCalendar;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method addOnSelectionChangedListener(Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 159
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method clearOnSelectionChangedListeners()V
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Ljava/util/LinkedHashSet;->clear()V

    return-void
.end method

.method public final getSelection()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 155
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-interface {p0}, Lcom/google/android/material/picker/GridSelector;->getSelection()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 96
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendar;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 98
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/google/android/material/picker/MaterialCalendar;->themeResId:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 99
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/picker/GridSelector;

    iput-object v0, p0, Lcom/google/android/material/picker/MaterialCalendar;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    const-string v0, "CALENDAR_BOUNDS_KEY"

    .line 100
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/picker/CalendarBounds;

    iput-object p1, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .param p1    # Landroid/view/LayoutInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 109
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/google/android/material/picker/MaterialCalendar;->themeResId:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 110
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 112
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-virtual {p3}, Lcom/google/android/material/picker/CalendarBounds;->getStart()Lcom/google/android/material/picker/Month;

    move-result-object v3

    .line 113
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-virtual {p3}, Lcom/google/android/material/picker/CalendarBounds;->getEnd()Lcom/google/android/material/picker/Month;

    move-result-object v4

    .line 114
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-virtual {p3}, Lcom/google/android/material/picker/CalendarBounds;->getCurrent()Lcom/google/android/material/picker/Month;

    move-result-object v5

    .line 116
    sget p3, Lcom/google/android/material/R$layout;->mtrl_calendar:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 117
    sget p2, Lcom/google/android/material/R$id;->calendar_days_header:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 118
    new-instance p3, Lcom/google/android/material/picker/DaysOfWeekAdapter;

    invoke-direct {p3}, Lcom/google/android/material/picker/DaysOfWeekAdapter;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 119
    iget p3, v3, Lcom/google/android/material/picker/Month;->daysInWeek:I

    invoke-virtual {p2, p3}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 121
    sget p2, Lcom/google/android/material/R$id;->month_pager:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/viewpager/widget/ViewPager;

    .line 122
    sget-object p3, Lcom/google/android/material/picker/MaterialCalendar;->VIEW_PAGER_TAG:Ljava/lang/Object;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setTag(Ljava/lang/Object;)V

    .line 124
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/google/android/material/R$dimen;->mtrl_calendar_day_spacing_vertical:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    .line 125
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    sget v1, Lcom/google/android/material/picker/MonthAdapter;->MAXIMUM_WEEKS:I

    .line 128
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/material/picker/MaterialCalendar;->getDayHeight(Landroid/content/Context;)I

    move-result v2

    mul-int/2addr v1, v2

    sget v2, Lcom/google/android/material/picker/MonthAdapter;->MAXIMUM_WEEKS:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, p3

    add-int/2addr v1, v2

    const/4 p3, -0x1

    invoke-direct {v0, p3, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 125
    invoke-virtual {p2, v0}, Landroidx/viewpager/widget/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    new-instance p3, Lcom/google/android/material/picker/MonthsPagerAdapter;

    .line 132
    invoke-virtual {p0}, Lcom/google/android/material/picker/MaterialCalendar;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/material/picker/MaterialCalendar;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    new-instance v6, Lcom/google/android/material/picker/MaterialCalendar$1;

    invoke-direct {v6, p0}, Lcom/google/android/material/picker/MaterialCalendar$1;-><init>(Lcom/google/android/material/picker/MaterialCalendar;)V

    move-object v0, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/material/picker/MonthsPagerAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/google/android/material/picker/GridSelector;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/Month;Lcom/google/android/material/picker/MaterialCalendar$OnDayClickListener;)V

    iput-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->monthsPagerAdapter:Lcom/google/android/material/picker/MonthsPagerAdapter;

    .line 148
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->monthsPagerAdapter:Lcom/google/android/material/picker/MonthsPagerAdapter;

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 149
    iget-object p3, p0, Lcom/google/android/material/picker/MaterialCalendar;->monthsPagerAdapter:Lcom/google/android/material/picker/MonthsPagerAdapter;

    invoke-virtual {p3}, Lcom/google/android/material/picker/MonthsPagerAdapter;->getStartPosition()I

    move-result p3

    invoke-virtual {p2, p3}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 150
    invoke-direct {p0, p1}, Lcom/google/android/material/picker/MaterialCalendar;->addMonthChangeListeners(Landroid/view/View;)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "THEME_RES_ID_KEY"

    .line 89
    iget v1, p0, Lcom/google/android/material/picker/MaterialCalendar;->themeResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "GRID_SELECTOR_KEY"

    .line 90
    iget-object v1, p0, Lcom/google/android/material/picker/MaterialCalendar;->gridSelector:Lcom/google/android/material/picker/GridSelector;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v0, "CALENDAR_BOUNDS_KEY"

    .line 91
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->calendarBounds:Lcom/google/android/material/picker/CalendarBounds;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method

.method removeOnSelectionChangedListener(Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/picker/MaterialCalendar$OnSelectionChangedListener<",
            "TS;>;)Z"
        }
    .end annotation

    .line 163
    iget-object p0, p0, Lcom/google/android/material/picker/MaterialCalendar;->onSelectionChangedListeners:Ljava/util/LinkedHashSet;

    invoke-virtual {p0, p1}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
