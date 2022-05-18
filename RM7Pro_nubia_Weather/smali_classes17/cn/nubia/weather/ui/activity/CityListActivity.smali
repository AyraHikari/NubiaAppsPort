.class public Lcn/nubia/weather/ui/activity/CityListActivity;
.super Lcn/nubia/weather/ui/activity/BaseActivity;
.source "CityListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcn/nubia/weather/inner/ISettingsCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;,
        Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;,
        Lcn/nubia/weather/ui/activity/CityListActivity$ViewHolder;,
        Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;
    }
.end annotation


# static fields
.field private static final MAX_CITY_NUM:I = 0x9

.field public static final MESSAGE_UPDATE_ALL_WEATHER_INFO:I = 0x130000

.field public static final MESSAGE_UPDATE_WEATHER_INFO:I = 0x130002

.field public static final MESSAGE_UPDATE_WEATHER_LIST_INFO:I = 0x130001

.field private static final REQUEST_ADD_NEW_CITY:I = 0x4

.field private static final TAG:Ljava/lang/String; = "CityListActivity"

.field private static final WEATHER_UPDATE:Ljava/lang/String; = "android.intent.action.NUBIA.WEATHER.UPDATE"

.field public static mParentActivity:Landroid/app/Activity;


# instance fields
.field private mActionBarNormalLayout:Landroid/widget/RelativeLayout;

.field private mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

.field private mAddCityButton:Landroid/widget/Button;

.field private mBackLayout:Landroid/widget/LinearLayout;

.field private mBottomBarLeftLayout:Landroid/widget/LinearLayout;

.field private mBottomBarRightLayout:Landroid/widget/LinearLayout;

.field private mCancelActionMode:Landroid/widget/ImageView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrentDate:Ljava/util/Date;

.field private mDataObserver:Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

.field private mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

.field private mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

.field private mIsDelMode:Z

.field private mIsDragMode:Z

.field private mIsNight:Z

.field private mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

.field private mLocationCityTemperature:Landroid/widget/TextView;

.field private mLocationCityWeather:Landroid/widget/ImageView;

.field private mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

.field private mLocationTextView:Landroid/widget/TextView;

.field private mLock:Ljava/lang/Object;

.field private mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private final mOnDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

.field private mOpenLocationTimeStamp:J

.field private mParentLayout:Landroid/widget/RelativeLayout;

.field private mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

.field private mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

.field private mSelectAllButton:Landroid/widget/CheckedTextView;

.field private mSelectItemCount:Landroid/widget/TextView;

.field private mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

.field private mWeatherType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 120
    const-string v0, ""

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    .line 121
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsNight:Z

    .line 124
    new-instance v0, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLock:Ljava/lang/Object;

    .line 131
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    .line 389
    new-instance v0, Lcn/nubia/weather/ui/activity/CityListActivity$1;

    invoke-direct {v0, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$1;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOnDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    .line 1025
    return-void
.end method

.method private ImmersionStatusBar()V
    .locals 5

    .prologue
    const/high16 v4, 0x8000000

    const/high16 v3, -0x80000000

    .line 274
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 275
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 276
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v4, v4}, Landroid/view/Window;->setFlags(II)V

    .line 278
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    .line 280
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 282
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    return-void
.end method

