.class public Lcn/nubia/deskclock/activity/NewCitiesActivity;
.super Landroid/app/Activity;
.source "NewCitiesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;,
        Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;
    }
.end annotation


# static fields
.field private static final ADD_CITY_KEY_UMENG:Ljava/lang/String; = "add_city"

.field public static final CITY_ID:Ljava/lang/String; = "city_id"

.field private static final DESKCLOCK_FEATURE:Ljava/lang/String; = "nubia_deskclock_feature"

.field public static final IS_COME_FROM_WIDGET:Ljava/lang/String; = "isComeFromWidget"

.field public static final MODIFY_CITY_ACTION:Ljava/lang/String; = "modify_city"

.field private static final NEW_CITY_KEY_UMENG:Ljava/lang/String; = "new_city"

.field public static final POSITION:Ljava/lang/String; = "position"

.field private static final SHOW_COUNTRY:Ljava/lang/String; = "DeskClock_showWolrdcountry"

.field private static final TAG:Ljava/lang/String; = "NewCitiesActivity"

.field private static final WIDGET_ACTION:Ljava/lang/String; = "add_city_form_widget"

.field public static final WORLDCLOCK_UPDATE_INTENT:Ljava/lang/String; = "com.android.deskclock.worldclock.update"


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

.field private mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

.field private mAllTheCitiesList:[Ljava/lang/Object;

.field private mBusy:Z

.field private mCalendar:Ljava/util/Calendar;

.field private mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

.field private mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

.field private mCityTitle:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDimmedView:Landroid/view/View;

.field private mFactory:Landroid/view/LayoutInflater;

.field private mFilter:Landroid/widget/Filter;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderView:Landroid/view/View;

.field private mIsFromWidget:Z

.field private mIsSerchMode:Z

.field private mIsShowCountry:Ljava/lang/String;

.field private mListEmptyLayout:Landroid/view/View;

.field private mNewCitiesBackLayout:Landroid/view/View;

.field private mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

.field mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

.field private mPosition:I

.field private mQueryText:Ljava/lang/String;

.field mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

.field private mSearchCityView:Landroid/widget/ImageView;

.field private mSearchEditLayout:Landroid/view/View;

.field private mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

.field private mToast:Landroid/widget/Toast;

.field private mUserSelectedCities:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcn/nubia/deskclock/model/City;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    .line 128
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    .line 129
    iput-boolean v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsFromWidget:Z

    .line 131
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mPosition:I

    .line 415
    new-instance v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$4;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    .line 451
    new-instance v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;

    invoke-direct {v0, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$5;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    return-void
.end method

.method static synthetic access$100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1000(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mDimmedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/deskclock/util/PinnedHeaderListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHeaderView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaCharacterListView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    return-object v0
.end method

.method static synthetic access$1400(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1402(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Ljava/util/Calendar;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCalendar:Ljava/util/Calendar;

    return-object p1
.end method

.method static synthetic access$1500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAllTheCitiesList:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1502(Lcn/nubia/deskclock/activity/NewCitiesActivity;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # [Ljava/lang/Object;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAllTheCitiesList:[Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic access$1600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    return v0
.end method

.method static synthetic access$1700(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsShowCountry:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->showLetterChangedView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcn/nubia/deskclock/activity/NewCitiesActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # I

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->refreshCharacterListView(I)V

    return-void
.end method

.method static synthetic access$2200(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mListEmptyLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getFirstName0fCity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->showSecondaryLetterChangedView(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcn/nubia/deskclock/activity/NewCitiesActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Landroid/widget/Filter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->checkInSearchMode()V

    return-void
.end method

.method static synthetic access$800(Lcn/nubia/deskclock/activity/NewCitiesActivity;)Lcn/nubia/commonui/widget/NubiaSearchView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;

    .prologue
    .line 87
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/deskclock/activity/NewCitiesActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/deskclock/activity/NewCitiesActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 87
    invoke-direct {p0, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->setCharacterListViewVisible(Z)V

    return-void
.end method

.method private backToDeskClock()V
    .locals 0

    .prologue
    .line 379
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->cancelSearchMode()V

    .line 380
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->finish()V

    .line 381
    return-void
.end method

.method private checkInSearchMode()V
    .locals 3

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 431
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setVisibility(I)V

    .line 437
    :cond_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    if-nez v0, :cond_1

    .line 449
    :goto_0
    return-void

    .line 440
    :cond_1
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    if-eqz v0, :cond_2

    .line 441
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v2}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 443
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    goto :goto_0

    .line 445
    :cond_2
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 446
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 447
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    goto :goto_0
.end method

.method private cityHasSelected(Lcn/nubia/deskclock/model/City;)Z
    .locals 5
    .param p1, "city"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 403
    iget-object v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v4}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 404
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;>;"
    const/4 v1, 0x0

    .line 405
    .local v1, "hasCity":Z
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 406
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 407
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 408
    .local v3, "key":Ljava/lang/String;
    iget-object v4, p1, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    const/4 v1, 0x1

    goto :goto_0

    .line 412
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return v1
.end method

.method private getFirstName0fCity(Ljava/lang/String;)V
    .locals 8
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v0, "characterArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, "cities":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 239
    aget-object v5, v1, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/nubia/deskclock/util/Pinyin;->getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 240
    .local v3, "headChar":Ljava/lang/String;
    invoke-virtual {v3, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 241
    aget-object v5, v1, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 242
    aget-object v5, v1, v4

    invoke-virtual {v5, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_0
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    aget-object v6, v1, v4

    invoke-virtual {v6, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 247
    .end local v3    # "headChar":Ljava/lang/String;
    :cond_2
    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-static {v5}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    move-result-object v2

    .line 248
    .local v2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/lang/Object;>;"
    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-static {v5, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 250
    if-eqz v0, :cond_3

    .line 251
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iget-object v6, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterListMap:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setLableNamesMap(Ljava/util/HashMap;)V

    .line 255
    :cond_3
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 161
    const v0, 0x7f040019

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->setContentView(I)V

    .line 162
    const v0, 0x7f12005f

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mListEmptyLayout:Landroid/view/View;

    .line 163
    const v0, 0x7f120061

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchEditLayout:Landroid/view/View;

    .line 164
    invoke-static {p0}, Lcn/nubia/deskclock/util/Utils;->GrayStatusBar(Landroid/app/Activity;)V

    .line 166
    const v0, 0x7f12005d

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    .line 167
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, p0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 168
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setVerticalScrollBarEnabled(Z)V

    .line 169
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v3}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setFastScrollEnabled(Z)V

    .line 170
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    .line 171
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    const v1, 0x7f040029

    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHeaderView:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mListEmptyLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setEmptyView(Landroid/view/View;)V

    .line 174
    const v0, 0x7f12005e

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/commonui/widget/NubiaCharacterListView;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    .line 175
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    new-instance v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$LetterListViewListener;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;Lcn/nubia/deskclock/activity/NewCitiesActivity$1;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setOnTouchingLetterChangedListener(Lcn/nubia/commonui/widget/NubiaCharacterListView$OnTouchingLetterChangedListener;)V

    .line 177
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->loadCitiesToMap(Landroid/content/Context;)Ljava/util/LinkedHashMap;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    .line 178
    new-instance v0, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFactory:Landroid/view/LayoutInflater;

    invoke-direct {v0, p0, v1, v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;Landroid/content/Context;Landroid/view/LayoutInflater;)V

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    .line 179
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mFilter:Landroid/widget/Filter;

    .line 180
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 181
    const v0, 0x7f12005c

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mDimmedView:Landroid/view/View;

    .line 182
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mDimmedView:Landroid/view/View;

    new-instance v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$1;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    const v0, 0x7f120058

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNewCitiesBackLayout:Landroid/view/View;

    .line 190
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNewCitiesBackLayout:Landroid/view/View;

    new-instance v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$2;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    const v0, 0x7f12005b

    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchCityView:Landroid/widget/ImageView;

    .line 197
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchCityView:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$3;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->checkInSearchMode()V

    .line 204
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->setActionBar()V

    .line 205
    return-void
.end method

.method private insertInUserSelectedCities(ILcn/nubia/deskclock/model/City;)V
    .locals 6
    .param p1, "p"    # I
    .param p2, "c"    # Lcn/nubia/deskclock/model/City;

    .prologue
    .line 384
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 385
    .local v1, "cityHashMap":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 386
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;>;"
    const/4 v2, 0x0

    .line 387
    .local v2, "count":I
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 388
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 389
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 390
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    if-ne v2, p1, :cond_0

    .line 391
    iget-object v5, p2, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v5, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 396
    goto :goto_0

    .line 393
    :cond_0
    iget-object v5, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v1, v5, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 397
    .end local v0    # "city":Lcn/nubia/deskclock/model/City;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcn/nubia/deskclock/model/City;>;"
    :cond_1
    iget-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->clear()V

    .line 398
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/LinkedHashMap;

    iput-object v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    .line 400
    return-void
.end method

.method private refreshCharacterListView(I)V
    .locals 2
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 485
    if-ltz p1, :cond_0

    .line 486
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getSectionName(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    .local v0, "section":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 488
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    .line 491
    .end local v0    # "section":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private releaseInputMethod()V
    .locals 8

    .prologue
    .line 1115
    move-object v0, p0

    .line 1116
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 1117
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplication()Landroid/app/Application;

    move-result-object v3

    const-string v4, "input_method"

    .line 1118
    invoke-virtual {v3, v4}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 1120
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    :try_start_0
    const-class v3, Landroid/view/inputmethod/InputMethodManager;

    const-string v4, "windowDismissed"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Landroid/os/IBinder;

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1122
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1121
    invoke-virtual {v3, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1127
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    :goto_0
    return-void

    .line 1123
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :catch_0
    move-exception v1

    .line 1124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setActionBar()V
    .locals 1

    .prologue
    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    .line 214
    return-void
.end method

.method private setCharacterListViewVisible(Z)V
    .locals 2
    .param p1, "flag"    # Z

    .prologue
    .line 494
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    if-eqz v0, :cond_0

    .line 495
    if-nez p1, :cond_1

    .line 496
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 502
    :cond_0
    :goto_0
    return-void

    .line 498
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 499
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setCurrentLetter(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private showLetterChangedView(Ljava/lang/String;)V
    .locals 4
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 276
    const-string v1, "NewCitiesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLetterChangedView="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    if-eqz v1, :cond_0

    .line 278
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-virtual {v1, p1}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getSectionPosition(Ljava/lang/String;)I

    move-result v0

    .line 279
    .local v0, "position":I
    const-string v1, "NewCitiesActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLetterChangedView=="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    if-ltz v0, :cond_0

    .line 281
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v1, v0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSelection(I)V

    .line 284
    .end local v0    # "position":I
    :cond_0
    return-void
.end method

.method private showSecondaryLetterChangedView(Ljava/lang/String;)V
    .locals 6
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 258
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    invoke-static {p1}, Lcn/nubia/deskclock/util/Pinyin;->getPinYinHeadChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    .line 259
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 258
    invoke-static {v4}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;->getSectionPosition(Ljava/lang/String;)I

    move-result v2

    .line 260
    .local v2, "position":I
    const/4 v0, 0x0

    .line 261
    .local v0, "characterArrayPosition":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 262
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->characterArrayListTmp:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 263
    move v0, v1

    .line 267
    :cond_0
    const-string v3, "NewCitiesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "position="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "//position1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    add-int v3, v2, v0

    add-int/lit8 v2, v3, -0x1

    .line 270
    if-ltz v2, :cond_1

    .line 271
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v3, v2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSelection(I)V

    .line 273
    :cond_1
    return-void

    .line 261
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized showTextToast(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 370
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 373
    :cond_0
    sget-object v0, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mToast:Landroid/widget/Toast;

    .line 375
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    monitor-exit p0

    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public cancelSearchMode()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 525
    const-string v0, "NewCitiesActivity"

    const-string v1, "cancelSearchMode"

    invoke-static {v0, v1}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-nez v0, :cond_0

    .line 549
    :goto_0
    return-void

    .line 529
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->hideInputMethod()V

    .line 530
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 531
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 533
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v0}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 534
    iput-boolean v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    .line 535
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mDimmedView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->requestFocus()Z

    .line 537
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0, v4}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setSearchStatus(Z)V

    .line 538
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHeaderView:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->setPinnedHeader(Landroid/view/View;)V

    .line 539
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcn/nubia/deskclock/activity/NewCitiesActivity$6;

    invoke-direct {v1, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$6;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 547
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCharacterListView:Lcn/nubia/commonui/widget/NubiaCharacterListView;

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/widget/NubiaCharacterListView;->setVisibility(I)V

    .line 548
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchEditLayout:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method hideInputMethod()V
    .locals 4

    .prologue
    .line 552
    move-object v0, p0

    .line 553
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    if-eqz v2, :cond_0

    .line 554
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplication()Landroid/app/Application;

    move-result-object v2

    const-string v3, "input_method"

    .line 555
    invoke-virtual {v2, v3}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 556
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 557
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->clearFocus()V

    .line 559
    .end local v1    # "imm":Landroid/view/inputmethod/InputMethodManager;
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 506
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    if-eqz v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->cancelSearchMode()V

    .line 511
    :goto_0
    return-void

    .line 509
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 342
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/deskclock/model/City;

    .line 343
    .local v0, "city":Lcn/nubia/deskclock/model/City;
    const-string v3, "NewCitiesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFromWidget = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsFromWidget:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-boolean v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsFromWidget:Z

    if-eqz v3, :cond_0

    .line 345
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-static {v3, v4}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->setWidgetCity(Landroid/content/Context;Ljava/lang/String;)V

    .line 346
    const-string v3, "NewCitiesActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWidgetCity id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    new-instance v2, Landroid/content/Intent;

    const-string v3, "displayed_city"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 348
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "city_id"

    iget-object v4, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 349
    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 350
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsFromWidget:Z

    .line 351
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->finish()V

    .line 367
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-direct {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->cityHasSelected(Lcn/nubia/deskclock/model/City;)Z

    move-result v1

    .line 355
    .local v1, "hasSelected":Z
    if-eqz v1, :cond_1

    .line 356
    sget-object v3, Lcn/nubia/deskclock/DeskClockApplication;->globalApplicationContext:Landroid/app/Application;

    invoke-virtual {v3}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d003d

    .line 357
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 356
    invoke-direct {p0, v3}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->showTextToast(Ljava/lang/String;)V

    goto :goto_0

    .line 359
    :cond_1
    iget v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mPosition:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 360
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mPosition:I

    sub-int/2addr v3, v4

    invoke-direct {p0, v3, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->insertInUserSelectedCities(ILcn/nubia/deskclock/model/City;)V

    .line 365
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->backToDeskClock()V

    goto :goto_0

    .line 362
    :cond_2
    iget-object v3, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Lcn/nubia/deskclock/model/City;->mCityId:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    const-string v3, "add_city"

    invoke-static {p0, v3}, Lcn/nubia/deskclock/util/ReyunUtils;->trackCustomEvent(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    iput-object p0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mContext:Landroid/content/Context;

    .line 139
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHandler:Landroid/os/Handler;

    .line 140
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 141
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "add_city_form_widget"

    if-ne v2, v3, :cond_1

    .line 142
    const-string v2, "isComeFromWidget"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsFromWidget:Z

    .line 147
    :cond_0
    :goto_0
    const-string v2, "true"

    iput-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsShowCountry:Ljava/lang/String;

    .line 149
    :try_start_0
    const-string v2, "nubia_deskclock_feature"

    const-string v3, "DeskClock_showWolrdcountry"

    invoke-static {v2, v3}, Lcn/nubia/config/android/NubiaFeatureConfig;->getSubValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsShowCountry:Ljava/lang/String;

    .line 150
    const-string v2, "NewCitiesActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mIsShowCountry : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsShowCountry:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :goto_1
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->initView()V

    .line 156
    new-instance v2, Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-direct {v2}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;-><init>()V

    iput-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 157
    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v3}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->showCtaDialog(Landroid/content/Context;Lcn/nubia/deskclock/inter/INubiaCtaCallback;)V

    .line 158
    return-void

    .line 143
    :cond_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "modify_city"

    if-ne v2, v3, :cond_0

    .line 144
    const-string v2, "position"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mPosition:I

    goto :goto_0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "NewCitiesActivity"

    const-string v3, "reyun error"

    invoke-static {v2, v3}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 321
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 322
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    invoke-virtual {v0}, Lcn/nubia/deskclock/ui/NubiaCtaDialog;->dismissDialog()V

    .line 323
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 326
    :cond_0
    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mNubiaCtaDialog:Lcn/nubia/deskclock/ui/NubiaCtaDialog;

    .line 327
    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAdapter:Lcn/nubia/deskclock/activity/NewCitiesActivity$CityAdapter;

    .line 328
    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    .line 329
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAllTheCitiesList:[Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 330
    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mAllTheCitiesList:[Ljava/lang/Object;

    .line 332
    :cond_1
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    if-eqz v0, :cond_2

    .line 333
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 334
    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    .line 336
    :cond_2
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->releaseInputMethod()V

    .line 337
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 288
    const-string v1, "NewCitiesActivity"

    const-string v2, "onOptionsItemSelected"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 304
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 291
    :sswitch_1
    const-string v1, "NewCitiesActivity"

    const-string v2, "home"

    invoke-static {v1, v2}, Lcn/nubia/deskclock/util/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-boolean v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    if-eqz v1, :cond_0

    .line 293
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->cancelSearchMode()V

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->finish()V

    goto :goto_0

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_1
        0x7f120182 -> :sswitch_0
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 314
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 315
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mUserSelectedCities:Ljava/util/LinkedHashMap;

    invoke-static {p0, v1}, Lcn/nubia/deskclock/database/WorldclockDbHelper;->updateCitiesWithMap(Landroid/content/Context;Ljava/util/LinkedHashMap;)V

    .line 316
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.deskclock.worldclock.update"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 317
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 318
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 310
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 471
    instance-of v0, p1, Lcn/nubia/deskclock/util/PinnedHeaderListView;

    if-eqz v0, :cond_0

    .line 472
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    if-eqz v0, :cond_2

    .line 473
    check-cast p1, Lcn/nubia/deskclock/util/PinnedHeaderListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->controlPinnedHeader(I)V

    .line 479
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mBusy:Z

    if-eqz v0, :cond_1

    .line 480
    invoke-direct {p0, p2}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->refreshCharacterListView(I)V

    .line 482
    :cond_1
    return-void

    .line 476
    .restart local p1    # "view":Landroid/widget/AbsListView;
    :cond_2
    check-cast p1, Lcn/nubia/deskclock/util/PinnedHeaderListView;

    .end local p1    # "view":Landroid/widget/AbsListView;
    invoke-virtual {p1, p2}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->controlPinnedHeader(I)V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 515
    if-nez p2, :cond_0

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mBusy:Z

    .line 522
    :goto_0
    return-void

    .line 518
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->hideInputMethod()V

    .line 519
    iget-object v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mCitiesList:Lcn/nubia/deskclock/util/PinnedHeaderListView;

    invoke-virtual {v0}, Lcn/nubia/deskclock/util/PinnedHeaderListView;->requestFocus()Z

    .line 520
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mBusy:Z

    goto :goto_0
.end method

.method showSearchView()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 562
    iput-boolean v4, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mIsSerchMode:Z

    .line 563
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchEditLayout:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 564
    const v1, 0x7f120062

    invoke-virtual {p0, v1}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSearchView;

    iput-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    .line 565
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 566
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mDimmedView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 567
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 568
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconifiedByDefault(Z)V

    .line 569
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const-string v2, ""

    invoke-virtual {v1, v2, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 570
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    const v2, 0x7f0d00c6

    invoke-virtual {p0, v2}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 571
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setIconified(Z)V

    .line 572
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->onActionViewExpanded()V

    .line 573
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mQueryTextListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnQueryTextListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnQueryTextListener;)V

    .line 574
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    iget-object v2, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mOnCloseListener:Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setOnCloseListener(Lcn/nubia/commonui/widget/NubiaSearchView$OnCloseListener;)V

    .line 575
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v3}, Lcn/nubia/commonui/widget/NubiaSearchView;->setVisibility(I)V

    .line 576
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1}, Lcn/nubia/commonui/widget/NubiaSearchView;->requestFocus()Z

    .line 577
    invoke-virtual {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    const-string v2, "input_method"

    .line 578
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 579
    .local v0, "inputManager":Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 581
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    invoke-virtual {v1, v4}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelBtnVisibility(Z)V

    .line 582
    iget-object v1, p0, Lcn/nubia/deskclock/activity/NewCitiesActivity;->mSearchView:Lcn/nubia/commonui/widget/NubiaSearchView;

    new-instance v2, Lcn/nubia/deskclock/activity/NewCitiesActivity$7;

    invoke-direct {v2, p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity$7;-><init>(Lcn/nubia/deskclock/activity/NewCitiesActivity;)V

    invoke-virtual {v1, v2}, Lcn/nubia/commonui/widget/NubiaSearchView;->setCancelListener(Landroid/view/View$OnClickListener;)V

    .line 589
    invoke-direct {p0}, Lcn/nubia/deskclock/activity/NewCitiesActivity;->checkInSearchMode()V

    .line 590
    return-void
.end method
