.class public Lcn/nubia/weather/ui/view/WeatherPageFragment;
.super Landroid/support/v4/app/Fragment;
.source "WeatherPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;
    }
.end annotation


# static fields
.field public static final KEY_CC_NAVI_STATUS:Ljava/lang/String; = "cc_navi_status"

.field private static final TAG:Ljava/lang/String; = "WeatherPageFragment"


# instance fields
.field private isGpsNeeded:Z

.field private isRealDay:Z

.field private mAirTextView:Landroid/widget/TextView;

.field private mAlarm:Landroid/widget/TextView;

.field private mAlarmDetail:Ljava/lang/String;

.field private mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

.field private mAlarmLayout:Landroid/widget/LinearLayout;

.field private mAlarmLevelIcon:Landroid/widget/ImageView;

.field private mAlarmLink:Ljava/lang/String;

.field private mAlarmLinkTextView:Landroid/widget/TextView;

.field private mAlarmPPWindow:Landroid/widget/PopupWindow;

.field private mCheckNewTextView:Landroid/widget/TextView;

.field private mCityBarLayout:Landroid/widget/LinearLayout;

.field private mCityScrollTextView:Landroid/widget/TextView;

.field private mCityTextView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mCurrentTempArea:Landroid/view/View;

.field private mCurrentTemperatureTextView:Landroid/widget/TextView;

.field private mCurrentWeatherTextView:Landroid/widget/TextView;

.field private mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

.field private mDailyForecastLv:Landroid/widget/ListView;

.field private mDay1DateTextView:Landroid/widget/TextView;

.field private mDay1HighTextView:Landroid/widget/TextView;

.field private mDay1Layout:Landroid/widget/RelativeLayout;

.field private mDay1LowImageView:Landroid/widget/ImageView;

.field private mDay1LowTextView:Landroid/widget/TextView;

.field private mDay1WeatherImageView:Landroid/widget/ImageView;

.field private mDay1WeatherTextView:Landroid/widget/TextView;

.field private mDay2DateTextView:Landroid/widget/TextView;

.field private mDay2HighTextView:Landroid/widget/TextView;

.field private mDay2Layout:Landroid/widget/RelativeLayout;

.field private mDay2LowImageView:Landroid/widget/ImageView;

.field private mDay2LowTextView:Landroid/widget/TextView;

.field private mDay2WeatherImageView:Landroid/widget/ImageView;

.field private mDay2WeatherTextView:Landroid/widget/TextView;

.field private mDay3DateTextView:Landroid/widget/TextView;

.field private mDay3HighTextView:Landroid/widget/TextView;

.field private mDay3Layout:Landroid/widget/RelativeLayout;

.field private mDay3LowImageView:Landroid/widget/ImageView;

.field private mDay3LowTextView:Landroid/widget/TextView;

.field private mDay3WeatherImageView:Landroid/widget/ImageView;

.field private mDay3WeatherTextView:Landroid/widget/TextView;

.field private mDay4DateTextView:Landroid/widget/TextView;

.field private mDay4HighTextView:Landroid/widget/TextView;

.field private mDay4Layout:Landroid/widget/RelativeLayout;

.field private mDay4LowImageView:Landroid/widget/ImageView;

.field private mDay4LowTextView:Landroid/widget/TextView;

.field private mDay4WeatherImageView:Landroid/widget/ImageView;

.field private mDay4WeatherTextView:Landroid/widget/TextView;

.field private mDayLink:Ljava/lang/String;

.field private mDivideView:Landroid/view/View;

.field private mFiftyForwardLink:Landroid/view/View;