.method static synthetic access$1000(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->backup()V

    return-void
.end method

.method static synthetic access$102(Lcn/nubia/weather/ui/activity/CityListActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDragMode:Z

    return p1
.end method

.method static synthetic access$1100(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationClosedUI()V

    return-void
.end method

.method static synthetic access$1300(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method static synthetic access$1302(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/model/WeatherModel;
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p1, "x1"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 80
    iput-object p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    return-object p1
.end method

.method static synthetic access$1400(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1500(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationLayout()V

    return-void
.end method

.method static synthetic access$1600(Lcn/nubia/weather/ui/activity/CityListActivity;)J
    .locals 2
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-wide v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$1602(Lcn/nubia/weather/ui/activity/CityListActivity;J)J
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p1, "x1"    # J

    .prologue
    .line 80
    iput-wide p1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$1700(Lcn/nubia/weather/ui/activity/CityListActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateUI(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcn/nubia/weather/ui/activity/CityListActivity;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/activity/CityListActivity;)Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/activity/CityListActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    return v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/activity/CityListActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;
    .param p1, "x1"    # I

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity;->setSelectedItemCount(I)V

    return-void
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/activity/CityListActivity;)Landroid/widget/CheckedTextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/weather/ui/activity/CityListActivity;)Ljava/util/Date;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mCurrentDate:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/weather/ui/activity/CityListActivity;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/activity/CityListActivity;

    .prologue
    .line 80
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->deleteCitiesFromTable()V

    return-void
.end method

.method private backup()V
    .locals 1

    .prologue
    .line 746
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 749
    :cond_0
    return-void
.end method

.method private deleteCitiesFromTable()V
    .locals 10

    .prologue
    .line 948
    const/4 v2, 0x0

    .line 949
    .local v2, "isSelectAll":Z
    const-string v0, ","

    .line 950
    .local v0, "comma":Ljava/lang/String;
    const/4 v5, 0x0

    .line 951
    .local v5, "names":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 952
    .local v6, "sb":Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v8}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v3

    .line 953
    .local v3, "itemCount":I
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v8}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v7

    .line 954
    .local v7, "selectedSize":I
    if-ne v3, v7, :cond_0

    .line 955
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/data/DataCenter;->getCityNames()Ljava/lang/String;

    move-result-object v5

    .line 956
    const/4 v2, 0x1

    .line 957
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/data/DataCenter;->clearWeatherInfo()V

    .line 975
    :goto_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->destoryActionMode()Z

    .line 976
    invoke-static {v7, v5, v2}, Lcn/nubia/weather/utils/ReYunUtils;->onDeleteCity(ILjava/lang/String;Z)V

    .line 977
    return-void

    .line 959
    :cond_0
    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_1
    if-ltz v1, :cond_2

    .line 960
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v8}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 961
    const/4 v4, 0x0

    .line 962
    .local v4, "model":Lcn/nubia/weather/model/WeatherModel;
    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v8, v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getItem(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v4

    .line 963
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcn/nubia/weather/data/DataCenter;->removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    .line 964
    if-eqz v4, :cond_1

    .line 965
    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 966
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 959
    .end local v4    # "model":Lcn/nubia/weather/model/WeatherModel;
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 970
    :cond_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0
.end method

.method private destoryActionMode()Z
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 642
    iget-boolean v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-eqz v2, :cond_4

    .line 643
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v2, v0}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragEnabled(Z)V

    .line 644
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 645
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 646
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 647
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 648
    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    .line 649
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v2, v1}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 651
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 652
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 657
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mAddCityButton:Landroid/widget/Button;

    const v3, 0x7f090051

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 658
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 659
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 661
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 662
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 664
    :cond_1
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 665
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 667
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 668
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 672
    :cond_3
    :goto_0
    return v0

    :cond_4
    move v0, v1

    goto :goto_0
.end method

.method private initBackgroundColor()V
    .locals 4

    .prologue
    .line 171
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "weathertype"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    .line 172
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "isNight"

    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsNight:Z

    .line 174
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    .line 176
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 177
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09018d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    .line 179
    invoke-static {v2}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsNight:Z

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v2

    .line 178
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 188
    :goto_0
    return-void

    .line 182
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 183
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsNight:Z

    .line 184
    invoke-static {v2, v3}, Lcn/nubia/weather/utils/WeatherStateUtils;->getBgColor(IZ)I

    move-result v2

    .line 183
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method private initDatas()V
    .locals 4

    .prologue
    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    .local v0, "timeMillis":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mCurrentDate:Ljava/util/Date;

    .line 289
    const-string v2, "isLocationOpen"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 290
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    .line 291
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    .line 292
    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationLayout()V

    .line 300
    :goto_0
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/ui/view/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 301
    return-void

    .line 295
    :cond_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationClosedUI()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationClosedUI()V

    goto :goto_0
.end method

.method private initEvents()V
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0, p0}, Lcn/nubia/weather/ui/view/DragSortListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 162
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBackLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mAddCityButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0, p0}, Lcn/nubia/weather/ui/view/DragSortListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 166
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, p0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 167
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOnDropListener:Lcn/nubia/weather/ui/view/DragSortListView$DropListener;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDropListener(Lcn/nubia/weather/ui/view/DragSortListView$DropListener;)V

    .line 168
    return-void
.end method

