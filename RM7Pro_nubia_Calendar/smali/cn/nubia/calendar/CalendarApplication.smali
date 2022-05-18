.class public Lcn/nubia/calendar/CalendarApplication;
.super Lcn/nubia/deftmachanism/DeftApplication;
.source "CalendarApplication.java"


# static fields
.field public static TAG:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;

.field private static mDeviceHeightPixels:I

.field private static mDeviceWidthPixels:I

.field public static mHasRegisterContentObserver:Z


# instance fields
.field private mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

.field private mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field private mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

.field private mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

.field private mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

.field private mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 82
    const-string v0, "calendar_preset"

    sput-object v0, Lcn/nubia/calendar/CalendarApplication;->TAG:Ljava/lang/String;

    .line 84
    sput-boolean v1, Lcn/nubia/calendar/CalendarApplication;->mHasRegisterContentObserver:Z

    .line 86
    sput v1, Lcn/nubia/calendar/CalendarApplication;->mDeviceWidthPixels:I

    .line 87
    sput v1, Lcn/nubia/calendar/CalendarApplication;->mDeviceHeightPixels:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Lcn/nubia/deftmachanism/DeftApplication;-><init>()V

    .line 269
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 270
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    .line 271
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 272
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 273
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    .line 274
    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 171
    sget-object v0, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getDeviceHeight()I
    .locals 1

    .prologue
    .line 218
    sget v0, Lcn/nubia/calendar/CalendarApplication;->mDeviceHeightPixels:I

    return v0
.end method

.method public static getDeviceWidth()I
    .locals 1

    .prologue
    .line 214
    sget v0, Lcn/nubia/calendar/CalendarApplication;->mDeviceWidthPixels:I

    return v0
.end method

.method public static getMonthViewHeight(I)I
    .locals 6
    .param p0, "orientation"    # I

    .prologue
    .line 175
    sget-object v5, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 177
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f09025d

    .line 178
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 179
    .local v4, "statusBarHeight":I
    const v5, 0x7f09021b

    .line 180
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 183
    .local v0, "actionBarHeight":I
    const/4 v5, 0x2

    if-ne p0, v5, :cond_0

    .line 184
    sget v5, Lcn/nubia/calendar/CalendarApplication;->mDeviceWidthPixels:I

    sub-int/2addr v5, v4

    sub-int v2, v5, v0

    .line 195
    .local v2, "monthViewHeight":I
    :goto_0
    return v2

    .line 187
    .end local v2    # "monthViewHeight":I
    :cond_0
    const v5, 0x7f090025

    .line 188
    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 190
    .local v1, "actionBarMenuHeight":I
    sget v5, Lcn/nubia/calendar/CalendarApplication;->mDeviceHeightPixels:I

    sub-int/2addr v5, v4

    sub-int/2addr v5, v0

    sub-int v2, v5, v1

    .restart local v2    # "monthViewHeight":I
    goto :goto_0
.end method

.method private initSystemParameters()V
    .locals 4

    .prologue
    .line 199
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 200
    .local v0, "dm":Landroid/util/DisplayMetrics;
    sget-object v2, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    const-string v3, "window"

    .line 201
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 202
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 204
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-le v2, v3, :cond_0

    .line 205
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcn/nubia/calendar/CalendarApplication;->mDeviceWidthPixels:I

    .line 206
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcn/nubia/calendar/CalendarApplication;->mDeviceHeightPixels:I

    .line 211
    :goto_0
    return-void

    .line 208
    :cond_0
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcn/nubia/calendar/CalendarApplication;->mDeviceWidthPixels:I

    .line 209
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcn/nubia/calendar/CalendarApplication;->mDeviceHeightPixels:I

    goto :goto_0
.end method