.field private mFiftyLinkTextView:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mHourIndexes:[I

.field private mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

.field private mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

.field private mHumidityImageView:Landroid/widget/ImageView;

.field private mHumidityLayout:Landroid/widget/LinearLayout;

.field private mHumidityTextView:Landroid/widget/TextView;

.field private mIndexLink:Ljava/lang/String;

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mNoInfoTextView:Landroid/widget/TextView;

.field private mProvicyText:Landroid/widget/TextView;

.field private mRayImageView:Landroid/widget/ImageView;

.field private mRayLayout:Landroid/widget/LinearLayout;

.field private mRayTextView:Landroid/widget/TextView;

.field private mRealFeelImageView:Landroid/widget/ImageView;

.field private mRealFeelLayout:Landroid/widget/LinearLayout;

.field private mRealFeelTextView:Landroid/widget/TextView;

.field private mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

.field private mRefreshTextView:Landroid/widget/TextView;

.field private mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

.field private mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

.field private mSeperature:Landroid/view/View;

.field private mShowAlarmLayout:Landroid/widget/LinearLayout;

.field private mSportImageView:Landroid/widget/ImageView;

.field private mSportLayout:Landroid/widget/LinearLayout;

.field private mSportTextView:Landroid/widget/TextView;

.field private mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

.field private mSunriseIndex:I

.field private mSunsetIndex:I

.field private mView:Landroid/view/View;

.field private mVisibilityImageView:Landroid/widget/ImageView;

.field private mVisibilityLayout:Landroid/widget/LinearLayout;

.field private mVisibilityTextView:Landroid/widget/TextView;

.field private mWeather:Lcn/nubia/weather/model/WeatherModel;

.field private mWeatherTextView:Landroid/widget/TextView;

.field private mWindImageView:Landroid/widget/ImageView;

.field private mWindLayout:Landroid/widget/LinearLayout;

.field private mWindTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 182
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isRealDay:Z

    .line 157
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    .line 158
    new-instance v0, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;

    invoke-direct {v0, p0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment$ActivityHandler;-><init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;Lcn/nubia/weather/ui/view/WeatherPageFragment$1;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 164
    iput v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunriseIndex:I

    .line 165
    iput v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunsetIndex:I

    .line 176
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 177
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 178
    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    .line 183
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 184
    return-void
.end method

.method static synthetic access$100(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setDragTextTime()V

    return-void
.end method

.method static synthetic access$200(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/view/OnScrollHelper;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Lcn/nubia/weather/model/WeatherModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/weather/ui/view/WeatherPageFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$702(Lcn/nubia/weather/ui/view/WeatherPageFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 77
    iput-boolean p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    return p1
.end method

.method static synthetic access$800(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/weather/ui/view/WeatherPageFragment;

    .prologue
    .line 77
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setGpsNotification()V

    return-void
.end method

.method private addSunRiseAndSetInfo(Ljava/util/List;Ljava/util/Date;)V
    .locals 16
    .param p2, "currentDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;",
            "Ljava/util/Date;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1211
    .local p1, "hourlyForecastModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    if-nez p1, :cond_1

    .line 1261
    :cond_0
    :goto_0
    return-void

    .line 1214
    :cond_1
    if-nez p2, :cond_2

    .line 1215
    new-instance p2, Ljava/util/Date;

    .end local p2    # "currentDate":Ljava/util/Date;
    invoke-direct/range {p2 .. p2}, Ljava/util/Date;-><init>()V

    .line 1217
    .restart local p2    # "currentDate":Ljava/util/Date;
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1218
    move-object/from16 v0, p0

    iget-object v1, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v12

    .line 1219
    .local v12, "dailyForecastDatas":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1221
    const/4 v14, 0x0

    .line 1222
    .local v14, "riseSetCount":I
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_3
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 1223
    .local v3, "dailyForecastData":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v4

    .line 1224
    .local v4, "sunRiseTime":Ljava/util/Date;
    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v9

    .line 1226
    .local v9, "sunSetTime":Ljava/util/Date;
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/TimeUtils;->getHourDiff(Ljava/util/Date;Ljava/util/Date;)I

    move-result v13

    .line 1237
    .local v13, "riseDiff":I
    move-object/from16 v0, p2

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/TimeUtils;->isTimeDiffWithinADay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1238
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_4

    .line 1239
    const/4 v6, 0x1

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v1 .. v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1241
    add-int/lit8 v14, v14, 0x1

    .line 1246
    .end local v5    # "i":I
    :cond_4
    move-object/from16 v0, p2

    invoke-static {v9, v0}, Lcn/nubia/weather/utils/TimeUtils;->isTimeDiffWithinADay(Ljava/util/Date;Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1247
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v5, v1, :cond_5

    .line 1248
    const/4 v11, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object v8, v3

    move v10, v5

    invoke-direct/range {v6 .. v11}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1250
    add-int/lit8 v14, v14, 0x1

    .line 1254
    :cond_5
    const/4 v1, 0x2

    if-ne v14, v1, :cond_3

    goto/16 :goto_0

    .line 1238
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1247
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method private addSunRiseOrSetInfo(Ljava/util/List;Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;Ljava/util/Date;IZ)Z
    .locals 10
    .param p2, "dailyForecastData"    # Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .param p3, "time"    # Ljava/util/Date;
    .param p4, "i"    # I
    .param p5, "isSunRise"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;",
            ">;",
            "Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;",
            "Ljava/util/Date;",
            "IZ)Z"
        }
    .end annotation

    .prologue
    .line 1267
    .local p1, "hourlyForecastModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    const/4 v2, 0x0

    .line 1268
    .local v2, "isAddSuccess":Z
    if-ltz p4, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, p4, :cond_1

    :cond_0
    move v3, v2

    .line 1318
    .end local v2    # "isAddSuccess":Z
    .local v3, "isAddSuccess":I
    :goto_0
    return v3

    .line 1271
    .end local v3    # "isAddSuccess":I
    .restart local v2    # "isAddSuccess":Z
    :cond_1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    if-nez v5, :cond_3

    :cond_2
    move v3, v2

    .line 1272
    .restart local v3    # "isAddSuccess":I
    goto :goto_0

    .line 1274
    .end local v3    # "isAddSuccess":I
    :cond_3
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1275
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-ltz v5, :cond_4

    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1276
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-gtz v5, :cond_4

    .line 1277
    new-instance v1, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-direct {v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;-><init>()V

    .line 1278
    .local v1, "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1279
    .local v0, "date":Ljava/util/Date;
    if-eqz p5, :cond_5

    .line 1280
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1281
    invoke-virtual {p2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunriseTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v7

    .line 1280
    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/TimeUtils;->getDetailedHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 1286
    :goto_1
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_6

    .line 1287
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    .line 1304
    :goto_2
    invoke-virtual {v1, p3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmDate(Ljava/util/Date;)V

    .line 1305
    if-eqz p5, :cond_b

    .line 1306
    const/4 v5, 0x0

    .line 1307
    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setSunRiseOrSetFlag(I)V

    .line 1308
    add-int/lit8 v5, p4, 0x1

    iput v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunriseIndex:I

    .line 1314
    :goto_3
    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1315
    const/4 v2, 0x1

    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_4
    move v3, v2

    .line 1318
    .restart local v3    # "isAddSuccess":I
    goto/16 :goto_0

    .line 1283
    .end local v3    # "isAddSuccess":I
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v1    # "hourlyForecastModel":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_5
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1284
    invoke-virtual {p2}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmSunsetTime()Ljava/util/Date;

    move-result-object v6

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v7}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v7

    .line 1283
    invoke-static {v5, v6, v7}, Lcn/nubia/weather/utils/TimeUtils;->getDetailedHourStr(Landroid/content/Context;Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    goto :goto_1

    .line 1288
    :cond_6
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v6, p4, 0x1

    if-ne v5, v6, :cond_7

    .line 1289
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1290
    :cond_7
    add-int/lit8 v5, p4, 0x1

    .line 1291
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_8

    .line 1292
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1293
    :cond_8
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_9

    .line 1294
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto :goto_2

    .line 1295
    :cond_9
    add-int/lit8 v5, p4, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    if-nez v5, :cond_a

    .line 1296
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1298
    :cond_a
    invoke-interface {p1, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    add-int/lit8 v5, p4, 0x1

    .line 1299
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 1300
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v5

    .line 1299
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    .line 1298
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1302
    .local v4, "temperature":Ljava/lang/Integer;
    invoke-virtual {v1, v4}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setmTemp(Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 1310
    .end local v4    # "temperature":Ljava/lang/Integer;
    :cond_b
    const/4 v5, 0x1

    .line 1311
    invoke-virtual {v1, v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setSunRiseOrSetFlag(I)V

    .line 1312
    add-int/lit8 v5, p4, 0x1

    iput v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunsetIndex:I

    goto/16 :goto_3
.end method

.method private adjuestViewTop8dp()V
    .locals 7

    .prologue
    .line 451
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0b019e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 453
    .local v0, "adjustTopSize":I
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    .local v1, "airTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 455
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 458
    .local v4, "weatherTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 459
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 461
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 462
    .local v3, "seperatureLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 463
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 465
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5}, Landroid/support/v7/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 466
    .local v2, "hourlyForecastRvLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v5, v0

    iput v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 467
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 469
    return-void
.end method

.method private adjustViewBottom5dp()V
    .locals 4

    .prologue
    .line 436
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01a3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 437
    .local v0, "adjustBottomSize":I
    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 438
    .local v1, "airTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 439
    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 441
    return-void
.end method

.method private adjustViewTop5dp()V
    .locals 4

    .prologue
    .line 443
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b01a6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 444
    .local v0, "adjustBottomSize":I
    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 445
    .local v1, "airTextViewLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 446
    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 448
    return-void
.end method

.method private hasNavigationBar()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1649
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/weather/app/WeatherApplication;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "cc_navi_status"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    .line 1650
    .local v0, "has":Z
    :goto_0
    return v0

    .end local v0    # "has":Z
    :cond_0
    move v0, v1

    .line 1649
    goto :goto_0
.end method

.method private initConfig()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method private initData()V
    .locals 2

    .prologue
    .line 1160
    const-string v0, "fragment initData"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1162
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    .line 1163
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1164
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunriseIndex:I

    .line 1165
    const/4 v0, -0x1

    iput v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunsetIndex:I

    .line 1166
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourIndexes:[I

    .line 1168
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1170
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setDates()V

    .line 1171
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    .line 1172
    invoke-static {v0}, Lcn/nubia/weather/utils/NetUtil;->getNetworkContectState(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1173
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initDataWithoutInfo()V

    .line 1174
    const-string v0, "WeatherPageFragment"

    const-string v1, "no network initDataWithoutInfo"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1200
    :goto_0
    return-void

    .line 1177
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v0}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1178
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initDataWithoutInfo()V

    .line 1179
    const-string v0, "WeatherPageFragment"

    const-string v1, "DataNotUpDate initDataWithoutInfo()"

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1182
    :cond_2
    :try_start_2
    iget-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    if-eqz v0, :cond_3

    .line 1183
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setGpsNotification()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    .line 1186
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1187
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1188
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityName()V

    .line 1189
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAlarmData()V

    .line 1190
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setAQIData()V

    .line 1191
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setForecastData()V

    .line 1192
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setIndexData()V

    .line 1194
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setHourfcAndObserveData()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1198
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method private initDataWithoutInfo()V
    .locals 7

    .prologue
    const v6, 0x7f0900b5

    const/4 v5, 0x4

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 472
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f09018c

    invoke-virtual {p0, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 474
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v6}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 480
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 481
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 485
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 490
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 491
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 493
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 501
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 502
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 503
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 506
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 508
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 510
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 512
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 513
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 519
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 520
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 521
    const/4 v0, -0x1

    .line 522
    .local v0, "type":I
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyHourlyForeceastView()V

    .line 523
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyDailyForeceastView()V

    .line 525
    return-void

    .line 476
    .end local v0    # "type":I
    :cond_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private initEvent()V
    .locals 2

    .prologue
    .line 1322
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1323
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1324
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1325
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1326
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1327
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1328
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mFiftyForwardLink:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1329
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTempArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1331
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1333
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1334
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLinkTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1335
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    new-instance v1, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;

    invoke-direct {v1, p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment$1;-><init>(Lcn/nubia/weather/ui/view/WeatherPageFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setStateListener(Lcn/nubia/weather/ui/view/OnScrollHelper$StateListener;)V

    .line 1371
    return-void
.end method

.method private initView(Landroid/view/View;)V
    .locals 14
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    const/4 v13, 0x1

    .line 325
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03001b

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 326
    .local v9, "alarmView":Landroid/view/View;
    const v0, 0x7f100071

    .line 327
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/JustifyTextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

    .line 328
    const v0, 0x7f100072

    .line 329
    invoke-virtual {v9, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLinkTextView:Landroid/widget/TextView;

    .line 330
    new-instance v0, Landroid/widget/PopupWindow;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0043

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    const/4 v2, -0x2

    invoke-direct {v0, v9, v1, v2}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    .line 332
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 333
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v13}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 335
    const v0, 0x7f1000a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    .line 337
    const v0, 0x7f1000b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDivideView:Landroid/view/View;

    .line 338
    const v0, 0x7f1000b5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    .line 339
    invoke-virtual {p0, v3}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 341
    const v0, 0x7f1000b9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/weather/ui/view/CircleView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    .line 344
    const v0, 0x7f1000b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    .line 345
    const v0, 0x7f1000a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    .line 347
    const v0, 0x7f1000b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 349
    .local v6, "refreshPanelLayout":Landroid/widget/LinearLayout;
    new-instance v0, Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v4, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDivideView:Landroid/view/View;

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshCircleView:Lcn/nubia/weather/ui/view/CircleView;

    iget-object v7, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    .line 351
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v8

    check-cast v8, Lcn/nubia/weather/app/WeatherApplication;

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getWeatherAnimation()Lcom/bluestareffects/app/weather/api/WeatherAnimation;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcn/nubia/weather/ui/view/OnScrollHelper;-><init>(Landroid/app/Activity;Lcn/nubia/weather/ui/view/NubiaOverScrollView;Landroid/view/View;Landroid/view/View;Lcn/nubia/weather/ui/view/CircleView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Lcom/bluestareffects/app/weather/api/WeatherAnimation;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    .line 352
    const v0, 0x7f1000ba

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    .line 357
    const v0, 0x7f1000a6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    .line 358
    const v0, 0x7f1000a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    .line 359
    const v0, 0x7f1000a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLevelIcon:Landroid/widget/ImageView;

    .line 362
    const v0, 0x7f1000a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    .line 363
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    .line 364
    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v12

    .line 365
    .local v12, "typefaceNubia":Landroid/graphics/Typeface;
    if-eqz v12, :cond_0

    .line 366
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v12}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 370
    :cond_0
    const v0, 0x7f1000a5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    .line 371
    const v0, 0x7f1000ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    .line 377
    const v0, 0x7f1000ab

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    .line 380
    const v0, 0x7f1000c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    .line 381
    const v0, 0x7f1000c9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    .line 382
    const v0, 0x7f1000cf

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    .line 383
    const v0, 0x7f1000cc

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    .line 384
    const v0, 0x7f1000c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    .line 385
    const v0, 0x7f1000d2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    .line 387
    const v0, 0x7f1000c4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    .line 388
    const v0, 0x7f1000ca

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    .line 389
    const v0, 0x7f1000d0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    .line 390
    const v0, 0x7f1000cd

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    .line 391
    const v0, 0x7f1000c7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    .line 392
    const v0, 0x7f1000d3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    .line 393
    const v0, 0x7f1000ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    .line 394
    const v0, 0x7f1000ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    .line 396
    const v0, 0x7f1000c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    .line 397
    const v0, 0x7f1000c8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    .line 398
    const v0, 0x7f1000ce

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    .line 399
    const v0, 0x7f1000cb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    .line 400
    const v0, 0x7f1000c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    .line 401
    const v0, 0x7f1000d1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    .line 403
    const v0, 0x7f1000c1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    .line 404
    const v0, 0x7f1000a0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    .line 405
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 406
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 407
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 411
    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mFiftyForwardLink:Landroid/view/View;

    .line 412
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mFiftyForwardLink:Landroid/view/View;

    const v1, 0x7f1000a2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mFiftyLinkTextView:Landroid/widget/TextView;

    .line 413
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mFiftyLinkTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setSelected(Z)V

    .line 415
    const v0, 0x7f1000aa

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTempArea:Landroid/view/View;

    .line 418
    new-instance v10, Lcn/nubia/weather/model/DeviceInfo;

    invoke-direct {v10}, Lcn/nubia/weather/model/DeviceInfo;-><init>()V

    .line 419
    .local v10, "deviceInfo":Lcn/nubia/weather/model/DeviceInfo;
    invoke-virtual {v10}, Lcn/nubia/weather/model/DeviceInfo;->getMobileModel()Ljava/lang/String;

    move-result-object v11

    .line 420
    .local v11, "mode":Ljava/lang/String;
    const v0, 0x7f1000af

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSeperature:Landroid/view/View;

    .line 421
    const-string v0, "WeatherPageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: mode : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const-string v0, "NX609"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "NX606"

    invoke-virtual {v11, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 423
    :cond_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->adjuestViewTop8dp()V

    .line 426
    :cond_2
    const v0, 0x7f1000b3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    .line 427
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 428
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->hasNavigationBar()Z

    move-result v0

    if-nez v0, :cond_3

    .line 429
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->adjustViewBottom5dp()V

    .line 434
    :goto_0
    return-void

    .line 431
    :cond_3
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->adjustViewTop5dp()V

    goto :goto_0
.end method

.method private isShow()Z
    .locals 10

    .prologue
    .line 1037
    const/4 v4, 0x1

    .line 1038
    .local v4, "result":Z
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 1039
    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v5

    if-nez v5, :cond_1

    .line 1040
    :cond_0
    const/4 v4, 0x0

    .line 1057
    :goto_0
    return v4

    .line 1042
    :cond_1
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v3

    .line 1043
    .local v3, "hourfcList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;>;"
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1044
    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    .line 1046
    :cond_3
    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;

    .line 1047
    .local v2, "hourfcInfomodel":Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/HourfcModel$HourfcInfoModel;->getmHourfcPublishTime()Ljava/util/Date;

    move-result-object v1

    .line 1048
    .local v1, "date":Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1049
    .local v0, "currentDate":Ljava/util/Date;
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v6

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_4

    .line 1050
    const/4 v4, 0x0

    goto :goto_0

    .line 1052
    :cond_4
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private setAQIData()V
    .locals 10

    .prologue
    .line 878
    const-string v5, "fragment aqi"

    invoke-static {v5}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 880
    :try_start_0
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 881
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 882
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v2

    .line 883
    .local v2, "aqiModel":Lcn/nubia/weather/model/AQIModel;
    invoke-virtual {v2}, Lcn/nubia/weather/model/AQIModel;->getmPublishTime()Ljava/util/Date;

    move-result-object v4

    .line 884
    .local v4, "publishDate":Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 886
    .local v3, "currentDate":Ljava/util/Date;
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v5}, Lcn/nubia/weather/model/WeatherModel;->getmAQI()Lcn/nubia/weather/model/AQIModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/weather/model/AQIModel;->getmAQI()F

    move-result v5

    float-to-int v0, v5

    .line 888
    .local v0, "AQI":I
    if-nez v4, :cond_2

    .line 889
    const/4 v0, -0x1

    .line 895
    :cond_0
    :goto_0
    const/4 v5, -0x1

    if-ne v0, v5, :cond_4

    .line 896
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 900
    :goto_1
    invoke-static {v0}, Lcn/nubia/weather/model/ModelHelper;->toAirQualityLevel(I)Ljava/lang/String;

    move-result-object v1

    .line 923
    .local v1, "airLevel":Ljava/lang/String;
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 927
    .end local v0    # "AQI":I
    .end local v1    # "airLevel":Ljava/lang/String;
    .end local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .end local v3    # "currentDate":Ljava/util/Date;
    .end local v4    # "publishDate":Ljava/util/Date;
    :cond_1
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 929
    return-void

    .line 890
    .restart local v0    # "AQI":I
    .restart local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .restart local v3    # "currentDate":Ljava/util/Date;
    .restart local v4    # "publishDate":Ljava/util/Date;
    :cond_2
    :try_start_1
    invoke-virtual {v4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 891
    const/4 v0, -0x1

    goto :goto_0

    .line 892
    :cond_3
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/32 v8, 0x5265c00

    cmp-long v5, v6, v8

    if-lez v5, :cond_0

    .line 893
    const/4 v0, -0x1

    goto :goto_0

    .line 898
    :cond_4
    iget-object v5, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAirTextView:Landroid/widget/TextView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 927
    .end local v0    # "AQI":I
    .end local v2    # "aqiModel":Lcn/nubia/weather/model/AQIModel;
    .end local v3    # "currentDate":Ljava/util/Date;
    .end local v4    # "publishDate":Ljava/util/Date;
    :catchall_0
    move-exception v5

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v5
.end method

.method private setAlarmData()V
    .locals 18

    .prologue
    .line 785
    const-string v14, "fragment alarm"

    invoke-static {v14}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 787
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 788
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    const/16 v15, 0x8

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 789
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v14}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v14

    if-eqz v14, :cond_6

    .line 790
    const/4 v3, 0x0

    .line 791
    .local v3, "alarmTime":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v14}, Lcn/nubia/weather/model/WeatherModel;->getmAlarm()Lcn/nubia/weather/model/AlarmModel;

    move-result-object v14

    invoke-virtual {v14}, Lcn/nubia/weather/model/AlarmModel;->getmAlarms()Ljava/util/List;

    move-result-object v4

    .line 792
    .local v4, "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    if-eqz v4, :cond_6

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-eqz v14, :cond_6

    .line 793
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v9

    .line 794
    .local v9, "len":I
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    new-array v3, v14, [Ljava/lang/String;

    .line 796
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v14

    if-ge v8, v14, :cond_0

    .line 797
    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;

    .line 798
    .local v7, "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    invoke-virtual {v7}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v3, v8

    .line 796
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 801
    .end local v7    # "f":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :cond_0
    invoke-static {v3}, Lcn/nubia/weather/model/ModelHelper;->findRecentlyAlarmIndex([Ljava/lang/String;)I

    move-result v11

    .line 802
    .local v11, "maxAlarmTimeIndex":I
    if-ltz v11, :cond_6

    if-ge v11, v9, :cond_6

    .line 803
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 804
    .local v2, "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    if-nez v2, :cond_1

    .line 873
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 875
    .end local v2    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v3    # "alarmTime":[Ljava/lang/String;
    .end local v4    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v11    # "maxAlarmTimeIndex":I
    :goto_1
    return-void

    .line 807
    .restart local v2    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .restart local v3    # "alarmTime":[Ljava/lang/String;
    .restart local v4    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v8    # "i":I
    .restart local v9    # "len":I
    .restart local v11    # "maxAlarmTimeIndex":I
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmPublishTime()Ljava/lang/String;

    move-result-object v14

    const-string v15, "yyyy-MM-dd HH:mm"

    invoke-static {v14, v15}, Lcn/nubia/weather/utils/TimeUtils;->getDateByStr(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;

    move-result-object v12

    .line 809
    .local v12, "publishDate":Ljava/util/Date;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 810
    .local v6, "currentDate":Ljava/util/Date;
    if-nez v12, :cond_2

    .line 873
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 813
    :cond_2
    :try_start_2
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v12}, Ljava/util/Date;->getTime()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 873
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 816
    :cond_3
    :try_start_3
    invoke-virtual {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmLevelName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 817
    .local v10, "level":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmClassName()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcn/nubia/weather/utils/LanguageUtil;->getAlarmType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 818
    .local v13, "type":Ljava/lang/String;
    invoke-virtual {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmContent()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    .line 819
    invoke-virtual {v2}, Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;->getmAlarmHtml()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    .line 820
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v14

    if-eqz v14, :cond_5

    .line 873
    :cond_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 824
    :cond_5
    :try_start_4
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 825
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0900b8

    .line 826
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 831
    .local v5, "builder":Landroid/text/SpannableStringBuilder;
    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLevelIcon:Landroid/widget/ImageView;

    invoke-static {v13, v10}, Lcn/nubia/weather/utils/WeatherIconUtils;->getAlarmLevelIcon(Ljava/lang/String;Ljava/lang/String;)I

    move-result v15

    invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 866
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 867
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 868
    move-object/from16 v0, p0

    iget-object v14, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v14, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 873
    .end local v2    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v3    # "alarmTime":[Ljava/lang/String;
    .end local v4    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "currentDate":Ljava/util/Date;
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v10    # "level":Ljava/lang/String;
    .end local v11    # "maxAlarmTimeIndex":I
    .end local v12    # "publishDate":Ljava/util/Date;
    .end local v13    # "type":Ljava/lang/String;
    :cond_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_1

    .line 828
    .restart local v2    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .restart local v3    # "alarmTime":[Ljava/lang/String;
    .restart local v4    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .restart local v6    # "currentDate":Ljava/util/Date;
    .restart local v8    # "i":I
    .restart local v9    # "len":I
    .restart local v10    # "level":Ljava/lang/String;
    .restart local v11    # "maxAlarmTimeIndex":I
    .restart local v12    # "publishDate":Ljava/util/Date;
    .restart local v13    # "type":Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v5, Landroid/text/SpannableStringBuilder;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const v15, 0x7f0900b8

    .line 829
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v5, v14}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .restart local v5    # "builder":Landroid/text/SpannableStringBuilder;
    goto :goto_2

    .line 873
    .end local v2    # "alarmInfo":Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;
    .end local v3    # "alarmTime":[Ljava/lang/String;
    .end local v4    # "alarms":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/AlarmModel$AlarmInfoModel;>;"
    .end local v5    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v6    # "currentDate":Ljava/util/Date;
    .end local v8    # "i":I
    .end local v9    # "len":I
    .end local v10    # "level":Ljava/lang/String;
    .end local v11    # "maxAlarmTimeIndex":I
    .end local v12    # "publishDate":Ljava/util/Date;
    .end local v13    # "type":Ljava/lang/String;
    :catchall_0
    move-exception v14

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v14
.end method

.method private setCityName()V
    .locals 4

    .prologue
    .line 624
    const-string v1, "fragment cityname"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 626
    :try_start_0
    const-string v1, "WeatherPageFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCityName . CityName is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "name":Ljava/lang/String;
    if-nez v0, :cond_0

    const-string v0, ""

    .line 630
    :goto_0
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 631
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityScrollTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 633
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 635
    return-void

    .line 629
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 633
    .end local v0    # "name":Ljava/lang/String;
    :catchall_0
    move-exception v1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v1
.end method

.method private setDates()V
    .locals 3

    .prologue
    .line 932
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 933
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v2, 0x7

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 939
    .local v1, "todayOfWeek":I
    return-void
.end method

.method private setDragTextTime()V
    .locals 14

    .prologue
    const/16 v13, 0x5a0

    const/16 v11, 0x3c

    const/4 v12, 0x0

    const/4 v10, 0x1

    .line 1375
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v6

    .line 1376
    .local v6, "updateTime":J
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmRefreshTime()J

    move-result-wide v4

    .line 1381
    .local v4, "refreshTime":J
    const-wide/16 v8, 0x0

    cmp-long v1, v4, v8

    if-nez v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 1383
    .local v2, "mDifferentTime":J
    :goto_0
    const-wide/32 v8, 0xea60

    div-long v8, v2, v8

    long-to-int v0, v8

    .line 1385
    .local v0, "mDifferentMin":I
    if-nez v0, :cond_1

    .line 1386
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    const v8, 0x7f09009a

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1399
    :goto_1
    return-void

    .line 1382
    .end local v0    # "mDifferentMin":I
    .end local v2    # "mDifferentTime":J
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    goto :goto_0

    .line 1387
    .restart local v0    # "mDifferentMin":I
    .restart local v2    # "mDifferentTime":J
    :cond_1
    if-gt v10, v0, :cond_2

    if-ge v0, v11, :cond_2

    .line 1388
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09009c

    new-array v10, v10, [Ljava/lang/Object;

    .line 1389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1388
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1390
    :cond_2
    if-gt v11, v0, :cond_3

    if-ge v0, v13, :cond_3

    .line 1391
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090099

    new-array v10, v10, [Ljava/lang/Object;

    div-int/lit8 v11, v0, 0x3c

    .line 1392
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1391
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1393
    :cond_3
    if-ge v13, v0, :cond_4

    const v1, 0x15180

    if-ge v0, v1, :cond_4

    .line 1394
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v8

    invoke-virtual {v8}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090098

    new-array v10, v10, [Ljava/lang/Object;

    div-int/lit16 v11, v0, 0x5a0

    .line 1395
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1394
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1397
    :cond_4
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRefreshTextView:Landroid/widget/TextView;

    const v8, 0x7f09009b

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method

.method private setEmptyDailyForeceastView()V
    .locals 12

    .prologue
    const/4 v11, 0x7

    .line 528
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 529
    .local v1, "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 530
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v11}, Ljava/util/Calendar;->get(I)I

    move-result v7

    .line 531
    .local v7, "todayOfWeek":I
    const/4 v6, 0x0

    .line 532
    .local v6, "time":Ljava/lang/String;
    const-string v5, ""

    .line 533
    .local v5, "temp":Ljava/lang/String;
    const-string v4, ""

    .line 534
    .local v4, "link":Ljava/lang/String;
    const-string v8, ""

    .line 535
    .local v8, "type":Ljava/lang/String;
    const/4 v3, -0x1

    .line 536
    .local v3, "icon":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v11, :cond_1

    .line 537
    if-nez v2, :cond_0

    .line 538
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0900b1

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 542
    :goto_1
    new-instance v9, Lcn/nubia/weather/model/DailyModel;

    invoke-direct {v9, v6}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 536
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 540
    :cond_0
    add-int v9, v7, v2

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Lcn/nubia/weather/utils/CalendarUtil;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 545
    :cond_1
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    if-nez v9, :cond_2

    .line 546
    new-instance v9, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;-><init>(Landroid/content/Context;)V

    iput-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 547
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 549
    :cond_2
    iget-object v9, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v9, v1}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->setData(Ljava/util/List;)V

    .line 550
    return-void
.end method

.method private setEmptyHourlyForeceastView()V
    .locals 20

    .prologue
    .line 553
    const/16 v4, 0x18

    .line 554
    .local v4, "hourSize":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 556
    .local v5, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    new-array v3, v4, [Ljava/util/Date;

    .line 558
    .local v3, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 559
    .local v16, "timeMillis":J
    new-instance v2, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 560
    .local v2, "currentDate":Ljava/util/Date;
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setMinutes(I)V

    .line 561
    const/4 v15, 0x0

    invoke-virtual {v2, v15}, Ljava/util/Date;->setSeconds(I)V

    .line 562
    const/4 v10, 0x0

    .line 563
    .local v10, "lastTimeStamp":Ljava/lang/String;
    const/4 v14, 0x0

    .line 564
    .local v14, "thisTimeStamp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v18, 0x7f0900f6

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 566
    .local v12, "now":Ljava/lang/String;
    const/4 v9, 0x0

    .line 567
    .local v9, "lastTimeHasAmPmflag":Z
    const/4 v11, 0x0

    .line 568
    .local v11, "nextDoNotTrim":Z
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v8

    .line 569
    .local v8, "isChinse":Z
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    invoke-static {v15}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v15

    if-nez v15, :cond_2

    const/4 v7, 0x1

    .line 570
    .local v7, "is12Hour":Z
    :goto_0
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_6

    .line 571
    new-instance v15, Ljava/util/Date;

    const v18, 0x36ee80

    mul-int v18, v18, v6

    move/from16 v0, v18

    int-to-long v0, v0

    move-wide/from16 v18, v0

    add-long v18, v18, v16

    move-wide/from16 v0, v18

    invoke-direct {v15, v0, v1}, Ljava/util/Date;-><init>(J)V

    aput-object v15, v3, v6

    .line 572
    aget-object v15, v3, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Date;->setMinutes(I)V

    .line 573
    aget-object v15, v3, v6

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/Date;->setSeconds(I)V

    .line 575
    aget-object v15, v3, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v15, v0}, Lcn/nubia/weather/utils/WeatherUtils;->getEmptyHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v13

    .line 577
    .local v13, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    if-nez v6, :cond_0

    .line 578
    invoke-virtual {v13, v12}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 580
    :cond_0
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getDateTime()Ljava/lang/String;

    move-result-object v14

    .line 581
    if-eqz v14, :cond_1

    if-eqz v10, :cond_1

    .line 582
    const/4 v15, 0x0

    const/16 v18, 0x2

    move/from16 v0, v18

    invoke-virtual {v14, v15, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    const/16 v18, 0x0

    const/16 v19, 0x2

    .line 583
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v18

    .line 582
    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 584
    if-eqz v11, :cond_3

    .line 585
    const/4 v11, 0x0

    .line 598
    :cond_1
    :goto_2
    move-object v10, v14

    .line 599
    invoke-interface {v5, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 569
    .end local v6    # "i":I
    .end local v7    # "is12Hour":Z
    .end local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    const/4 v7, 0x0

    goto :goto_0

    .line 587
    .restart local v6    # "i":I
    .restart local v7    # "is12Hour":Z
    .restart local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_3
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 588
    const/4 v9, 0x0

    goto :goto_2

    .line 590
    :cond_4
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    if-eqz v9, :cond_5

    .line 591
    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 592
    const/4 v9, 0x0

    .line 593
    const/4 v11, 0x1

    goto :goto_2

    .line 595
    :cond_5
    const/4 v9, 0x1

    goto :goto_2

    .line 601
    .end local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    if-nez v15, :cond_7

    .line 602
    new-instance v15, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v15, v0, v5}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 604
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 608
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setTimeZoneName(Ljava/lang/String;)V

    .line 609
    return-void

    .line 606
    :cond_7
    move-object/from16 v0, p0

    iget-object v15, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    invoke-virtual {v15, v5}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setData(Ljava/util/List;)V

    goto :goto_3
.end method

.method private setForecastData()V
    .locals 26

    .prologue
    .line 942
    const-string v4, "fragment forecast"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 944
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 946
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    const/16 v24, 0x8

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 947
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v4}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/model/Forecast5dModel;->getmForecasts()Ljava/util/List;

    move-result-object v16

    .line 948
    .local v16, "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    if-eqz v16, :cond_9

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    .line 949
    new-instance v12, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v24

    move-wide/from16 v0, v24

    invoke-direct {v12, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 952
    .local v12, "currentDate":Ljava/util/Date;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-static {v12, v4}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v13

    .line 954
    .local v13, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v21

    .line 955
    .local v21, "todayLowHigh":Ljava/lang/String;
    if-eqz v21, :cond_0

    .line 956
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 957
    const-string v4, " / "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 958
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090089

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 960
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 974
    :cond_0
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 975
    .local v22, "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    if-eqz v22, :cond_1

    .line 976
    invoke-virtual/range {v22 .. v22}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmLink()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDayLink:Ljava/lang/String;

    .line 979
    :cond_1
    invoke-virtual {v13}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTodayFcIndex()I

    move-result v20

    .line 980
    .local v20, "todayIndex":I
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 981
    .local v14, "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 982
    .local v11, "calendar":Ljava/util/Calendar;
    const/4 v4, 0x7

    invoke-virtual {v11, v4}, Ljava/util/Calendar;->get(I)I

    move-result v23

    .line 983
    .local v23, "todayOfWeek":I
    const/4 v5, 0x0

    .line 984
    .local v5, "time":Ljava/lang/String;
    const-string v7, ""

    .line 985
    .local v7, "temp":Ljava/lang/String;
    const-string v8, ""

    .line 986
    .local v8, "link":Ljava/lang/String;
    const-string v6, ""

    .line 987
    .local v6, "type":Ljava/lang/String;
    const/4 v9, -0x1

    .line 988
    .local v9, "icon":I
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_1
    const/4 v4, 0x7

    move/from16 v0, v17

    if-ge v0, v4, :cond_7

    .line 989
    if-nez v17, :cond_4

    .line 990
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v24, 0x7f0900b1

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 994
    :goto_2
    add-int v4, v20, v17

    add-int/lit8 v18, v4, 0x1

    .line 995
    .local v18, "index":I
    if-ltz v18, :cond_6

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v18

    if-ge v0, v4, :cond_6

    .line 996
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;

    .line 997
    .local v19, "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 999
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 1000
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    .line 1001
    :cond_2
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1002
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f090089

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1003
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1012
    :goto_3
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v24, 0x0

    .line 1011
    move/from16 v0, v24

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherIcon(IZ)I

    move-result v9

    .line 1013
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmLink()Ljava/lang/String;

    move-result-object v8

    .line 1014
    new-instance v4, Lcn/nubia/weather/model/DailyModel;

    invoke-direct/range {v4 .. v9}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 988
    .end local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :goto_4
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    .line 963
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "icon":I
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .end local v17    # "i":I
    .end local v18    # "index":I
    .end local v20    # "todayIndex":I
    .end local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v23    # "todayOfWeek":I
    :cond_3
    new-instance v10, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v21

    invoke-direct {v10, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 964
    .local v10, "builder":Landroid/text/SpannableStringBuilder;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v24, 0x7f0c0062

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    .line 965
    .local v15, "darkColor":I
    const-string v4, " / "

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v18

    .line 966
    .restart local v18    # "index":I
    if-ltz v18, :cond_0

    .line 967
    new-instance v4, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v4, v15}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/16 v24, 0x0

    const/16 v25, 0x22

    move/from16 v0, v24

    move/from16 v1, v18

    move/from16 v2, v25

    invoke-virtual {v10, v4, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 970
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeatherTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_0

    .line 1032
    .end local v10    # "builder":Landroid/text/SpannableStringBuilder;
    .end local v12    # "currentDate":Ljava/util/Date;
    .end local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v15    # "darkColor":I
    .end local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v18    # "index":I
    .end local v21    # "todayLowHigh":Ljava/lang/String;
    :catchall_0
    move-exception v4

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v4

    .line 992
    .restart local v5    # "time":Ljava/lang/String;
    .restart local v6    # "type":Ljava/lang/String;
    .restart local v7    # "temp":Ljava/lang/String;
    .restart local v8    # "link":Ljava/lang/String;
    .restart local v9    # "icon":I
    .restart local v11    # "calendar":Ljava/util/Calendar;
    .restart local v12    # "currentDate":Ljava/util/Date;
    .restart local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .restart local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .restart local v17    # "i":I
    .restart local v20    # "todayIndex":I
    .restart local v21    # "todayLowHigh":Ljava/lang/String;
    .restart local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .restart local v23    # "todayOfWeek":I
    :cond_4
    add-int v4, v23, v17

    add-int/lit8 v4, v4, 0x1

    :try_start_1
    invoke-static {v4}, Lcn/nubia/weather/utils/CalendarUtil;->getDayOfWeek(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_2

    .line 1006
    .restart local v18    # "index":I
    .restart local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_5
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeWeather()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/nubia/weather/model/ModelHelper;->getWeatherTypeStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1007
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmDaytimeTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, " / "

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1008
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;->getmNightTemperature()Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Float;->intValue()I

    move-result v24

    move/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v24, "\u00b0"

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_3

    .line 1016
    .end local v19    # "model":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    :cond_6
    new-instance v4, Lcn/nubia/weather/model/DailyModel;

    invoke-direct {v4, v5}, Lcn/nubia/weather/model/DailyModel;-><init>(Ljava/lang/String;)V

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1020
    .end local v18    # "index":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    if-nez v4, :cond_8

    .line 1021
    new-instance v4, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-direct {v4, v0}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iput-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    .line 1022
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastLv:Landroid/widget/ListView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1024
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mDailyForecastAdapter:Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;

    invoke-virtual {v4, v14}, Lcn/nubia/weather/ui/adapter/DailyForecastAdapter;->setData(Ljava/util/List;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1032
    .end local v5    # "time":Ljava/lang/String;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "temp":Ljava/lang/String;
    .end local v8    # "link":Ljava/lang/String;
    .end local v9    # "icon":I
    .end local v11    # "calendar":Ljava/util/Calendar;
    .end local v12    # "currentDate":Ljava/util/Date;
    .end local v13    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v14    # "dailyModels":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/DailyModel;>;"
    .end local v16    # "forecast":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;>;"
    .end local v17    # "i":I
    .end local v20    # "todayIndex":I
    .end local v21    # "todayLowHigh":Ljava/lang/String;
    .end local v22    # "todayModel":Lcn/nubia/weather/model/Forecast5dModel$Forecast1dModel;
    .end local v23    # "todayOfWeek":I
    :cond_9
    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1034
    return-void

    .line 1028
    :cond_a
    :try_start_2
    const-string v4, "WeatherPageFragment"

    const-string v24, "setForecastData setEmptyDailyForeceastView"

    move-object/from16 v0, v24

    invoke-static {v4, v0}, Lcn/nubia/weather/utils/ZLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1029
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyDailyForeceastView()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_5
.end method

.method private setGpsNotification()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 612
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 613
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 614
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090136

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 615
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090137

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 616
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCheckNewTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 617
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mNoInfoTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 621
    :cond_0
    return-void
.end method

.method private setHourfcAndObserveData()V
    .locals 30

    .prologue
    .line 638
    const-string v27, "fragment houfcOberve"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 640
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, "--"

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 643
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v27

    if-eqz v27, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v27

    if-eqz v27, :cond_e

    .line 646
    const/16 v8, 0x18

    .line 647
    .local v8, "hourSize":I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 649
    .local v9, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    const/4 v14, 0x0

    .line 650
    .local v14, "lastTimeStamp":Ljava/lang/String;
    const/16 v21, 0x0

    .line 651
    .local v21, "thisTimeStamp":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0900f6

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 652
    .local v16, "now":Ljava/lang/String;
    new-array v7, v8, [Ljava/util/Date;

    .line 653
    .local v7, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    .line 654
    .local v22, "timeMillis":J
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v22

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 657
    .local v4, "currentDate":Ljava/util/Date;
    const-string v27, "fragment create hourlist"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 659
    const/4 v13, 0x0

    .line 660
    .local v13, "lastTimeHasAmPmflag":Z
    const/4 v15, 0x0

    .line 661
    .local v15, "nextDoNotTrim":Z
    :try_start_1
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v12

    .line 662
    .local v12, "isChinse":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v27

    if-nez v27, :cond_3

    const/4 v11, 0x1

    .line 663
    .local v11, "is12Hour":Z
    :goto_0
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_1
    if-ge v10, v8, :cond_8

    .line 664
    new-instance v27, Ljava/util/Date;

    const v28, 0x36ee80

    mul-int v28, v28, v10

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v28, v28, v22

    invoke-direct/range {v27 .. v29}, Ljava/util/Date;-><init>(J)V

    aput-object v27, v7, v10

    .line 665
    if-eqz v10, :cond_0

    .line 666
    aget-object v27, v7, v10

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Date;->setMinutes(I)V

    .line 667
    aget-object v27, v7, v10

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Ljava/util/Date;->setSeconds(I)V

    .line 669
    :cond_0
    const/16 v19, 0x0

    .line 670
    .local v19, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const-string v27, "fragment create hour"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 672
    if-nez v10, :cond_4

    .line 673
    :try_start_2
    aget-object v27, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v19

    .line 675
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 681
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 683
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getDateTime()Ljava/lang/String;

    move-result-object v21

    .line 684
    if-eqz v21, :cond_1

    if-eqz v14, :cond_1

    .line 685
    const/16 v27, 0x0

    const/16 v28, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v27

    const/16 v28, 0x0

    const/16 v29, 0x2

    .line 686
    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v14, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v28

    .line 685
    invoke-virtual/range {v27 .. v28}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 687
    if-eqz v15, :cond_5

    .line 688
    const/4 v15, 0x0

    .line 701
    :cond_1
    :goto_3
    move-object/from16 v14, v21

    .line 702
    move-object/from16 v0, v19

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_2

    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_2

    .line 705
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v26

    .line 706
    .local v26, "weatherType":I
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v6

    .line 707
    .local v6, "date":Ljava/util/Date;
    invoke-virtual/range {v19 .. v19}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v18

    .line 708
    .local v18, "temp":Ljava/lang/Integer;
    if-nez v18, :cond_2

    .line 663
    .end local v6    # "date":Ljava/util/Date;
    .end local v18    # "temp":Ljava/lang/Integer;
    .end local v26    # "weatherType":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    .line 662
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 677
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_4
    :try_start_4
    aget-object v27, v7, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/WeatherUtils;->getSimpleHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v19

    goto :goto_2

    .line 681
    :catchall_0
    move-exception v27

    :try_start_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 714
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :catchall_1
    move-exception v27

    :try_start_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 780
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    :catchall_2
    move-exception v27

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27

    .line 690
    .restart local v4    # "currentDate":Ljava/util/Date;
    .restart local v7    # "hourDates":[Ljava/util/Date;
    .restart local v8    # "hourSize":I
    .restart local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v12    # "isChinse":Z
    .restart local v13    # "lastTimeHasAmPmflag":Z
    .restart local v14    # "lastTimeStamp":Ljava/lang/String;
    .restart local v15    # "nextDoNotTrim":Z
    .restart local v16    # "now":Ljava/lang/String;
    .restart local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v21    # "thisTimeStamp":Ljava/lang/String;
    .restart local v22    # "timeMillis":J
    :cond_5
    const/16 v27, 0x2

    :try_start_7
    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V

    .line 691
    const/4 v13, 0x0

    goto :goto_3

    .line 693
    :cond_6
    if-eqz v11, :cond_7

    if-eqz v12, :cond_7

    if-eqz v13, :cond_7

    .line 694
    const/16 v27, 0x2

    move-object/from16 v0, v21

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v19

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->setDateTime(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 695
    const/4 v13, 0x0

    .line 696
    const/4 v15, 0x1

    goto :goto_3

    .line 698
    :cond_7
    const/4 v13, 0x1

    goto :goto_3

    .line 714
    .end local v19    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 716
    const/4 v5, 0x0

    .line 717
    .local v5, "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    if-eqz v9, :cond_9

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v27

    if-lez v27, :cond_9

    .line 718
    const/16 v27, 0x0

    move/from16 v0, v27

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    check-cast v5, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    .line 720
    .restart local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_9
    const-string v27, "fragment addSunRiseAndSetInfo"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 722
    :try_start_9
    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addSunRiseAndSetInfo(Ljava/util/List;Ljava/util/Date;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 724
    :try_start_a
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 726
    const-string v27, "fragment fill mHourlyForecastAdapter"

    invoke-static/range {v27 .. v27}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 728
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    if-nez v27, :cond_c

    .line 729
    new-instance v27, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mContext:Landroid/content/Context;

    move-object/from16 v28, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-direct {v0, v1, v9}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    .line 731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 735
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setTimeZoneName(Ljava/lang/String;)V

    .line 736
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunriseIndex:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSunsetIndex:I

    move/from16 v29, v0

    invoke-virtual/range {v27 .. v29}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setSunRiseSunSet(II)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    .line 738
    :try_start_c
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 741
    if-eqz v5, :cond_b

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    if-eqz v27, :cond_b

    .line 742
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v28

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;Z)V

    .line 743
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 744
    .local v20, "tempStr":Ljava/lang/String;
    const-string v17, "1"

    .line 745
    .local v17, "suffixOne":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v27

    .line 746
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/app/WeatherApplication;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v24

    .line 747
    .local v24, "typefaceNubia":Landroid/graphics/Typeface;
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v27

    .line 748
    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/app/WeatherApplication;->getmTypefaceOrigin()Landroid/graphics/Typeface;

    move-result-object v25

    .line 749
    .local v25, "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    if-eqz v20, :cond_d

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_d

    if-eqz v25, :cond_d

    .line 751
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 756
    :cond_a
    :goto_5
    const-string v27, "WeatherPageFragment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mCurrentTemperatureTextView "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    const-string v27, "WeatherPageFragment"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " mType : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v29

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    .line 760
    invoke-virtual {v5}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Integer;->intValue()I

    move-result v28

    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWeatherState(I)Ljava/lang/String;

    move-result-object v28

    .line 759
    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setVisibility(I)V

    .line 762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    .line 780
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v17    # "suffixOne":Ljava/lang/String;
    .end local v20    # "tempStr":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    .end local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .end local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_b
    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 782
    return-void

    .line 724
    .restart local v4    # "currentDate":Ljava/util/Date;
    .restart local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .restart local v7    # "hourDates":[Ljava/util/Date;
    .restart local v8    # "hourSize":I
    .restart local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .restart local v10    # "i":I
    .restart local v11    # "is12Hour":Z
    .restart local v12    # "isChinse":Z
    .restart local v13    # "lastTimeHasAmPmflag":Z
    .restart local v14    # "lastTimeStamp":Ljava/lang/String;
    .restart local v15    # "nextDoNotTrim":Z
    .restart local v16    # "now":Ljava/lang/String;
    .restart local v21    # "thisTimeStamp":Ljava/lang/String;
    .restart local v22    # "timeMillis":J
    :catchall_3
    move-exception v27

    :try_start_d
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    .line 733
    :cond_c
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastAdapter:Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcn/nubia/weather/ui/adapter/HourlyForecastAdapter;->setData(Ljava/util/List;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/16 :goto_4

    .line 738
    :catchall_4
    move-exception v27

    :try_start_f
    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v27

    .line 752
    .restart local v17    # "suffixOne":Ljava/lang/String;
    .restart local v20    # "tempStr":Ljava/lang/String;
    .restart local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .restart local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_d
    if-eqz v24, :cond_a

    .line 753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto/16 :goto_5

    .line 768
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v5    # "currentTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    .end local v7    # "hourDates":[Ljava/util/Date;
    .end local v8    # "hourSize":I
    .end local v9    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v10    # "i":I
    .end local v11    # "is12Hour":Z
    .end local v12    # "isChinse":Z
    .end local v13    # "lastTimeHasAmPmflag":Z
    .end local v14    # "lastTimeStamp":Ljava/lang/String;
    .end local v15    # "nextDoNotTrim":Z
    .end local v16    # "now":Ljava/lang/String;
    .end local v17    # "suffixOne":Ljava/lang/String;
    .end local v20    # "tempStr":Ljava/lang/String;
    .end local v21    # "thisTimeStamp":Ljava/lang/String;
    .end local v22    # "timeMillis":J
    .end local v24    # "typefaceNubia":Landroid/graphics/Typeface;
    .end local v25    # "typefaceNubiaOrigin":Landroid/graphics/Typeface;
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setEmptyHourlyForeceastView()V

    .line 769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v27

    if-eqz v27, :cond_f

    .line 770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/ObserveModel;->getmTemperature()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    move-object/from16 v28, v0

    .line 772
    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Lcn/nubia/weather/model/ObserveModel;->getmWeather()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/ParseUtil;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 771
    invoke-static/range {v28 .. v28}, Lcn/nubia/weather/utils/WeatherStateUtils;->getWeatherState(I)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_6

    .line 774
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentTemperatureTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, "--"

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCurrentWeatherTextView:Landroid/widget/TextView;

    move-object/from16 v27, v0

    const-string v28, ""

    invoke-virtual/range {v27 .. v28}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    goto/16 :goto_6
.end method

.method private setIndexData()V
    .locals 13

    .prologue
    .line 1061
    const-string v10, "fragment setIndexData"

    invoke-static {v10}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1063
    :try_start_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1064
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1065
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1066
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1067
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1068
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1070
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1071
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1072
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1073
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1074
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1075
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1077
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isShow()Z

    move-result v5

    .line 1078
    .local v5, "isShow":Z
    const/4 v4, 0x1

    .line 1079
    .local v4, "isIndicesClickable":Z
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900ea

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1080
    .local v0, "humid":Ljava/lang/String;
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    if-eqz v10, :cond_0

    if-eqz v5, :cond_0

    .line 1081
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1082
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1083
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmBodyTemperature()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getRealFeelLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1086
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1087
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getmVisibility()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getVisibilityLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1089
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1090
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1091
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityTextView:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 1092
    invoke-virtual {v12}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v12

    invoke-virtual {v12}, Lcn/nubia/weather/model/ObserveModel;->getmHumidity()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1094
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1095
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1096
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayTextView:Landroid/widget/TextView;

    iget-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v11}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v11

    invoke-virtual {v11}, Lcn/nubia/weather/model/ObserveModel;->getUVIndex()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcn/nubia/weather/utils/LanguageUtil;->getRayLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1097
    const/4 v9, 0x0

    .line 1098
    .local v9, "windDirection":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/utils/LanguageUtil;->isChinese()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1099
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getmWindDirection()Ljava/lang/String;

    move-result-object v9

    .line 1104
    :goto_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHumidityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1105
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1106
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1107
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1108
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1109
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v10, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1110
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getmWindPower()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcn/nubia/weather/model/ModelHelper;->getWindString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1112
    .local v8, "wind":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 1113
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1114
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1115
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWindTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    .end local v8    # "wind":Ljava/lang/String;
    .end local v9    # "windDirection":Ljava/lang/String;
    :cond_0
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v10

    if-eqz v10, :cond_6

    if-eqz v5, :cond_6

    .line 1119
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmIndex()Lcn/nubia/weather/model/IndexModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/IndexModel;->getmIndexes()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 1120
    .local v2, "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    if-nez v2, :cond_2

    .line 1147
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 1149
    .end local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :goto_1
    return-void

    .line 1101
    .restart local v9    # "windDirection":Ljava/lang/String;
    :cond_1
    :try_start_1
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/nubia/weather/model/ObserveModel;->getWindDirectionEn()Ljava/lang/String;

    move-result-object v9

    goto :goto_0

    .line 1124
    .end local v9    # "windDirection":Ljava/lang/String;
    .restart local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_3

    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 1125
    const/4 v10, 0x0

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    invoke-virtual {v10}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getIndexLink()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1127
    :cond_3
    const/4 v6, 0x0

    .line 1128
    .local v6, "sportDes":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;

    .line 1129
    .local v1, "indexInfo":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getmIndexAbbr()Ljava/lang/String;

    move-result-object v7

    .line 1130
    .local v7, "type":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getmIndexlevel()Ljava/lang/String;

    move-result-object v3

    .line 1131
    .local v3, "info":Ljava/lang/String;
    invoke-virtual {v1}, Lcn/nubia/weather/model/IndexModel$IndexInfoModel;->getIndexLink()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    .line 1133
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    const-string v11, "29"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1134
    invoke-static {v3}, Lcn/nubia/weather/utils/LanguageUtil;->getSportLevel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1135
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1136
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportImageView:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1137
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1138
    iget-object v10, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1147
    .end local v1    # "indexInfo":Lcn/nubia/weather/model/IndexModel$IndexInfoModel;
    .end local v2    # "indexInfos":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/model/IndexModel$IndexInfoModel;>;"
    .end local v3    # "info":Ljava/lang/String;
    .end local v6    # "sportDes":Ljava/lang/String;
    .end local v7    # "type":Ljava/lang/String;
    :cond_5
    :goto_2
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_1

    .line 1144
    :cond_6
    const/4 v10, 0x0

    :try_start_2
    invoke-direct {p0, v10}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setIndicesClickable(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 1147
    .end local v0    # "humid":Ljava/lang/String;
    .end local v4    # "isIndicesClickable":Z
    .end local v5    # "isShow":Z
    :catchall_0
    move-exception v10

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v10
.end method

.method private setIndicesClickable(Z)V
    .locals 3
    .param p1, "isIndicesClickable"    # Z

    .prologue
    .line 1152
    const-string v0, "WeatherPageFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIndicesClickable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1153
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1154
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mVisibilityLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1155
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mRealFeelLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1156
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mSportLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 1157
    return-void
.end method


# virtual methods
.method public addHandler()V
    .locals 2

    .prologue
    .line 1429
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 1430
    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->addActivityHandler(Landroid/os/Handler;)V

    .line 1431
    return-void
.end method

.method public getWeatherModel()Lcn/nubia/weather/model/WeatherModel;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    return-object v0
.end method

.method public getmProvicyText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1646
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mProvicyText:Landroid/widget/TextView;

    return-object v0
.end method

.method public hideNotificationDetail()V
    .locals 1

    .prologue
    .line 1641
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1642
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 1644
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 204
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 205
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1545
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 1546
    .local v0, "areaId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1547
    .local v2, "linkType":Ljava/lang/String;
    new-instance v1, Lcn/nubia/weather/utils/LinkUtils;

    invoke-direct {v1, v0}, Lcn/nubia/weather/utils/LinkUtils;-><init>(Ljava/lang/String;)V

    .line 1548
    .local v1, "linkHelper":Lcn/nubia/weather/utils/LinkUtils;
    const-string v3, "WeatherPageFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick: view : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1549
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1624
    :cond_0
    :goto_0
    invoke-static {v2}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    .line 1625
    return-void

    .line 1551
    :sswitch_0
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 1552
    const-string v2, "ALERT"

    .line 1555
    :sswitch_1
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->showNotificationDetail()V

    goto :goto_0

    .line 1559
    :sswitch_2
    invoke-virtual {v1}, Lcn/nubia/weather/utils/LinkUtils;->startAirLink()V

    .line 1560
    const-string v2, "AIR"

    .line 1561
    goto :goto_0

    .line 1563
    :sswitch_3
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mIndexLink:Ljava/lang/String;

    invoke-virtual {v1, v3, v6}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;Z)V

    .line 1564
    const-string v2, "INDEX"

    .line 1565
    goto :goto_0

    .line 1567
    :sswitch_4
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1568
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "uv"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1570
    const-string v2, "INDEX"

    goto :goto_0

    .line 1574
    :sswitch_5
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1575
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "visibility"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1577
    const-string v2, "INDEX"

    goto :goto_0

    .line 1581
    :sswitch_6
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1582
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "RealFeel"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1584
    const-string v2, "INDEX"

    goto :goto_0

    .line 1588
    :sswitch_7
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1589
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "humidity"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1591
    const-string v2, "INDEX"

    goto/16 :goto_0

    .line 1595
    :sswitch_8
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1596
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    const-string v4, "wind"

    invoke-virtual {v1, v3, v4}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1598
    const-string v2, "INDEX"

    goto/16 :goto_0

    .line 1602
    :sswitch_9
    const-string v3, "WeatherPageFragment"

    const-string v4, " fifty_weather_link "

    invoke-static {v3, v4}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1603
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1604
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmForecast5d()Lcn/nubia/weather/model/Forecast5dModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/Forecast5dModel;->getMobileLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1605
    const-string v2, "FIFTY_FORECAST"

    goto/16 :goto_0

    .line 1609
    :sswitch_a
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1610
    iget-object v3, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v3}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/model/ObserveModel;->getmLink()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v7}, Lcn/nubia/weather/utils/LinkUtils;->startLinkWithAnchor(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    const-string v3, "CURRENT_TEMP"

    invoke-static {v3}, Lcn/nubia/weather/utils/ReYunUtils;->onLaunchBrowser(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1618
    :sswitch_b
    const-string v3, "https://account.nubia.com/res/html/weather_privacy.html"

    invoke-virtual {v1, v3}, Lcn/nubia/weather/utils/LinkUtils;->startViewLink(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1549
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f100072 -> :sswitch_0
        0x7f1000a1 -> :sswitch_9
        0x7f1000a6 -> :sswitch_1
        0x7f1000aa -> :sswitch_a
        0x7f1000ab -> :sswitch_2
        0x7f1000b3 -> :sswitch_b
        0x7f1000c2 -> :sswitch_4
        0x7f1000c5 -> :sswitch_6
        0x7f1000c8 -> :sswitch_7
        0x7f1000cb -> :sswitch_5
        0x7f1000ce -> :sswitch_8
        0x7f1000d1 -> :sswitch_3
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 211
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 212
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 213
    .local v0, "args":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 214
    const-string v1, "weather"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/model/WeatherModel;

    iput-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->addHandler()V

    .line 217
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 227
    const-string v0, "fragment onCreateView"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 230
    const v0, 0x7f030024

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    .line 231
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-nez v0, :cond_0

    .line 232
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-static {}, Landroid/os/Trace;->endSection()V

    :goto_0
    return-object v0

    .line 235
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initConfig()V

    .line 236
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initView(Landroid/view/View;)V

    .line 237
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initData()V

    .line 238
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initEvent()V

    .line 240
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 242
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 310
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 311
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 301
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 305
    return-void
.end method

.method public onDetach()V
    .locals 0

    .prologue
    .line 316
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDetach()V

    .line 317
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 288
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->hideNotificationDetail()V

    .line 289
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 290
    return-void
.end method

.method public onRefreshCurrentItem(Lcn/nubia/weather/ui/view/OnScrollHelper;)V
    .locals 4
    .param p1, "onScrollHelper"    # Lcn/nubia/weather/ui/view/OnScrollHelper;

    .prologue
    .line 1402
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v1}, Lcn/nubia/weather/model/WeatherModel;->getmType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1403
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    instance-of v1, v1, Lcn/nubia/weather/ui/activity/HomeActivity;

    if-eqz v1, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcn/nubia/weather/ui/activity/HomeActivity;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/activity/HomeActivity;->getWeatherPermissionInspector()Lcn/nubia/weather/permission/WeatherPermissionInspector;

    move-result-object v0

    .line 1405
    .local v0, "permissionInspector":Lcn/nubia/weather/permission/WeatherPermissionInspector;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcn/nubia/weather/permission/WeatherPermissionInspector;->PERMISSION:[Ljava/lang/String;

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/weather/permission/WeatherPermissionInspector;->isPerssionGranted(Landroid/content/Context;[Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    .line 1407
    invoke-virtual {v1, v2, v3}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    .line 1414
    .end local v0    # "permissionInspector":Lcn/nubia/weather/permission/WeatherPermissionInspector;
    :cond_0
    :goto_0
    return-void

    .line 1411
    :cond_1
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    sget-object v3, Lcn/nubia/weather/app/Constant$OperationType;->PULL:Lcn/nubia/weather/app/Constant$OperationType;

    .line 1412
    invoke-virtual {v1, v2, v3}, Lcn/nubia/weather/presenter/OverAllControl;->refreshWeatherData(Lcn/nubia/weather/model/WeatherModel;Lcn/nubia/weather/app/Constant$OperationType;)Z

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 265
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 266
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 222
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 223
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 259
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 260
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 295
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 296
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 247
    const-string v0, "fresh"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 249
    :try_start_0
    invoke-direct {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->initData()V

    .line 250
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 252
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 254
    return-void

    .line 252
    :catchall_0
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    throw v0
.end method

.method public removeHandler()V
    .locals 2

    .prologue
    .line 1434
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/weather/presenter/OverAllControl;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/presenter/OverAllControl;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHandler:Landroid/os/Handler;

    .line 1435
    invoke-virtual {v0, v1}, Lcn/nubia/weather/presenter/OverAllControl;->removeActivityHandler(Landroid/os/Handler;)V

    .line 1436
    return-void
.end method

.method public resetAnimAlpha()V
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 270
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setAnimAlpha(I)V

    .line 274
    :cond_0
    return-void
.end method

.method public resetHourlyForecast()V
    .locals 3

    .prologue
    .line 1516
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz v1, :cond_0

    .line 1517
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    move-result v0

    .line 1519
    .local v0, "topVisible":I
    if-eqz v0, :cond_0

    .line 1522
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mHourlyForecastRv:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 1525
    .end local v0    # "topVisible":I
    :cond_0
    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 277
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->getScrollY()I

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0, v1, v1}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->scrollTo(II)V

    .line 282
    :cond_0
    return-void
.end method

.method public setAnimationListener(Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;)V
    .locals 0
    .param p1, "callback"    # Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    .prologue
    .line 1425
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mStopCallBack:Lcn/nubia/weather/ui/adapter/WeatherPageAdapter$IAnimationStopCallBack;

    .line 1426
    return-void
.end method

.method public setCityBarColor(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/Integer;

    .prologue
    .line 1540
    const/4 v0, 0x0

    invoke-static {}, Lcn/nubia/weather/utils/CalendarUtil;->isPhoneTimeNight()Z

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->setCityBarColor(Ljava/lang/Integer;Z)V

    .line 1541
    return-void
.end method

.method public setCityBarColor(Ljava/lang/Integer;Z)V
    .locals 3
    .param p1, "type"    # Ljava/lang/Integer;
    .param p2, "isNight"    # Z

    .prologue
    .line 1528
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    .line 1529
    if-nez p1, :cond_0

    .line 1530
    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1532
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1, p2}, Lcn/nubia/weather/utils/WeatherStateUtils;->getAnimationBgDrawable(IZ)I

    move-result v0

    .line 1533
    .local v0, "bgDrawableId":I
    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mCityBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1538
    .end local v0    # "bgDrawableId":I
    :cond_1
    return-void
.end method

.method public setFragmentAtTop()V
    .locals 2

    .prologue
    .line 1508
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    if-eqz v0, :cond_0

    .line 1509
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setNeedChangeAnimAlpha(Z)V

    .line 1510
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollView:Lcn/nubia/weather/ui/view/NubiaOverScrollView;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/NubiaOverScrollView;->setAtTop()V

    .line 1511
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/OnScrollHelper;->setNeedChangeAnimAlpha(Z)V

    .line 1513
    :cond_0
    return-void
.end method

.method public setWeatherModel(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 1
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 189
    iput-object p1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    .line 190
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    if-nez v0, :cond_1

    .line 195
    :cond_0
    :goto_0
    return-void

    .line 192
    :cond_1
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mWeather:Lcn/nubia/weather/model/WeatherModel;

    invoke-virtual {v0}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->isGpsNeeded:Z

    goto :goto_0
.end method

.method public showNotificationDetail()V
    .locals 5

    .prologue
    .line 1628
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarm:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1629
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->scrollToTop()V

    .line 1630
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetailTextView:Lcn/nubia/weather/ui/view/JustifyTextView;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmDetail:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/weather/ui/view/JustifyTextView;->setText(Ljava/lang/CharSequence;)V

    .line 1631
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mAlarmPPWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mShowAlarmLayout:Landroid/widget/LinearLayout;

    .line 1632
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0044

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 1633
    invoke-virtual {p0}, Lcn/nubia/weather/ui/view/WeatherPageFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0045

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    .line 1631
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 1635
    :cond_0
    return-void
.end method

.method public stopAnimation()Z
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->isRefreshing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1418
    iget-object v0, p0, Lcn/nubia/weather/ui/view/WeatherPageFragment;->mScrollHelper:Lcn/nubia/weather/ui/view/OnScrollHelper;

    invoke-virtual {v0}, Lcn/nubia/weather/ui/view/OnScrollHelper;->stopRefreshAnimation()V

    .line 1419
    const/4 v0, 0x1

    .line 1421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