.method private initViews()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 191
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->ImmersionStatusBar()V

    .line 193
    const v1, 0x7f1000f0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mCancelActionMode:Landroid/widget/ImageView;

    .line 194
    const v1, 0x7f10005e

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarNormalLayout:Landroid/widget/RelativeLayout;

    .line 195
    const v1, 0x7f10005c

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

    .line 196
    const v1, 0x7f100059

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentLayout:Landroid/widget/RelativeLayout;

    .line 198
    const v1, 0x7f10005d

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectItemCount:Landroid/widget/TextView;

    .line 199
    const v1, 0x7f1000f4

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    .line 200
    const v1, 0x7f100063

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    .line 201
    const v1, 0x7f100065

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    .line 203
    const v1, 0x7f100064

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    .line 204
    const v1, 0x7f1000f5

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mAddCityButton:Landroid/widget/Button;

    .line 205
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mAddCityButton:Landroid/widget/Button;

    const v2, 0x7f090051

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 206
    const v1, 0x7f100062

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

    .line 207
    const v1, 0x7f100066

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/commonui/widget/NubiaSwitch;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    .line 208
    const v1, 0x7f100067

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/view/DragSortListView;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    .line 209
    const v1, 0x7f10005f

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBackLayout:Landroid/widget/LinearLayout;

    .line 210
    const-string v1, "isLocationOpen"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 212
    .local v0, "isLocationOn":Z
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 213
    new-instance v1, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;Landroid/view/LayoutInflater;)V

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    .line 215
    const v1, 0x7f1000ef

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    .line 216
    const v1, 0x7f1000f2

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    .line 217
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 218
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 221
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 223
    :cond_1
    return-void
.end method

.method private setSelectedItemCount(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 1134
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectItemCount:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09005a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1137
    return-void
.end method

.method private startDelMode()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 604
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateMenuView()V

    .line 605
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityLayoutOutter:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 606
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setClickable(Z)V

    .line 607
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setFocusable(Z)V

    .line 608
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 609
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarNormalLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 611
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 612
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mActionBarSelectedLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 614
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 615
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarLeftLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 617
    :cond_2
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 618
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mBottomBarRightLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 620
    :cond_3
    invoke-direct {p0, v3}, Lcn/nubia/weather/ui/activity/CityListActivity;->setSelectedItemCount(I)V

    .line 621
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v0

    if-ne v0, v3, :cond_4

    .line 622
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v0, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 628
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->setDragEnabled(Z)V

    .line 629
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 631
    return-void
.end method

.method private startLocation()V
    .locals 7

    .prologue
    const v6, 0x7f0900b9

    const/4 v5, 0x1

    const/4 v3, 0x0

    const v4, 0x130002

    .line 878
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    const/high16 v1, 0x41700000    # 15.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 879
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 880
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 885
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 886
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 888
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 889
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 891
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    sget-object v1, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 894
    new-instance v0, Lcn/nubia/commonui/app/ProgressDialog;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 895
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 896
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 897
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 898
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0, v5}, Lcn/nubia/commonui/app/ProgressDialog;->setIndeterminate(Z)V

    .line 899
    invoke-static {p0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 900
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 901
    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/activity/CityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 902
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    invoke-virtual {v0, v4}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    invoke-virtual {v0, v4}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->removeMessages(I)V

    .line 905
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mHandler:Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v4, v2, v3}, Lcn/nubia/weather/ui/activity/CityListActivity$CityListHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 925
    :cond_2
    :goto_0
    return-void

    .line 910
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 911
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->show()V

    .line 914
    :cond_4
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    new-instance v1, Lcn/nubia/weather/ui/activity/CityListActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$4;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/app/ProgressDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_0
.end method

.method private updateLocationClosedUI()V
    .locals 3

    .prologue
    .line 928
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 929
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41880000    # 17.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 930
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900ba

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 936
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 937
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 939
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    const v1, 0x7f0200f0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 941
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 942
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 943
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 945
    :cond_1
    return-void
.end method

