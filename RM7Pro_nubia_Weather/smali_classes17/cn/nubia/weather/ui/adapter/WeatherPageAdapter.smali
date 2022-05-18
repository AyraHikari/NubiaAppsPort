.class public Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;
.super Landroid/support/v4/app/FragmentStatePagerAdapter;
.source "WeatherPageAdapter.java"

# interfaces
.implements Lcn/nubia/weather/ui/adapter/IconPagerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;,
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;,
        Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_EMPTY_UPDATE:I = 0x8000002

.field private static final MESSAGE_UPDATE_ADAPTER:I = 0x8000000

.field private static final MESSAGE_UPDATE_INFO:I = 0x8000001

.field public static final TAG:Ljava/lang/String; = "WeatherPageAdapter"


# instance fields
.field private ICONS:[I

.field private contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private mChildCount:I

.field private mCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

.field private mFragmentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/weather/ui/view/WeatherPageFragment;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mIsPressButton:Z

.field private mLock:Ljava/lang/Object;

.field private mOldCityWeathers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/model/WeatherModel;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;

.field private mWeatherMainHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;Z)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "fm"    # Landroid/support/v4/app/FragmentManager;
    .param p3, "weatherMainHandler"    # Lcn/nubia/weather/ui/activity/HomeActivity$WeatherMainHandler;
    .param p4, "isPressButton"    # Z

    .prologue
    const/4 v1, 0x0

    .line 60
    invoke-direct {p0, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;-><init>(Landroid/support/v4/app/FragmentManager;)V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    .line 48
    new-instance v0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$UpdateHanlder;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    iput-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    .line 55
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    .line 61
    iput-boolean p4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    .line 62
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 63
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    :goto_0
    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    .line 65
    new-instance v0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    .line 68
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->setData()V

    .line 69
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->addObserver(Ljava/util/Observer;)V

    .line 70
    iput-object p3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    .line 72
    return-void

    :cond_0
    move-object v0, p1

    .line 63
    goto :goto_0

    .line 44
    nop

    :array_0
    .array-data 4
        0x7f0200f9
        0x7f0200fb
    .end array-data
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mWeatherMainHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 216
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 217
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 218
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 219
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->removeHandler()V

    .line 220
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/FragmentStatePagerAdapter;->destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    .line 223
    return-void
.end method

.method public doUpdate(Lcn/nubia/weather/data/DataCenter$ObserverObject;)V
    .locals 10
    .param p1, "o"    # Lcn/nubia/weather/data/DataCenter$ObserverObject;

    .prologue
    const-wide/16 v8, 0x3e8

    const v7, 0x8000002

    const/high16 v6, 0x8000000

    .line 332
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v4, :cond_0

    .line 333
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v4}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    .line 335
    .local v0, "currentIndex":I
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 336
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v0, v4, :cond_1

    .line 380
    .end local v0    # "currentIndex":I
    :cond_0
    :goto_0
    return-void

    .line 339
    .restart local v0    # "currentIndex":I
    :cond_1
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/WeatherModel;

    .line 340
    .local v3, "model":Lcn/nubia/weather/model/WeatherModel;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 343
    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 344
    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcn/nubia/weather/data/DataCenter$ObserverObject;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 345
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 346
    .local v1, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v1, :cond_0

    .line 349
    new-instance v4, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;

    invoke-direct {v4, p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$1;-><init>(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;)V

    invoke-virtual {v1, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V

    .line 360
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 361
    .local v2, "message":Landroid/os/Message;
    iput v7, v2, Landroid/os/Message;->what:I

    .line 362
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 363
    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    move-result v4

    if-nez v4, :cond_0

    .line 364
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 365
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 367
    :cond_2
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 368
    iput v6, v2, Landroid/os/Message;->what:I

    .line 369
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 372
    .end local v1    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v2    # "message":Landroid/os/Message;
    :cond_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 373
    .restart local v2    # "message":Landroid/os/Message;
    iput v6, v2, Landroid/os/Message;->what:I

    .line 374
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 375
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 377
    :cond_4
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 247
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 248
    :try_start_0
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    monitor-exit v1

    .line 252
    :goto_0
    return v0

    .line 251
    :cond_0
    monitor-exit v1

    .line 252
    const/4 v0, 0x0

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIconResId(I)I
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v3, 0x1

    .line 407
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "isLocationOpen"

    .line 407
    invoke-static {v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    .local v0, "isLocation":Z
    if-eqz v0, :cond_0

    .line 410
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    aget v1, v1, v3

    .line 412
    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->ICONS:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    goto :goto_0
.end method

.method public getItem(I)Landroid/support/v4/app/Fragment;
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/4 v1, 0x0

    .line 172
    iget-object v4, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 174
    :try_start_0
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    monitor-exit v4

    .line 208
    :goto_0
    return-object v1

    .line 177
    :cond_0
    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v3

    if-lt p1, v3, :cond_2

    .line 178
    :cond_1
    monitor-exit v4

    goto :goto_0

    .line 209
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 180
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/WeatherModel;

    .line 184
    .local v2, "weather":Lcn/nubia/weather/model/WeatherModel;
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 188
    .local v0, "key":Ljava/lang/Integer;
    new-instance v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-direct {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;-><init>()V

    .line 189
    .local v1, "mFragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v1, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 207
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getItemById(I)Landroid/support/v4/app/Fragment;
    .locals 4
    .param p1, "index"    # I

    .prologue
    const/4 v0, 0x0

    .line 155
    iget-object v3, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 157
    :try_start_0
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-nez v2, :cond_0

    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 158
    monitor-exit v3

    .line 166
    :goto_0
    return-object v0

    .line 161
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 162
    .local v1, "key":Ljava/lang/Integer;
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 163
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 164
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    monitor-exit v3

    goto :goto_0

    .line 167
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v1    # "key":Ljava/lang/Integer;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 166
    .restart local v1    # "key":Ljava/lang/Integer;
    :cond_1
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 7
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 264
    check-cast p1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getWeatherModel()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v1

    .line 265
    .local v1, "m":Lcn/nubia/weather/model/WeatherModel;
    const/4 v3, -0x1

    .line 266
    .local v3, "oldIndex":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 267
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 268
    .local v4, "w":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 269
    move v3, v0

    .line 266
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    .end local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    const/4 v2, -0x1

    .line 273
    .local v2, "newIndex":I
    const/4 v0, 0x0

    :goto_1
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 274
    iget-object v5, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 275
    .restart local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 276
    move v2, v0

    .line 273
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 279
    .end local v4    # "w":Lcn/nubia/weather/model/WeatherModel;
    :cond_3
    if-eq v3, v2, :cond_4

    .line 281
    const/4 v5, -0x2

    .line 284
    :goto_2
    return v5

    :cond_4
    const/4 v5, -0x1

    goto :goto_2
.end method

.method public getModel(I)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 288
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 289
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/model/WeatherModel;

    .line 291
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 229
    invoke-super {p0, p1, p2}, Landroid/support/v4/app/FragmentStatePagerAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 257
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getCount()I

    move-result v0

    iput v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mChildCount:I

    .line 258
    invoke-super {p0}, Landroid/support/v4/app/FragmentStatePagerAdapter;->notifyDataSetChanged()V

    .line 259
    return-void
.end method

.method public onDestory()V
    .locals 4

    .prologue
    .line 144
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 145
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 146
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 147
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 148
    .local v0, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->removeHandler()V

    goto :goto_0

    .line 150
    .end local v0    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    :cond_0
    iget-object v2, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    .line 152
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_1
    return-void
.end method

.method public popFragmentById(I)V
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 425
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 426
    .local v0, "fm":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_0

    .line 427
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setFragmentAtTop()V

    .line 428
    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->resetHourlyForecast()V

    .line 430
    :cond_0
    return-void
.end method

.method public removeObserver()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mDataObserver:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->deleteObserver(Ljava/util/Observer;)V

    .line 140
    return-void
.end method

.method public setData()V
    .locals 9

    .prologue
    .line 75
    iget-object v7, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 77
    :try_start_0
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    .line 78
    invoke-virtual {v6}, Lcn/nubia/weather/data/DataCenter;->getWeatherInfoList()Ljava/util/List;

    move-result-object v5

    .line 79
    .local v5, "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    iget-boolean v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mIsPressButton:Z

    if-nez v6, :cond_4

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 80
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    .line 81
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v8, 0x1

    if-ge v6, v8, :cond_4

    .line 83
    :cond_0
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 84
    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    if-eqz v6, :cond_2

    .line 86
    :cond_1
    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    .end local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :goto_0
    return-void

    .line 88
    .restart local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_2
    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 89
    .local v4, "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 132
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    .end local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v6, "WeatherPageAdapter"

    const-string v8, "WeatherPageAdapter Exception"

    invoke-static {v6, v8, v0}, Lcn/nubia/weather/utils/ZLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 135
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 91
    .restart local v5    # "weathers":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/WeatherModel;>;"
    :cond_3
    :try_start_4
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->notifyDataSetChanged()V

    goto :goto_2

    .line 95
    :cond_4
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 96
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 97
    .restart local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mOldCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 99
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_5
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/model/WeatherModel;

    .line 101
    .restart local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 105
    .end local v4    # "m":Lcn/nubia/weather/model/WeatherModel;
    :cond_6
    invoke-virtual {p0}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->notifyDataSetChanged()V

    .line 107
    const-string v6, "setdata notifyDataSetChanged END"

    invoke-static {v6}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 111
    :try_start_5
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 112
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 113
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 114
    .local v3, "k":Ljava/lang/Integer;
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mFragmentMap:Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 115
    .local v1, "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    iget-object v6, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mCityWeathers:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V

    .line 116
    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->refresh()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_5

    .line 129
    .end local v1    # "fragment":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v3    # "k":Ljava/lang/Integer;
    :catchall_1
    move-exception v6

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v6

    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_7
    invoke-static {}, Landroid/os/Trace;->endSection()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_2
.end method

.method public setViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 0
    .param p1, "mWeatherViewPager"    # Landroid/support/v4/view/ViewPager;

    .prologue
    .line 417
    iput-object p1, p0, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 418
    return-void
.end method

.method public stopRefreshAnime(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .line 434
    .local v0, "fm":Lcn/nubia/weather/ui/view/WeatherPageFragment;
    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p0, p1}, Lcn/nubia/weather/ui/adapter/WeatherPageAdapter;->getItemById(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->stopAnimation()Z

    .line 437
    :cond_0
    return-void
.end method
