.class public Lcn/nubia/weather/ui/widget/WidgetDataCache;
.super Ljava/lang/Object;
.source "WidgetDataCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;
    }
.end annotation


# static fields
.field public static final ACTION_WIDGET:Ljava/lang/String; = "android.intent.action.WIDGET"

.field private static final DEFAULT_WALLPAPER_GRAY_COLOR:Ljava/lang/String; = "default_wallpaper_gray_color"

.field public static final GRAY_MID_VALUE:I = 0xbe

.field private static INDEX:I = 0x0

.field public static final TAG:Ljava/lang/String; = "WidgetDataCache"

.field private static mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;


# instance fields
.field public mAlarmLevel:Ljava/lang/String;

.field public mAlarmTime:Ljava/lang/String;

.field public mAlarmType:Ljava/lang/String;

.field public mCity:Ljava/lang/String;

.field public mCurrentTemp:Ljava/lang/String;

.field public mDayTemp:Ljava/lang/String;

.field public mDayType:Ljava/lang/String;

.field public mGmtOffset:Ljava/lang/String;

.field public mHightLowTemp:Ljava/lang/String;

.field public mHourWeatherIcon:[I

.field public mIsNight:Z

.field private mLastTAG:Ljava/lang/String;

.field public mNextSunRiseSet:Ljava/util/Date;

.field public mNightTemp:Ljava/lang/String;

.field public mNightType:Ljava/lang/String;

.field public mSixDates:[Ljava/util/Date;

.field public mTempArray:[Ljava/lang/Integer;

.field public mWeatherType:Ljava/lang/String;

.field public mWindDirectionType:Ljava/lang/String;

.field public mWindForce:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    sput v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->INDEX:I

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 45
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 46
    const-string v1, "--/--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 47
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 48
    const-string v1, "--/--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 49
    const-string v1, "--/--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 50
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 51
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 52
    const-string v1, "--"

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 53
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 54
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 55
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 56
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 57
    iput-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 58
    iput-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 59
    iput-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 60
    iput-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 61
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 62
    iput-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    .line 66
    const-string v1, ""

    iput-object v1, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 73
    :try_start_0
    invoke-static {}, Lcn/nubia/weather/app/WeatherApplication;->getInstance()Lcn/nubia/weather/app/WeatherApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/weather/app/WeatherApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataSync(Landroid/content/Context;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static declared-synchronized getInstance()Lcn/nubia/weather/ui/widget/WidgetDataCache;
    .locals 2

    .prologue
    .line 80
    const-class v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;

    invoke-direct {v0}, Lcn/nubia/weather/ui/widget/WidgetDataCache;-><init>()V

    sput-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;

    .line 83
    :cond_0
    sget-object v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mInstance:Lcn/nubia/weather/ui/widget/WidgetDataCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getWallColor(Landroid/content/Context;)I
    .locals 17
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 344
    const/4 v12, -0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 346
    .local v8, "result":Ljava/lang/Integer;
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 347
    .local v9, "wManager":Landroid/app/WallpaperManager;
    const-class v12, Landroid/app/WallpaperManager;

    const-string v13, "clipBlurWallpaper"

    const/4 v14, 0x3

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/content/Context;

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const-class v16, Landroid/graphics/Rect;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 349
    .local v3, "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 350
    .local v1, "dMetrics":Landroid/util/DisplayMetrics;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget v14, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v15, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v7, v12, v13, v14, v15}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 351
    .local v7, "rect":Landroid/graphics/Rect;
    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object p0, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    const/4 v13, 0x2

    const/16 v14, 0x5a

    .line 352
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    .line 351
    invoke-virtual {v3, v9, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 353
    .local v10, "wallpaperBitmap":Landroid/graphics/Bitmap;
    const-string v12, "nubia.util.BitmapGrayUtil"

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 354
    .local v5, "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v12, "getGray"

    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/graphics/Bitmap;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v5, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 355
    .local v4, "getGrMethod":Ljava/lang/reflect/Method;
    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v10, v12, v13

    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v4, v5, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    move-object v0, v12

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 360
    .end local v1    # "dMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getGrMethod":Ljava/lang/reflect/Method;
    .end local v5    # "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "wManager":Landroid/app/WallpaperManager;
    .end local v10    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "default_wallpaper_gray_color"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v11

    .line 362
    .local v11, "wallpaperGrayColor":I
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "main_screen_gray"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 363
    .local v6, "launcherGray":I
    const-string v12, "WidgetDataCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getWallColor: launcherGray : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " ; wallpaperGrayColor : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ";; result : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    if-nez v11, :cond_0

    .line 366
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 368
    :cond_0
    if-eqz v6, :cond_1

    .line 369
    move v11, v6

    .line 371
    :cond_1
    return v11

    .line 356
    .end local v6    # "launcherGray":I
    .end local v11    # "wallpaperGrayColor":I
    :catch_0
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getWallColorWithCoordinates(Landroid/content/Context;[I[I)I
    .locals 14
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "ponitLeftTopPonit"    # [I
    .param p2, "pointBottomPoint"    # [I

    .prologue
    .line 400
    const/4 v6, 0x0

    .line 402
    .local v6, "result":Ljava/lang/Integer;
    :try_start_0
    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    .line 403
    .local v7, "wManager":Landroid/app/WallpaperManager;
    invoke-virtual {v7}, Landroid/app/WallpaperManager;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v8

    .line 405
    .local v8, "wallpaperBitmap":Landroid/graphics/Bitmap;
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 406
    const/4 v10, 0x0

    aget v10, p2, v10

    const/4 v11, 0x0

    aget v11, p1, v11

    sub-int v9, v10, v11

    .line 407
    .local v9, "width":I
    const/4 v10, 0x1

    aget v10, p2, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    sub-int v4, v10, v11

    .line 408
    .local v4, "height":I
    if-lez v9, :cond_0

    if-lez v4, :cond_0

    .line 409
    const/4 v10, 0x0

    aget v10, p1, v10

    const/4 v11, 0x1

    aget v11, p1, v11

    invoke-static {v8, v10, v11, v9, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 411
    .local v5, "partWallPaper":Landroid/graphics/Bitmap;
    const-string v10, "nubia.util.BitmapGrayUtil"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 412
    .local v3, "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v10, "getGray"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Landroid/graphics/Bitmap;

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v13, v11, v12

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 413
    .local v2, "getGrMethod":Ljava/lang/reflect/Method;
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-virtual {v2, v3, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/Integer;

    move-object v6, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 419
    .end local v2    # "getGrMethod":Ljava/lang/reflect/Method;
    .end local v3    # "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v4    # "height":I
    .end local v5    # "partWallPaper":Landroid/graphics/Bitmap;
    .end local v7    # "wManager":Landroid/app/WallpaperManager;
    .end local v8    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    .end local v9    # "width":I
    :cond_0
    :goto_0
    if-nez v6, :cond_1

    .line 421
    const/4 v10, 0x0

    .line 423
    :goto_1
    return v10

    .line 416
    :catch_0
    move-exception v1

    .line 417
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 423
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    goto :goto_1
.end method

.method public static getWallpaperGrayColor(Landroid/content/Context;)I
    .locals 16
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    const/4 v11, -0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 377
    .local v8, "result":Ljava/lang/Integer;
    :try_start_0
    invoke-static/range {p0 .. p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v9

    .line 378
    .local v9, "wManager":Landroid/app/WallpaperManager;
    const-class v11, Landroid/app/WallpaperManager;

    const-string v12, "clipBlurWallpaper"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Class;

    const/4 v14, 0x0

    const-class v15, Landroid/content/Context;

    aput-object v15, v13, v14

    const/4 v14, 0x1

    const-class v15, Landroid/graphics/Rect;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    sget-object v15, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 380
    .local v3, "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 381
    .local v1, "dMetrics":Landroid/util/DisplayMetrics;
    new-instance v7, Landroid/graphics/Rect;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget v13, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v14, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v7, v11, v12, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 382
    .local v7, "rect":Landroid/graphics/Rect;
    const/4 v11, 0x3

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    const/4 v12, 0x2

    const/16 v13, 0x5a

    .line 383
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    .line 382
    invoke-virtual {v3, v9, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    .line 384
    .local v10, "wallpaperBitmap":Landroid/graphics/Bitmap;
    const-string v11, "nubia.util.BitmapGrayUtil"

    invoke-static {v11}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 385
    .local v5, "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "getGray"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Class;

    const/4 v13, 0x0

    const-class v14, Landroid/graphics/Bitmap;

    aput-object v14, v12, v13

    const/4 v13, 0x1

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v14, v12, v13

    invoke-virtual {v5, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 386
    .local v4, "getGrMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v10, v11, v12

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-virtual {v4, v5, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/lang/Integer;

    move-object v8, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    .end local v1    # "dMetrics":Landroid/util/DisplayMetrics;
    .end local v3    # "getBlurWallPagerMethod":Ljava/lang/reflect/Method;
    .end local v4    # "getGrMethod":Ljava/lang/reflect/Method;
    .end local v5    # "grayUtil":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "rect":Landroid/graphics/Rect;
    .end local v9    # "wManager":Landroid/app/WallpaperManager;
    .end local v10    # "wallpaperBitmap":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const-string v12, "default_wallpaper_gray_color"

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v13

    invoke-static {v11, v12, v13}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefInt(Landroid/content/Context;Ljava/lang/String;I)V

    .line 393
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "main_screen_gray"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 394
    .local v6, "launcherGray":Ljava/lang/Integer;
    const-string v11, "WidgetDataCache"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getWallpaperGrayColor: launcherGray : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " ; wallpaperGrayColor : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v11

    return v11

    .line 387
    .end local v6    # "launcherGray":Ljava/lang/Integer;
    :catch_0
    move-exception v2

    .line 388
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setCache(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, "cache":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 169
    const-string v1, "WidgetDataCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set cache:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    const-string v1, "widget_Cache_Info"

    invoke-static {p1, v1, v0}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "model"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 221
    const-string v4, "WidgetDataCache"

    const-string v5, "initWeatherData"

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 223
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 226
    .local v2, "hour":I
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    if-ne v4, v5, :cond_1

    .line 227
    new-instance v4, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;

    invoke-direct {v4, p0, p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;-><init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;)V

    new-array v5, v9, [Ljava/lang/Void;

    .line 237
    invoke-virtual {v4, v5}, Lcn/nubia/weather/ui/widget/WidgetDataCache$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 242
    :goto_0
    if-eqz p2, :cond_10

    .line 243
    invoke-virtual {p2}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 244
    iget-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    if-nez v4, :cond_0

    .line 245
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 247
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 250
    .local v1, "currentDate":Ljava/util/Date;
    invoke-static {v1, p2}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v3

    .line 253
    .local v3, "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 254
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 255
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 256
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 257
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 258
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 259
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 260
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 261
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 262
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 263
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 264
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 265
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 266
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 267
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 268
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 269
    iput-boolean v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 270
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    .line 271
    invoke-static {p2}, Lcn/nubia/weather/utils/TimeUtils;->isDataUpToDate(Lcn/nubia/weather/model/WeatherModel;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 341
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :goto_1
    return-void

    .line 239
    :cond_1
    const-string v4, "widget_cache_init_time_long"

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 239
    invoke-static {p1, v4, v6, v7}, Lcn/nubia/weather/utils/PreferenceUtils;->setSettingLongByCommit(Landroid/content/Context;Ljava/lang/String;J)V

    goto :goto_0

    .line 274
    .restart local v1    # "currentDate":Ljava/util/Date;
    .restart local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_2
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 275
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 278
    :cond_3
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 279
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 281
    :cond_4
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 282
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmHightLowTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 284
    :cond_5
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindForce()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 285
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindForce()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 287
    :cond_6
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindDirectionType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 288
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmWindDirectionType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 290
    :cond_7
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 291
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 293
    :cond_8
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmTime()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 294
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmTime()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 296
    :cond_9
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmLevel()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 297
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmAlarmLevel()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 299
    :cond_a
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 300
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 302
    :cond_b
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 303
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 305
    :cond_c
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 306
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDayTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 308
    :cond_d
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightTemp()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_e

    .line 309
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmNightTemp()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 311
    :cond_e
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getNextSunRiseSet()Ljava/util/Date;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 312
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getNextSunRiseSet()Ljava/util/Date;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    .line 314
    :cond_f
    invoke-virtual {v3}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v4

    iput-boolean v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 315
    invoke-virtual {p2}, Lcn/nubia/weather/model/WeatherModel;->getGmtOffSet()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 316
    invoke-virtual {p0, p2}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->setHours(Lcn/nubia/weather/model/WeatherModel;)V

    goto/16 :goto_1

    .line 319
    .end local v1    # "currentDate":Ljava/util/Date;
    .end local v3    # "hourTempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_10
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayType:Ljava/lang/String;

    .line 320
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightType:Ljava/lang/String;

    .line 321
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mDayTemp:Ljava/lang/String;

    .line 322
    const-string v4, ""

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNightTemp:Ljava/lang/String;

    .line 323
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 324
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCity:Ljava/lang/String;

    .line 325
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHightLowTemp:Ljava/lang/String;

    .line 326
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 327
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 328
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 329
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindForce:Ljava/lang/String;

    .line 330
    const-string v4, "--/--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWindDirectionType:Ljava/lang/String;

    .line 331
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmType:Ljava/lang/String;

    .line 332
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmLevel:Ljava/lang/String;

    .line 333
    const-string v4, "--"

    iput-object v4, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mAlarmTime:Ljava/lang/String;

    .line 334
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 335
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 336
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 337
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mGmtOffset:Ljava/lang/String;

    .line 338
    iput-boolean v9, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 339
    iput-object v8, p0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    goto/16 :goto_1
.end method

.method public initWeatherDataAsync(Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;

    .prologue
    .line 174
    invoke-static {p1}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v1

    .line 175
    .local v1, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    const/4 v0, 0x0

    .line 176
    .local v0, "areaID":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 177
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    invoke-virtual {v3}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 180
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 181
    invoke-static {p1}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v2

    .line 183
    .local v2, "mStore":Lcn/nubia/weather/persistent/IPersistenter;
    new-instance v3, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;

    invoke-direct {v3, p0, p1, p2}, Lcn/nubia/weather/ui/widget/WidgetDataCache$1;-><init>(Lcn/nubia/weather/ui/widget/WidgetDataCache;Landroid/content/Context;Lcn/nubia/weather/ui/widget/WidgetDataCache$onDataQueryComplete;)V

    invoke-interface {v2, v0, v3}, Lcn/nubia/weather/persistent/IPersistenter;->getWeatherInfoByIDV2(Ljava/lang/String;Lcn/nubia/weather/persistent/QueryCallback;)V

    .line 200
    .end local v2    # "mStore":Lcn/nubia/weather/persistent/IPersistenter;
    :cond_1
    return-void
.end method

.method public initWeatherDataFromDB(Landroid/content/Context;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 203
    invoke-static {p1}, Lcn/nubia/weather/data/CityOrderCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/CityOrderCenter;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter;->getCitysOrder()Ljava/util/List;

    move-result-object v1

    .line 204
    .local v1, "cityOrder":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;>;"
    const/4 v0, 0x0

    .line 205
    .local v0, "areaID":Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 206
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;

    invoke-virtual {v4}, Lcn/nubia/weather/data/CityOrderCenter$CityOrderUnit;->getmAreaID()Ljava/lang/String;

    move-result-object v0

    .line 209
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 211
    invoke-static {p1}, Lcn/nubia/weather/persistent/WeatherStore;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/persistent/WeatherStore;

    move-result-object v2

    .line 212
    .local v2, "mStore":Lcn/nubia/weather/persistent/WeatherStore;
    invoke-static {v0, p1}, Lcn/nubia/weather/persistent/DBHelper;->getWeatherModelByID(Ljava/lang/String;Landroid/content/Context;)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v3

    .line 213
    .local v3, "model":Lcn/nubia/weather/model/WeatherModel;
    const-string v4, "WidgetDataCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getWeatherInfoByID from db areaid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {p0, p1, v3}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 215
    const/4 v4, 0x1

    .line 217
    .end local v2    # "mStore":Lcn/nubia/weather/persistent/WeatherStore;
    .end local v3    # "model":Lcn/nubia/weather/model/WeatherModel;
    :goto_0
    return v4

    :cond_1
    move v4, v5

    goto :goto_0
.end method

.method public initWeatherDataSync(Landroid/content/Context;)Z
    .locals 20
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-string v16, "widget_Cache_Info"

    const/16 v17, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 91
    .local v9, "lastCache":Ljava/lang/String;
    invoke-static {}, Lcn/nubia/weather/data/DataCenter;->isInited()Z

    move-result v16

    if-nez v16, :cond_1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v16

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_1

    .line 92
    const-string v16, "WidgetDataCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "use last cache:"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    if-eqz v9, :cond_0

    .line 94
    const-string v16, ";"

    move-object/from16 v0, v16

    invoke-virtual {v9, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 95
    .local v7, "infos":[Ljava/lang/String;
    if-eqz v7, :cond_0

    array-length v0, v7

    move/from16 v16, v0

    const/16 v17, 0x2

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 96
    const/16 v16, 0x0

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    .line 97
    const/16 v16, 0x1

    aget-object v16, v7, v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    .line 100
    .end local v7    # "infos":[Ljava/lang/String;
    :cond_0
    const/16 v16, 0x0

    .line 163
    :goto_0
    return v16

    .line 102
    :cond_1
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v16

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcn/nubia/weather/data/DataCenter;->getWeather(I)Lcn/nubia/weather/model/WeatherModel;

    move-result-object v14

    .line 103
    .local v14, "model":Lcn/nubia/weather/model/WeatherModel;
    const-string v15, ""

    .line 104
    .local v15, "tag":Ljava/lang/String;
    invoke-static/range {p1 .. p1}, Lcn/nubia/weather/data/DataCenter;->getInstance(Landroid/content/Context;)Lcn/nubia/weather/data/DataCenter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcn/nubia/weather/data/DataCenter;->ismIsPrepare()Z

    move-result v16

    if-nez v16, :cond_3

    .line 105
    invoke-virtual/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherDataFromDB(Landroid/content/Context;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 106
    const/16 v16, 0x1

    goto :goto_0

    .line 108
    :cond_2
    const-string v16, "WidgetDataCache"

    const-string v17, "Datacenter not ready, check db"

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const/16 v16, 0x0

    goto :goto_0

    .line 112
    :cond_3
    if-eqz v14, :cond_7

    .line 115
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcn/nubia/weather/model/WeatherModel;->getmTime()J

    move-result-wide v18

    move-object/from16 v0, v16

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "|"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual {v14}, Lcn/nubia/weather/model/WeatherModel;->getmCityName()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 120
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v16

    if-nez v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 121
    :cond_4
    const-string v16, "widget_Cache_Time"

    const-string v17, ""

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 124
    :cond_5
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 128
    .local v4, "cal":Ljava/util/Calendar;
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    .line 129
    .local v6, "currentTime":Ljava/util/Date;
    const-string v16, "widget_cache_init_time_long"

    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 129
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-wide/from16 v2, v18

    invoke-static {v0, v1, v2, v3}, Lcn/nubia/weather/utils/PreferenceUtils;->getPrefLong(Landroid/content/Context;Ljava/lang/String;J)J

    move-result-wide v10

    .line 131
    .local v10, "lastInitLong":J
    new-instance v12, Ljava/util/Date;

    invoke-direct {v12, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 132
    .local v12, "lastInitTime":Ljava/util/Date;
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mWeatherType:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ";"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "curren_cache":Ljava/lang/String;
    const-string v16, "WidgetDataCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initWeatherData: curren_cache "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_8

    .line 135
    const-string v16, "WidgetDataCache"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "initWeatherData: tag "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " mLastTAG"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 137
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->setCache(Landroid/content/Context;)V

    .line 138
    const-string v16, "widget_Cache_Time"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-static {v0, v1, v15}, Lcn/nubia/weather/utils/PreferenceUtils;->setPrefString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    move-object/from16 v0, p0

    iput-object v15, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mLastTAG:Ljava/lang/String;

    .line 140
    const-string v16, "WidgetDataCache"

    const-string v17, "Send BroadCast NUBIA.WEATHER.UPDATE"

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 142
    .local v8, "intent":Landroid/content/Intent;
    const-string v16, "android.intent.action.NUBIA.WEATHER.UPDATE"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 143
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 144
    const-string v16, "weather_update"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 145
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 163
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_6
    :goto_2
    const/16 v16, 0x1

    goto/16 :goto_0

    .line 117
    .end local v4    # "cal":Ljava/util/Calendar;
    .end local v5    # "curren_cache":Ljava/lang/String;
    .end local v6    # "currentTime":Ljava/util/Date;
    .end local v10    # "lastInitLong":J
    .end local v12    # "lastInitTime":Ljava/util/Date;
    :cond_7
    const-string v16, "WidgetDataCache"

    const-string v17, "initWeatherDataSync: MODEL IS NULL"

    invoke-static/range {v16 .. v17}, Lcn/nubia/weather/utils/ZLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 146
    .restart local v4    # "cal":Ljava/util/Calendar;
    .restart local v5    # "curren_cache":Ljava/lang/String;
    .restart local v6    # "currentTime":Ljava/util/Date;
    .restart local v10    # "lastInitLong":J
    .restart local v12    # "lastInitTime":Ljava/util/Date;
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    move-object/from16 v16, v0

    if-eqz v16, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mCurrentTemp:Ljava/lang/String;

    move-object/from16 v16, v0

    const-string v17, "--"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_9

    if-eqz v14, :cond_9

    .line 148
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 149
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->setCache(Landroid/content/Context;)V

    goto :goto_2

    .line 150
    :cond_9
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    cmp-long v16, v10, v16

    if-gtz v16, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    move-object/from16 v16, v0

    if-eqz v16, :cond_b

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mNextSunRiseSet:Ljava/util/Date;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    cmp-long v16, v16, v18

    if-ltz v16, :cond_b

    .line 151
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    .line 152
    .local v13, "mLastIsNight":Z
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v14}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->initWeatherData(Landroid/content/Context;Lcn/nubia/weather/model/WeatherModel;)V

    .line 153
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mIsNight:Z

    move/from16 v16, v0

    move/from16 v0, v16

    if-eq v13, v0, :cond_6

    .line 154
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    .line 155
    .restart local v8    # "intent":Landroid/content/Intent;
    const-string v16, "android.intent.action.NUBIA.WEATHER.UPDATE"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    const/high16 v16, 0x10000000

    move/from16 v0, v16

    invoke-virtual {v8, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 157
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 159
    .end local v8    # "intent":Landroid/content/Intent;
    .end local v13    # "mLastIsNight":Z
    :cond_b
    if-nez v9, :cond_6

    .line 160
    invoke-direct/range {p0 .. p1}, Lcn/nubia/weather/ui/widget/WidgetDataCache;->setCache(Landroid/content/Context;)V

    goto/16 :goto_2
.end method

.method public setHours(Lcn/nubia/weather/model/WeatherModel;)V
    .locals 22
    .param p1, "weather"    # Lcn/nubia/weather/model/WeatherModel;

    .prologue
    .line 431
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v18

    if-eqz v18, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmHourfc()Lcn/nubia/weather/model/HourfcModel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/model/HourfcModel;->getmHours()Ljava/util/List;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 432
    invoke-virtual/range {p1 .. p1}, Lcn/nubia/weather/model/WeatherModel;->getmObserve()Lcn/nubia/weather/model/ObserveModel;

    move-result-object v18

    if-eqz v18, :cond_4

    .line 433
    const/4 v7, 0x6

    .line 434
    .local v7, "hourSize":I
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 437
    .local v8, "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    new-array v6, v7, [Ljava/util/Date;

    .line 439
    .local v6, "hourDates":[Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v16

    .line 440
    .local v16, "timeMillis":J
    new-instance v4, Ljava/util/Date;

    move-wide/from16 v0, v16

    invoke-direct {v4, v0, v1}, Ljava/util/Date;-><init>(J)V

    .line 443
    .local v4, "currentDate":Ljava/util/Date;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v7, :cond_1

    .line 444
    new-instance v18, Ljava/util/Date;

    const v19, 0x36ee80

    mul-int v19, v19, v10

    mul-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    add-long v20, v20, v16

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    aput-object v18, v6, v10

    .line 445
    if-eqz v10, :cond_0

    .line 446
    aget-object v18, v6, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Date;->setMinutes(I)V

    .line 447
    aget-object v18, v6, v10

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/util/Date;->setSeconds(I)V

    .line 450
    :cond_0
    aget-object v18, v6, v10

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcn/nubia/weather/utils/WeatherUtils;->getHourTempAndWeather(Ljava/util/Date;Lcn/nubia/weather/model/WeatherModel;)Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    move-result-object v13

    .line 452
    .local v13, "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 455
    .end local v13    # "tempAndWeather":Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;
    :cond_1
    new-array v9, v7, [I

    .line 456
    .local v9, "hourWeatherIcon":[I
    new-array v14, v7, [Ljava/lang/Integer;

    .line 457
    .local v14, "tempArray":[Ljava/lang/Integer;
    const/4 v11, 0x0

    .local v11, "index":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 458
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 459
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v18

    if-eqz v18, :cond_2

    .line 460
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmType()Ljava/lang/Integer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 461
    .local v15, "weatherType":I
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmDate()Ljava/util/Date;

    move-result-object v5

    .line 462
    .local v5, "date":Ljava/util/Date;
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->isIsNight()Z

    move-result v12

    .line 463
    .local v12, "isNight":Z
    invoke-static {v15, v12}, Lcn/nubia/weather/utils/WeatherIconUtils;->getWeatherPressIcon(IZ)I

    move-result v18

    aput v18, v9, v11

    .line 465
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;

    invoke-virtual/range {v18 .. v18}, Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;->getmTemp()Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v14, v11

    .line 457
    .end local v5    # "date":Ljava/util/Date;
    .end local v12    # "isNight":Z
    .end local v15    # "weatherType":I
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 469
    :cond_3
    move-object/from16 v0, p0

    iput-object v9, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mHourWeatherIcon:[I

    .line 470
    move-object/from16 v0, p0

    iput-object v14, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mTempArray:[Ljava/lang/Integer;

    .line 471
    move-object/from16 v0, p0

    iput-object v6, v0, Lcn/nubia/weather/ui/widget/WidgetDataCache;->mSixDates:[Ljava/util/Date;

    .line 473
    .end local v4    # "currentDate":Ljava/util/Date;
    .end local v6    # "hourDates":[Ljava/util/Date;
    .end local v7    # "hourSize":I
    .end local v8    # "hourTempAndWeatherList":Ljava/util/List;, "Ljava/util/List<Lcn/nubia/weather/utils/WeatherUtils$HourTempAndWeather;>;"
    .end local v9    # "hourWeatherIcon":[I
    .end local v10    # "i":I
    .end local v11    # "index":I
    .end local v14    # "tempArray":[Ljava/lang/Integer;
    .end local v16    # "timeMillis":J
    :cond_4
    return-void
.end method