.method private updateLocationLayout()V
    .locals 14

    .prologue
    const/4 v13, 0x5

    const/4 v9, 0x1

    const/4 v12, 0x0

    const v11, 0x7f020115

    const/16 v10, 0x8

    .line 304
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v7}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 305
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v7}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 306
    const/4 v7, 0x0

    iput-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 308
    :cond_0
    const-string v7, "isLocationOpen"

    invoke-static {p0, v7, v9}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 309
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v7}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v7

    if-nez v7, :cond_1

    .line 310
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v7, v9}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 312
    :cond_1
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/weather/data/DataCenter;->getLocationWeather()Lcn/nubia/weather/model/WeatherModel;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    .line 313
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v7, :cond_c

    .line 317
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_2

    .line 318
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 320
    :cond_2
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v7, v9, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 321
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c001d

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 323
    const-string v0, ""

    .line 324
    .local v0, "cityTmep":Ljava/lang/String;
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v13, :cond_4

    .line 325
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 326
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090172

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 327
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    :goto_0
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v7}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 334
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 335
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 387
    .end local v0    # "cityTmep":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void

    .line 329
    .restart local v0    # "cityTmep":Ljava/lang/String;
    :cond_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v8}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 330
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0900c9

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 338
    :cond_5
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getVisibility()I

    move-result v7

    if-ne v7, v10, :cond_6

    .line 339
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :cond_6
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 343
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v7

    .line 344
    invoke-virtual {v7}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v2

    .line 345
    .local v2, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_3

    .line 347
    const/4 v6, -0x1

    .line 348
    .local v6, "type":I
    const-string v5, ""

    .line 349
    .local v5, "temp":Ljava/lang/String;
    const/4 v3, -0x1

    .line 350
    .local v3, "icon":I
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mCurrentDate:Ljava/util/Date;

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v7, v8}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v1

    .line 352
    .local v1, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v4

    .line 353
    .local v4, "isNight":Z
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 354
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 357
    :cond_7
    invoke-virtual {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v5

    .line 358
    if-eqz v5, :cond_9

    .line 359
    const-string v7, " / "

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_8

    .line 360
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090058

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 363
    const/4 v4, 0x1

    .line 370
    :cond_8
    :goto_2
    const/4 v7, -0x1

    if-eq v6, v7, :cond_a

    .line 371
    invoke-static {v6, v4}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v3

    .line 372
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 376
    :goto_3
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 366
    :cond_9
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 367
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 374
    :cond_a
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_3

    .line 380
    .end local v1    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v2    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v3    # "icon":I
    .end local v4    # "isNight":Z
    .end local v5    # "temp":Ljava/lang/String;
    .end local v6    # "type":I
    :cond_b
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 381
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 384
    .end local v0    # "cityTmep":Ljava/lang/String;
    :cond_c
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityTemperature:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 385
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeather:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1
.end method

.method private updateMenuView()V
    .locals 2

    .prologue
    .line 638
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mAddCityButton:Landroid/widget/Button;

    const v1, 0x7f090052

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 639
    return-void
.end method

.method private updateUI(Z)V
    .locals 2
    .param p1, "isInitView"    # Z

    .prologue
    .line 1049
    if-eqz p1, :cond_1

    .line 1050
    const-string v0, "isLocationOpen"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationLayout()V

    .line 1053
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListView:Lcn/nubia/weather/ui/view/DragSortListView;

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/DragSortListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1059
    :goto_0
    return-void

    .line 1055
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 1056
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->destoryActionMode()Z

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .prologue
    .line 1227
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/permission/PermissionRequestUtil;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    .line 1228
    .local v0, "grant":Z
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v1, :cond_0

    .line 1229
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v1, v0}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 1231
    :cond_0
    return-void
.end method