.method private isMainProcess()Z
    .locals 8

    .prologue
    .line 142
    const-string v4, ""

    .line 143
    .local v4, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    .line 144
    .local v2, "pid":I
    const-string v5, "activity"

    invoke-virtual {p0, v5}, Lcn/nubia/calendar/CalendarApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 145
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarApplication;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 146
    .local v1, "packageName":Ljava/lang/String;
    const-string v5, "lidd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "packageName=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 148
    .local v3, "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v6, v2, :cond_0

    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {v1, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 149
    iget-object v4, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 150
    const-string v5, "lidd"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processName=="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v5, 0x1

    .line 154
    .end local v3    # "processInfo":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :goto_0
    return v5

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public doWithAppEvent(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public getAccountModel()Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 245
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    return-object v0
.end method

.method public getConfigModel()Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    if-nez v0, :cond_0

    .line 229
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 231
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    return-object v0
.end method

.method public getHolidayModel()Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .line 266
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    return-object v0
.end method

.method public getKernelDataModel()Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    if-nez v0, :cond_0

    .line 257
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    .line 259
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    return-object v0
.end method

.method public getUserActionModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    if-nez v0, :cond_0

    .line 250
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 252
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    return-object v0
.end method

.method public getUserModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    if-nez v0, :cond_0

    .line 236
    new-instance v0, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    invoke-direct {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;-><init>()V

    iput-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    .line 238
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/CalendarApplication;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    return-object v0
.end method

.method public onCreate()V
    .locals 13

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 91
    invoke-super {p0}, Lcn/nubia/deftmachanism/DeftApplication;->onCreate()V

    .line 96
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->setDefaultValues(Landroid/content/Context;)V

    .line 97
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    sput-object v7, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    .line 100
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarApplication;->initSystemParameters()V

    .line 102
    invoke-virtual {p0}, Lcn/nubia/calendar/CalendarApplication;->getAccountModel()Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    move-result-object v7

    sget-object v8, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 105
    const-string v7, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v7}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "android.permission.READ_CALENDAR"

    invoke-static {p0, v7}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v4, v5

    .line 106
    .local v4, "hasReadAndWritePermission":Z
    :goto_0
    sget-boolean v7, Lcn/nubia/calendar/CalendarApplication;->mHasRegisterContentObserver:Z

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    .line 108
    const/4 v7, 0x1

    :try_start_0
    sput-boolean v7, Lcn/nubia/calendar/CalendarApplication;->mHasRegisterContentObserver:Z

    .line 109
    sget-object v7, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v9, 0x1

    new-instance v10, Lcn/nubia/calendar/ContactBirthDayObserver;

    new-instance v11, Landroid/os/Handler;

    invoke-direct {v11}, Landroid/os/Handler;-><init>()V

    sget-object v12, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-direct {v10, v11, v12}, Lcn/nubia/calendar/ContactBirthDayObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    :goto_1
    :try_start_1
    invoke-static {p0}, Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;->createDefault(Landroid/content/Context;)Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;

    move-result-object v2

    .line 121
    .local v2, "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    invoke-static {}, Lcom/nostra13/universalimageloader/core/ImageLoader;->getInstance()Lcom/nostra13/universalimageloader/core/ImageLoader;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/nostra13/universalimageloader/core/ImageLoader;->init(Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 127
    .end local v2    # "config":Lcom/nostra13/universalimageloader/core/ImageLoaderConfiguration;
    :goto_2
    if-eqz v4, :cond_1

    .line 128
    sget-object v7, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createLocalCalendar(Landroid/content/Context;)V

    .line 131
    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/CalendarApplication;->isMainProcess()Z

    move-result v7

    if-eqz v7, :cond_2

    sget-object v7, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 132
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->isInternalVersion()Z

    move-result v7

    if-nez v7, :cond_2

    .line 133
    const-string v7, "lidd"

    const-string v8, "isMainProcess and is not FirstLaunch"

    invoke-static {v7, v8}, Lcn/nubia/calendar/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getInstance()Lcom/huanju/ssp/sdk/inf/AdInfFactory;

    move-result-object v0

    .line 135
    .local v0, "adInfFactory":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    sget-object v7, Lcn/nubia/calendar/CalendarApplication;->mContext:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/calendar/util/AdSetting;->getAppID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v7, v8, v6, v5}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->attach(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 136
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdManager()Lcom/huanju/ssp/sdk/inf/AdManager;

    move-result-object v1

    .line 137
    .local v1, "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    invoke-virtual {v0}, Lcom/huanju/ssp/sdk/inf/AdInfFactory;->getAdUtils()Lcom/huanju/ssp/sdk/inf/AdUtils;

    .line 139
    .end local v0    # "adInfFactory":Lcom/huanju/ssp/sdk/inf/AdInfFactory;
    .end local v1    # "adManager":Lcom/huanju/ssp/sdk/inf/AdManager;
    :cond_2
    return-void

    .end local v4    # "hasReadAndWritePermission":Z
    :cond_3
    move v4, v6

    .line 105
    goto :goto_0

    .line 112
    .restart local v4    # "hasReadAndWritePermission":Z
    :catch_0
    move-exception v3

    .line 113
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 122
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 123
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0}, Lcn/nubia/deftmachanism/DeftApplication;->onTerminate()V

    .line 161
    :try_start_0
    invoke-static {}, Lcn/nubia/calendar/CalendarApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/SportsGameEvents/SportsDB;->getSportsDBIntance(Landroid/content/Context;)Lcn/nubia/SportsGameEvents/SportsDB;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/SportsGameEvents/SportsDB;->releaseResource()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    return-void

    .line 162
    :catch_0
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
