.class public Lcn/nubia/calendar/settings/NewCitiesActivity;
.super Lcn/nubia/commonui/actionbar/app/ActionBarActivity;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/MenuItem$OnActionExpandListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;,
        Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "CitiesActivity"


# instance fields
.field private characterArrayListTmp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private characterListMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private dimmedView:Landroid/view/View;

.field private mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mActionBarSearchView:Landroid/widget/TextView;

.field private mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

.field private mBusy:Z

.field private mButtomLayout:Landroid/widget/LinearLayout;

.field private mCalendar:Ljava/util/Calendar;

.field private mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

.field private mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

.field private mContext:Landroid/content/Context;

.field private mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mFilter:Landroid/widget/Filter;

.field private mIsInSearchMode:Z

.field mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

.field private mQueryText:Ljava/lang/String;

.field mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

.field private mSearchLayout:Landroid/widget/LinearLayout;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mSelectedTabIndex:I

.field private mUserSelectedCities:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/calendar/settings/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    .line 96
    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 108
    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    .line 109
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    .line 116
    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 761
    new-instance v0, Lcn/nubia/calendar/settings/NewCitiesActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$4;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 778
    new-instance v0, Lcn/nubia/calendar/settings/NewCitiesActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$5;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$002(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    return v0
.end method

.method static synthetic access$102(Lcn/nubia/calendar/settings/NewCitiesActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->backToDeskClock()V

    return-void
.end method

.method static synthetic access$1200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->showLetterChangedView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getFirstName0fCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1700(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->showSecondaryLetterChangedView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/widget/Filter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/calendar/settings/NewCitiesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->checkInSearchMode()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/calendar/settings/NewCitiesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcn/nubia/calendar/settings/NewCitiesActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->setCharacterListViewVisible(Z)V

    return-void
.end method

.method static synthetic access$202(Lcn/nubia/calendar/settings/NewCitiesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$2100(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->dimmedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/settings/NewCitiesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/settings/NewCitiesActivity;)Lcn/nubia/calendar/util/PinnedHeaderListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/settings/NewCitiesActivity;

    .prologue
    .line 79
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    return-object v0
.end method

.method private backToDeskClock()V
    .locals 2

    .prologue
    .line 710
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 711
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->cancelSearchMode()V

    .line 712
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->closeSoftInputWindow()V

    .line 713
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->finish()V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->finish()V

    goto :goto_0
.end method

.method private checkInSearchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 482
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->dimmedView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setVisibility(I)V

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->dimmedView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 488
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setVisibility(I)V

    goto :goto_0
.end method

.method private cityHasSelected(Lcn/nubia/calendar/settings/City;)Z
    .locals 5
    .param p1, "c"    # Lcn/nubia/calendar/settings/City;

    .prologue
    const/4 v3, 0x1

    .line 735
    invoke-static {p0, p1}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->isHomeCity(Landroid/content/Context;Lcn/nubia/calendar/settings/City;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 747
    :goto_0
    return v3

    .line 738
    :cond_0
    iget-object v4, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 739
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 740
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;>;"
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 742
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 743
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 744
    .local v2, "key":Ljava/lang/String;
    iget-object v4, p1, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    .line 747
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/calendar/settings/City;>;"
    .end local v2    # "key":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private closeSoftInputWindow()V
    .locals 3

    .prologue
    .line 870
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 872
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 873
    .local v0, "mImm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 875
    .end local v0    # "mImm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method private getFirstName0fCity(Ljava/lang/String;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 604
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 605
    .local v0, "characterArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 606
    .local v1, "cities":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    .line 607
    aget-object v5, v1, v3

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/calendar/util/Pinyin;->getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 608
    .local v4, "temp":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 609
    aget-object v5, v1, v3

    .line 610
    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 609
    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 611
    aget-object v5, v1, v3

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 613
    :cond_0
    iget-object v5, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    aget-object v6, v1, v3

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 616
    .end local v4    # "temp":Ljava/lang/String;
    :cond_2
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 617
    .local v2, "com":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 618
    iget-object v5, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 619
    const-string v5, "CitiesActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "characterArrayList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 620
    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 619
    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    if-eqz v0, :cond_3

    .line 622
    iget-object v5, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-object v5, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iget-object v6, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setLableNamesMap(Ljava/util/HashMap;)V

    .line 626
    :cond_3
    return-void
.end method

.method private initActionBar()V
    .locals 2

    .prologue
    .line 544
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBarSearchView:Landroid/widget/TextView;

    new-instance v1, Lcn/nubia/calendar/settings/NewCitiesActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$3;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 559
    return-void
.end method

.method private refreshCharacterListView(I)V
    .locals 2
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 815
    if-ltz p1, :cond_0

    .line 816
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    .line 817
    .local v0, "section":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 818
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    .line 821
    .end local v0    # "section":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private setCharacterListViewVisible(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 824
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    if-eqz v0, :cond_0

    .line 825
    if-nez p1, :cond_1

    .line 826
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 832
    :cond_0
    :goto_0
    return-void

    .line 828
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 829
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLetterChangedView(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 629
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    if-eqz v1, :cond_0

    .line 630
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getSectionPosition(Ljava/lang/String;)I

    move-result v0

    .line 631
    .local v0, "position":I
    if-ltz v0, :cond_0

    .line 632
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSelection(I)V

    .line 635
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private showPermissionDialog()V
    .locals 3

    .prologue
    .line 700
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0108

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 702
    .local v0, "showWritePermission":Ljava/lang/String;
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 703
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v1}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 704
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 706
    :cond_0
    invoke-static {v0, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 707
    return-void
.end method

.method private showSecondaryLetterChangedView(Ljava/lang/String;)V
    .locals 6
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    .line 588
    invoke-static {p1}, Lcn/nubia/calendar/util/Pinyin;->getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 587
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getSectionPosition(Ljava/lang/String;)I

    move-result v1

    .line 589
    .local v1, "position":I
    const/4 v2, 0x0

    .line 590
    .local v2, "position1":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 591
    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 592
    move v2, v0

    .line 597
    :cond_0
    add-int v3, v1, v2

    add-int/lit8 v1, v3, -0x1

    .line 598
    if-ltz v1, :cond_1

    .line 599
    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v3, v1}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSelection(I)V

    .line 601
    :cond_1
    return-void

    .line 590
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updateLayout()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 494
    const v1, 0x7f030043

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->setContentView(I)V

    .line 495
    const v1, 0x7f1100f1

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/calendar/util/PinnedHeaderListView;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    .line 496
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v1, p0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 497
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    const v2, 0x7f030045

    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 499
    .local v0, "HeaderView":Landroid/view/View;
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    .line 500
    const v1, 0x7f1100f2

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .line 501
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    new-instance v2, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcn/nubia/calendar/settings/NewCitiesActivity$LetterListViewListener;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;Lcn/nubia/calendar/settings/NewCitiesActivity$1;)V

    .line 503
    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setOnTouchingLetterChangedListener(Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V

    .line 504
    invoke-static {p0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->loadCitiesToMap(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    .line 505
    new-instance v1, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    iget-object v3, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    invoke-direct {v1, p0, p0, v2, v3}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;Landroid/content/Context;Ljava/util/LinkedHashMap;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    .line 507
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    .line 508
    const v1, 0x7f110057

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    .line 509
    const v1, 0x7f110093

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    .line 510
    const v1, 0x7f1100f3

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBarSearchView:Landroid/widget/TextView;

    .line 511
    const v1, 0x7f110094

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 512
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelBtnVisibility(Z)V

    .line 513
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    new-instance v2, Lcn/nubia/calendar/settings/NewCitiesActivity$1;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$1;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQueryTextView()Landroid/widget/EditText;

    move-result-object v1

    new-instance v2, Lcn/nubia/calendar/settings/NewCitiesActivity$2;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$2;-><init>(Lcn/nubia/calendar/settings/NewCitiesActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 530
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 531
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getSupportActionBar()Lcn/nubia/commonui/actionbar/app/ActionBar;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 532
    const v1, 0x7f1100f0

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->dimmedView:Landroid/view/View;

    .line 533
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    if-eqz v1, :cond_0

    .line 534
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayOptions(I)V

    .line 537
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/actionbar/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 538
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v1}, Lcn/nubia/commonui/actionbar/app/ActionBar;->show()V

    .line 539
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->initActionBar()V

    .line 541
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelSearchMode()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 720
    iput-boolean v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mIsInSearchMode:Z

    .line 721
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 724
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 725
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->dimmedView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 727
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->setVisibility(I)V

    .line 728
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 729
    invoke-direct {p0, v3}, Lcn/nubia/calendar/settings/NewCitiesActivity;->setCharacterListViewVisible(Z)V

    .line 730
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mButtomLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 732
    return-void
.end method

.method hideInputMethod()V
    .locals 3

    .prologue
    .line 846
    if-eqz p0, :cond_0

    .line 847
    const-string v1, "input_method"

    .line 848
    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 849
    .local v0, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 850
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 852
    .end local v0    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method hideSearchView()V
    .locals 2

    .prologue
    .line 886
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 889
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 665
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->backToDeskClock()V

    .line 666
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    .line 678
    const-string v2, "android.permission.READ_CALENDAR"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "android.permission.WRITE_CALENDAR"

    .line 679
    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkDontHavePermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 680
    :cond_0
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "android.permission.READ_CALENDAR"

    aput-object v3, v2, v5

    const/4 v3, 0x1

    const-string v4, "android.permission.WRITE_CALENDAR"

    aput-object v4, v2, v3

    invoke-static {p0, v2, v5}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 697
    :goto_0
    return-void

    .line 684
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/settings/City;

    .line 686
    .local v0, "c":Lcn/nubia/calendar/settings/City;
    invoke-direct {p0, v0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->cityHasSelected(Lcn/nubia/calendar/settings/City;)Z

    move-result v1

    .line 687
    .local v1, "hasSelected":Z
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    iget-object v3, v0, Lcn/nubia/calendar/settings/City;->mTimeZone:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->setTimeZone(Ljava/lang/String;)V

    .line 688
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    iget-object v3, v0, Lcn/nubia/calendar/settings/City;->mCityName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->setHomeTZCity(Ljava/lang/String;)V

    .line 689
    if-eqz v1, :cond_3

    .line 693
    :goto_1
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 694
    invoke-static {p0}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requerstSportsMatchesData(Landroid/content/Context;)V

    .line 696
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->backToDeskClock()V

    goto :goto_0

    .line 691
    :cond_3
    iget-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Lcn/nubia/calendar/settings/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 470
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    .line 471
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 472
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    .line 473
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->updateLayout()V

    .line 474
    iput-object p0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mContext:Landroid/content/Context;

    .line 475
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarApplication;

    .line 476
    .local v0, "app":Lcn/nubia/calendar/CalendarApplication;
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getConfigModel()Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCalendarConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 477
    invoke-static {p0}, Lcn/nubia/calendar/util/Utils;->setWindowOverLap(Landroid/app/Activity;)V

    .line 478
    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/Utils;->setDarkStatusIcon(Landroid/app/Activity;Z)V

    .line 479
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 670
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 671
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->setupSearchView()V

    .line 672
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 893
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onDestroy()V

    .line 894
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 895
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 896
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mDialogPermission:Lcn/nubia/commonui/app/AlertDialog;

    .line 898
    :cond_0
    return-void
.end method

.method public onMenuItemActionCollapse(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 752
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->backToDeskClock()V

    .line 753
    const/4 v0, 0x0

    return v0
.end method

.method public onMenuItemActionExpand(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 758
    const/4 v0, 0x0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 660
    invoke-super {p0, p1}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 655
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->backToDeskClock()V

    .line 656
    const/4 v0, 0x1

    goto :goto_0

    .line 653
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 647
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onPause()V

    .line 648
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-static {p0, v0}, Lcn/nubia/calendar/settings/WorldclockDbHelper;->updateCitiesWithMap(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 649
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 639
    invoke-super {p0}, Lcn/nubia/commonui/actionbar/app/ActionBarActivity;->onResume()V

    .line 640
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mAdapter:Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/settings/NewCitiesActivity$CityAdapter;->set24HoursMode(Landroid/content/Context;)V

    .line 643
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 800
    instance-of v0, p1, Lcn/nubia/calendar/util/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 801
    check-cast p1, Lcn/nubia/calendar/util/PinnedHeaderListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {p1, p2}, Lcn/nubia/calendar/util/PinnedHeaderListView;->controlPinnedHeader(I)V

    .line 803
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mBusy:Z

    if-eqz v0, :cond_1

    .line 805
    invoke-direct {p0, p2}, Lcn/nubia/calendar/settings/NewCitiesActivity;->refreshCharacterListView(I)V

    .line 808
    :cond_1
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 837
    if-nez p2, :cond_0

    .line 838
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mBusy:Z

    .line 843
    :goto_0
    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mCitiesList:Lcn/nubia/calendar/util/PinnedHeaderListView;

    invoke-virtual {v0}, Lcn/nubia/calendar/util/PinnedHeaderListView;->requestFocus()Z

    .line 841
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mBusy:Z

    goto :goto_0
.end method

.method public openSoftInputWindow()V
    .locals 3

    .prologue
    .line 878
    invoke-virtual {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 879
    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 880
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 881
    .local v0, "m":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 883
    .end local v0    # "m":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method setupSearchView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 855
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 857
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v1, 0x7f0c0204

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/settings/NewCitiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 858
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 859
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->onActionViewExpanded()V

    .line 861
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 862
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v1, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnCloseListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;)V

    .line 863
    iget-object v0, p0, Lcn/nubia/calendar/settings/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 864
    invoke-direct {p0}, Lcn/nubia/calendar/settings/NewCitiesActivity;->checkInSearchMode()V

    .line 867
    :cond_0
    return-void
.end method