.method protected doHandlerMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const-wide/16 v10, 0x0

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 1062
    const-string v5, "CityListActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[doHandlerMessage] msg.what : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1063
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1064
    .local v2, "getMsgTime":J
    const/4 v4, 0x0

    .line 1065
    .local v4, "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v5, v5, Ljava/util/Map;

    if-eqz v5, :cond_0

    .line 1066
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v4    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    check-cast v4, Ljava/util/Map;

    .line 1069
    .restart local v4    # "obj":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const/4 v0, 0x0

    .line 1070
    .local v0, "areaID":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1071
    .local v1, "cityName":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 1072
    const-string v5, "KEY_MAP_AREAID"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "areaID":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1073
    .restart local v0    # "areaID":Ljava/lang/String;
    const-string v5, "KEY_MAP_CITYNAME"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "cityName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .line 1075
    .restart local v1    # "cityName":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    .line 1076
    const-string v0, ""

    .line 1078
    :cond_2
    if-nez v1, :cond_3

    .line 1079
    const-string v1, ""

    .line 1081
    :cond_3
    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1119
    :cond_4
    :goto_0
    return-void

    .line 1084
    :cond_5
    iget-wide v6, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_6

    .line 1085
    invoke-static {v1}, Lcn/nubia/weather/utils/ReYunUtils;->onOpenLocation(Ljava/lang/String;)V

    .line 1086
    iput-wide v10, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    .line 1089
    :cond_6
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    goto :goto_0

    .line 1093
    :sswitch_0
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v5, v8}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 1094
    invoke-virtual {p0, v8}, Lcn/nubia/weather/ui/activity/CityListActivity;->openNetOrGps(Z)V

    goto :goto_0

    .line 1098
    :sswitch_1
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    .line 1099
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0900bb

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1098
    invoke-static {v5, v6}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1101
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v5, v8}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 1102
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1103
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1104
    iput-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    goto :goto_0

    .line 1109
    :sswitch_2
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v5, v8}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 1110
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 1111
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v5}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 1112
    iput-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 1114
    :cond_7
    const/4 v5, 0x1

    invoke-virtual {p0, v5}, Lcn/nubia/weather/ui/activity/CityListActivity;->openNetOrGps(Z)V

    goto :goto_0

    .line 1089
    :sswitch_data_0
    .sparse-switch
        0x100000 -> :sswitch_0
        0x100001 -> :sswitch_1
        0x100006 -> :sswitch_2
    .end sparse-switch
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 250
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->finish()V

    .line 251
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 677
    const-string v1, "isLocationOpen"

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 678
    .local v0, "islocation":Z
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->destoryActionMode()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 686
    :goto_0
    return-void

    .line 681
    :cond_0
    const-string v4, "CityListActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onBackPressed 111 : size()"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " ;; mParentActivity : "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v5, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    if-eqz v5, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/data/DataCenter;->getSize()I

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 683
    sget-object v1, Lcn/nubia/weather/ui/activity/CityListActivity;->mParentActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    .line 685
    :cond_1
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onBackPressed()V

    goto :goto_0

    :cond_2
    move v1, v3

    .line 681
    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 4
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 846
    const-string v1, "CityListActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isChecked"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 848
    if-eqz p2, :cond_1

    .line 849
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mOpenLocationTimeStamp:J

    .line 850
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v1, p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->requestPermissions(Landroid/app/Activity;)Z

    move-result v0

    .line 851
    .local v0, "grant":Z
    if-eqz v0, :cond_0

    .line 852
    const-string v1, "isLocationOpen"

    invoke-static {p0, v1, p2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 853
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->startLocation()V

    .line 864
    .end local v0    # "grant":Z
    :goto_0
    return-void

    .line 855
    .restart local v0    # "grant":Z
    :cond_0
    const-string v1, "isLocationOpen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 859
    .end local v0    # "grant":Z
    :cond_1
    const-string v1, "isLocationOpen"

    invoke-static {p0, v1, p2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 860
    invoke-static {}, Lcn/nubia/weather/utils/ReYunUtils;->onCloseLocation()V

    .line 861
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->updateLocationClosedUI()V

    .line 862
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mLocationCityWeatherData:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1, v2}, Lcn/nubia/weather/data/DataCenter;->removeWeatherInfo(Lcn/nubia/weather/model/WeatherModel;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 754
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v9

    sparse-switch v9, :sswitch_data_0

    .line 841
    :cond_0
    :goto_0
    return-void

    .line 756
    :sswitch_0
    iget-boolean v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-eqz v7, :cond_2

    .line 757
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v7}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v7

    if-nez v7, :cond_1

    .line 758
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    .line 759
    invoke-virtual {v7}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    .line 760
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090057

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 758
    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 765
    :cond_1
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 766
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const v7, 0x7f030020

    invoke-virtual {v0, v7}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(I)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 767
    const v7, 0x7f090056

    invoke-virtual {p0, v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Lcn/nubia/weather/ui/activity/CityListActivity$2;

    invoke-direct {v8, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$2;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    invoke-virtual {v0, v7, v8}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 775
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 776
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v7}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    .line 777
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    const v8, 0x7f10009a

    invoke-virtual {v7, v8}, Lcn/nubia/commonui/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 778
    .local v2, "confirm":Landroid/widget/TextView;
    new-instance v7, Lcn/nubia/weather/ui/activity/CityListActivity$3;

    invoke-direct {v7, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$3;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 789
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v2    # "confirm":Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x0

    .line 790
    .local v5, "isLimitationReached":Z
    iget-object v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v7}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v7

    const/16 v8, 0x9

    if-ge v7, v8, :cond_3

    .line 791
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 792
    .local v6, "mIntent":Landroid/content/Intent;
    const-class v7, Lcn/nubia/weather/ui/activity/CityAddActivity;

    invoke-virtual {v6, p0, v7}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 793
    const-string v7, "weathertype"

    iget-object v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 794
    const-string v7, "isNight"

    iget-boolean v8, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsNight:Z

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 795
    const/4 v7, 0x4

    invoke-virtual {p0, v6, v7}, Lcn/nubia/weather/ui/activity/CityListActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 801
    .end local v6    # "mIntent":Landroid/content/Intent;
    :goto_1
    invoke-static {v5}, Lcn/nubia/weather/utils/ReYunUtils;->onAddCity(Z)V

    goto/16 :goto_0

    .line 797
    :cond_3
    const/4 v5, 0x1

    .line 798
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    .line 799
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090054

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 798
    invoke-static {v7, v8}, Lcn/nubia/weather/utils/ToastUtil;->showShort(Landroid/content/Context;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 806
    .end local v5    # "isLimitationReached":Z
    :sswitch_1
    iget-boolean v7, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-eqz v7, :cond_0

    .line 807
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->destoryActionMode()Z

    goto/16 :goto_0

    .line 811
    :sswitch_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 814
    :sswitch_3
    iget-boolean v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-nez v9, :cond_0

    const-string v9, "isLocationOpen"

    .line 815
    invoke-static {p0, v9, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 817
    new-instance v4, Landroid/content/Intent;

    const-class v7, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v4, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 818
    .local v4, "intent":Landroid/content/Intent;
    const-string v7, "CITY_INDEX"

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 819
    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->startActivity(Landroid/content/Intent;)V

    .line 820
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->finish()V

    goto/16 :goto_0

    .line 824
    .end local v4    # "intent":Landroid/content/Intent;
    :sswitch_4
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    if-eqz v9, :cond_0

    .line 825
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v9}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 826
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v9}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v1

    .line 827
    .local v1, "checked":Z
    if-nez v1, :cond_4

    .line 829
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v9}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v9

    if-ge v3, v9, :cond_4

    .line 830
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v9}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 829
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 835
    .end local v3    # "i":I
    :cond_4
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v9}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    invoke-direct {p0, v9}, Lcn/nubia/weather/ui/activity/CityListActivity;->setSelectedItemCount(I)V

    .line 836
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v9}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    .line 837
    iget-object v9, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    if-nez v1, :cond_5

    :goto_3
    invoke-virtual {v9, v7}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/16 :goto_0

    :cond_5
    move v7, v8

    goto :goto_3

    .line 754
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10005f -> :sswitch_2
        0x7f100062 -> :sswitch_3
        0x7f1000ef -> :sswitch_1
        0x7f1000f2 -> :sswitch_4
        0x7f1000f5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 137
    invoke-super {p0, p1}, Lcn/nubia/weather/ui/activity/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 138
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 139
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lcn/nubia/weather/ui/activity/CityListActivity;->setContentView(I)V

    .line 141
    iput-object p0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mContext:Landroid/content/Context;

    .line 143
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->initViews()V

    .line 144
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->initEvents()V

    .line 145
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->initDatas()V

    .line 146
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->initBackgroundColor()V

    .line 148
    new-instance v0, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;Lcn/nubia/weather/ui/activity/CityListActivity$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDataObserver:Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;

    .line 149
    new-instance v0, Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-direct {v0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;-><init>()V

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    .line 152
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDataObserver:Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->addObserver(Ljava/util/Observer;)V

    .line 154
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 255
    const-string v0, "CityListActivity"

    const-string v1, "CityListActivity onDestroy"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDataObserver:Lcn/nubia/weather/ui/activity/CityListActivity$DataCenterObserver;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/data/DataCenter;->deleteObserver(Ljava/util/Observer;)V

    .line 263
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/ProgressDialog;->dismiss()V

    .line 268
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mProgressDialog:Lcn/nubia/commonui/app/ProgressDialog;

    .line 270
    :cond_1
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onDestroy()V

    .line 271
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
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
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 690
    iget-boolean v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-nez v5, :cond_1

    .line 691
    const/4 v0, 0x0

    .line 692
    .local v0, "index":I
    invoke-static {p0}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    add-int/lit8 v0, p3, 0x1

    .line 697
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 698
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "CITY_INDEX"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->startActivity(Landroid/content/Intent;)V

    .line 700
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->finish()V

    .line 723
    .end local v0    # "index":I
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 695
    .restart local v0    # "index":I
    :cond_0
    move v0, p3

    goto :goto_0

    .line 702
    .end local v0    # "index":I
    :cond_1
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v3

    .line 704
    .local v2, "isContainItem":Z
    :goto_2
    if-eqz v2, :cond_4

    .line 705
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    :goto_3
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-direct {p0, v5}, Lcn/nubia/weather/ui/activity/CityListActivity;->setSelectedItemCount(I)V

    .line 710
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 711
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 712
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v3, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 721
    :cond_2
    :goto_4
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v3}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .end local v2    # "isContainItem":Z
    :cond_3
    move v2, v4

    .line 702
    goto :goto_2

    .line 707
    .restart local v2    # "isContainItem":Z
    :cond_4
    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 716
    :cond_5
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v4}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    iget-object v5, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-virtual {v5}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_2

    .line 717
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSelectAllButton:Landroid/widget/CheckedTextView;

    invoke-virtual {v4, v3}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto :goto_4
.end method

.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 4
    .param p2, "arg1"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "arg3"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .local p1, "arg0":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 727
    iget-boolean v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDragMode:Z

    if-eqz v2, :cond_0

    .line 728
    iput-boolean v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDragMode:Z

    .line 742
    :goto_0
    return v0

    .line 731
    :cond_0
    iget-boolean v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 732
    goto :goto_0

    .line 734
    :cond_1
    iput-boolean v0, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mIsDelMode:Z

    .line 735
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 736
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    :goto_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->startDelMode()V

    goto :goto_0

    .line 738
    :cond_2
    iget-object v1, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mDragSortListAdapter:Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;

    invoke-static {v1}, Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;->access$400(Lcn/nubia/weather/ui/activity/CityListActivity$DragSortListAdapter;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 227
    const-string v0, "CityListActivity"

    const-string v1, "CityListActivity onPause"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onPause()V

    .line 229
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "grantResults"    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1196
    const/16 v4, 0xc

    if-ne p1, v4, :cond_4

    .line 1197
    const/4 v0, 0x1

    .line 1198
    .local v0, "requestResult":Z
    if-eqz p3, :cond_0

    array-length v4, p3

    if-nez v4, :cond_1

    .line 1199
    :cond_0
    const/4 v0, 0x0

    .line 1201
    :cond_1
    array-length v5, p3

    move v4, v2

    :goto_0
    if-ge v4, v5, :cond_2

    aget v1, p3, v4

    .line 1202
    .local v1, "result":I
    if-eqz v1, :cond_5

    .line 1203
    const/4 v0, 0x0

    .line 1207
    .end local v1    # "result":I
    :cond_2
    const-string v4, "CityListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestPermissionsResult: requestResult : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1208
    if-eqz v0, :cond_6

    .line 1209
    const-string v4, "CityListActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onRequestPermissionsResult: hasLocation : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v6

    if-nez v6, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1210
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/data/DataCenter;->hasLocation()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1211
    const-string v2, "isLocationOpen"

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1212
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v2

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->ACTIVE:Lcn/nubia/weather/app/Constant$OperationType;

    invoke-virtual {v2, v3}, Lcn/nubia/weather/presenter/OverAllControl;->locationAndQueryWeatherInfo(Lcn/nubia/weather/app/Constant$OperationType;)V

    .line 1222
    .end local v0    # "requestResult":Z
    :cond_4
    :goto_1
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/weather/ui/activity/BaseActivity;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 1223
    return-void

    .line 1201
    .restart local v0    # "requestResult":Z
    .restart local v1    # "result":I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1215
    .end local v1    # "result":I
    :cond_6
    const-string v3, "isLocationOpen"

    invoke-static {p0, v3, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1216
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3}, Lcn/nubia/commonui/widget/NubiaSwitch;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1217
    iget-object v3, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v3, v2}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 1219
    :cond_7
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mPermissionInspector:Lcn/nubia/weather/permission/WeatherPermissionInspector;

    invoke-virtual {v2, p0, p0}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->showWarmingDialog(Landroid/content/Context;Lcn/nubia/weather/inner/ISettingsCallBack;)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 234
    const-string v2, "CityListActivity"

    const-string v3, "CityListActivity onResume"

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-super {p0}, Lcn/nubia/weather/ui/activity/BaseActivity;->onResume()V

    .line 236
    const-string v2, "isLocationOpen"

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v1

    .line 238
    .local v1, "isLocationOn":Z
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/weather/permission/PermissionRequestUtil;->checkPermissions(Landroid/content/Context;)Z

    move-result v0

    .line 239
    .local v0, "grant":Z
    const-string v2, "CityListActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: isLocationOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 241
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    if-eqz v2, :cond_0

    .line 242
    iget-object v2, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mSwitchButton:Lcn/nubia/commonui/widget/NubiaSwitch;

    invoke-virtual {v2, v1}, Lcn/nubia/commonui/widget/NubiaSwitch;->setChecked(Z)V

    .line 245
    :cond_0
    return-void
.end method

.method public openNetOrGps(Z)V
    .locals 7
    .param p1, "isNetOpened"    # Z

    .prologue
    .line 1140
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1175
    :cond_0
    :goto_0
    return-void

    .line 1144
    :cond_1
    const/4 v1, 0x0

    .line 1145
    .local v1, "title":Ljava/lang/String;
    if-nez p1, :cond_2

    .line 1146
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1150
    :goto_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x7f03005e

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 1152
    .local v3, "view":Landroid/view/View;
    const v4, 0x7f100145

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1153
    .local v2, "titleText":Landroid/widget/TextView;
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1154
    new-instance v0, Lcn/nubia/commonui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcn/nubia/commonui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1155
    .local v0, "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setCancelable(Z)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1157
    invoke-virtual {v0, v3}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1158
    const/high16 v4, 0x1040000

    invoke-virtual {p0, v4}, Lcn/nubia/weather/ui/activity/CityListActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/CityListActivity$5;

    invoke-direct {v5, p0}, Lcn/nubia/weather/ui/activity/CityListActivity$5;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1165
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090114

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcn/nubia/weather/ui/activity/CityListActivity$6;

    invoke-direct {v5, p0, p1}, Lcn/nubia/weather/ui/activity/CityListActivity$6;-><init>(Lcn/nubia/weather/ui/activity/CityListActivity;Z)V

    invoke-virtual {v0, v4, v5}, Lcn/nubia/commonui/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/commonui/app/AlertDialog$Builder;

    .line 1171
    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog$Builder;->create()Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1172
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->isFinishing()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1173
    iget-object v4, p0, Lcn/nubia/weather/ui/activity/CityListActivity;->mNetGpsDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v4}, Lcn/nubia/commonui/app/AlertDialog;->show()V

    goto :goto_0

    .line 1148
    .end local v0    # "builder":Lcn/nubia/commonui/app/AlertDialog$Builder;
    .end local v2    # "titleText":Landroid/widget/TextView;
    .end local v3    # "view":Landroid/view/View;
    :cond_2
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0900e1

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public setMobileNetOrGps(Z)V
    .locals 3
    .param p1, "isNetOpened"    # Z

    .prologue
    .line 1178
    if-eqz p1, :cond_0

    .line 1179
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1191
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/activity/CityListActivity;->startActivity(Landroid/content/Intent;)V

    .line 1192
    return-void

    .line 1181
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v0}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 1182
    .local v0, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-virtual {p0}, Lcn/nubia/weather/ui/activity/CityListActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/weather/model/DeviceInfo;->hasSimCard(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1183
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.settings.sim.SIM_SUB_INFO_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1184
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "com.android.settings"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1185
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0

    .line 1187
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 1188
    .restart local v1    # "intent":Landroid/content/Intent;
    const-string v2, "android.net.wifi.PICK_WIFI_NETWORK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method
