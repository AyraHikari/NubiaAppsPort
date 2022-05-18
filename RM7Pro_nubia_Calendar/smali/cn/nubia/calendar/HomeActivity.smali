.class public Lcn/nubia/calendar/HomeActivity;
.super Lcn/nubia/calendar/AbstractCalendarActivityMain;
.source "HomeActivity.java"

# interfaces
.implements Lcn/nubia/deftmachanism/IDeftObserver;
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/calendar/HomeActivity$WorkHandler;
    }
.end annotation


# static fields
.field public static final ACCOUNT_NAME:Ljava/lang/String; = "nobody@gmail.com"

.field public static final ACCOUNT_TYPE:Ljava/lang/String; = "LOCAL"

.field public static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"

.field private static final CITY_LIST_FILE:Ljava/lang/String; = "city_list_file"

.field private static final DEBUG:Z = false

.field public static FIRST_START:Z = false

.field public static final KEY_NAVIGATION_BAR:Ljava/lang/String; = "system_keys_navigationbar"

.field private static final KEY_TIME_IN_MILLIS:Ljava/lang/String; = "time_in_millis"

.field private static final MY_PERMISSIONS_REQUEST:I = 0x14

.field private static final REQUERSTINTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "HomeActivity"

.field private static final VIEW_DATE_ACTION:Ljava/lang/String; = "cn.nubia.calendar.otherApp.VIEW_DATE"

.field public static age:I

.field private static lastRequestDataTime:J


# instance fields
.field private mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

.field public mActionBarView:Landroid/widget/RelativeLayout;

.field private mBackToPreviousView:Z

.field private mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

.field private mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

.field private mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

.field public mContext:Landroid/content/Context;

.field private mController:Lcn/nubia/calendar/CalendarController;

.field private mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

.field private mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

.field private mCurrentMonthDateText:Landroid/widget/TextView;

.field private mCurrentYearandWeekDateText:Landroid/widget/TextView;

.field private mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

.field private mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

.field private mDialog:Lcn/nubia/commonui/app/AlertDialog;

.field private mEventObserver:Landroid/database/ContentObserver;

.field private mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

.field private mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

.field private mMainPaneLayout:Landroid/widget/FrameLayout;

.field private mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

.field private mNavitionbarObserver:Landroid/database/ContentObserver;

.field private mPreviousView:I

.field private mReminderTimeObserver:Landroid/database/ContentObserver;

.field private mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

.field private mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

.field private mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

.field private mSwitchModeWidgetsManager:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

.field private mTopActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

.field private mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

.field private mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

.field private mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

.field private mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

.field public mView:Landroid/widget/LinearLayout;

.field private mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

.field private mWorkHandler:Landroid/os/Handler;

.field private mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

.field private mYearController:Lcn/nubia/calendar/deftcontroller/YearController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    sput-boolean v2, Lcn/nubia/calendar/HomeActivity;->FIRST_START:Z

    .line 128
    const-wide/16 v0, 0x0

    sput-wide v0, Lcn/nubia/calendar/HomeActivity;->lastRequestDataTime:J

    .line 173
    sput v2, Lcn/nubia/calendar/HomeActivity;->age:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 106
    invoke-direct {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;-><init>()V

    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/calendar/HomeActivity;->mBackToPreviousView:Z

    .line 383
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 1180
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 1181
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .line 1182
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 1183
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .line 1184
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    .line 1186
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    .line 1187
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    .line 1188
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    .line 1189
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    .line 1191
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    .line 1193
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 1194
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    .line 1195
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 1196
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 1197
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    .line 1198
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .line 1199
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mEventObserver:Landroid/database/ContentObserver;

    .line 1200
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mReminderTimeObserver:Landroid/database/ContentObserver;

    .line 1201
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mNavitionbarObserver:Landroid/database/ContentObserver;

    .line 1202
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 1204
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSwitchModeWidgetsManager:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 1205
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 1206
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    .line 1207
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSharedPrefUtil:Lcn/nubia/calendar/util/SharedPrefUtil;

    .line 1208
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 1210
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 1211
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentMonthDateText:Landroid/widget/TextView;

    .line 1212
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentYearandWeekDateText:Landroid/widget/TextView;

    .line 1213
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    .line 1214
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    .line 1215
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mView:Landroid/widget/LinearLayout;

    .line 1216
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mActionBarView:Landroid/widget/RelativeLayout;

    .line 1217
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    return-void
.end method

.method static synthetic access$000(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    return-object v0
.end method

.method static synthetic access$100(Lcn/nubia/calendar/HomeActivity;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    return-object v0
.end method

.method static synthetic access$300(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    return-object v0
.end method

.method static synthetic access$400(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    return-object v0
.end method

.method static synthetic access$500(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/UserActionController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    return-object v0
.end method

.method static synthetic access$600(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/SelectDateController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    return-object v0
.end method

.method static synthetic access$700(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/SettingsController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    return-object v0
.end method

.method static synthetic access$800(Lcn/nubia/calendar/HomeActivity;)Lcn/nubia/calendar/deftcontroller/TopBarController;
    .locals 1
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;

    .prologue
    .line 106
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    return-object v0
.end method

.method static synthetic access$900(Lcn/nubia/calendar/HomeActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcn/nubia/calendar/HomeActivity;
    .param p1, "x1"    # I

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcn/nubia/calendar/HomeActivity;->sendWorkEvent(I)V

    return-void
.end method

.method private adjustCurrentWorkMode(I)V
    .locals 3
    .param p1, "viewType"    # I

    .prologue
    const/4 v2, 0x1

    .line 1082
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-nez v0, :cond_0

    .line 1109
    :goto_0
    return-void

    .line 1085
    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 1087
    :pswitch_1
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, v2, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    goto :goto_0

    .line 1092
    :pswitch_2
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    goto :goto_0

    .line 1097
    :pswitch_3
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    goto :goto_0

    .line 1102
    :pswitch_4
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCurWorkingMode(IZ)V

    goto :goto_0

    .line 1085
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private asyncCreateCalendar()V
    .locals 2

    .prologue
    .line 424
    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcn/nubia/calendar/HomeActivity$3;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$3;-><init>(Lcn/nubia/calendar/HomeActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 432
    :cond_0
    return-void
.end method

.method private cleanUpModels()V
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->cleanUp()V

    .line 1124
    return-void
.end method

.method private destoryController()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1127
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    if-eqz v0, :cond_0

    .line 1128
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->destroy()V

    .line 1129
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->destroySelf()V

    .line 1130
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 1132
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    if-eqz v0, :cond_1

    .line 1133
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->destroy()V

    .line 1134
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->destroySelf()V

    .line 1135
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .line 1137
    :cond_1
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    if-eqz v0, :cond_2

    .line 1138
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController;->destroy()V

    .line 1139
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 1141
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    if-eqz v0, :cond_3

    .line 1142
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->destroy()V

    .line 1143
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->destroySelf()V

    .line 1144
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .line 1146
    :cond_3
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    if-eqz v0, :cond_4

    .line 1147
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/SettingsController;->destroy()V

    .line 1148
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/SettingsController;->destroySelf()V

    .line 1149
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    .line 1152
    :cond_4
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v0, :cond_5

    .line 1153
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->destroy()V

    .line 1154
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    .line 1157
    :cond_5
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    if-eqz v0, :cond_6

    .line 1158
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/DayController;->destroy()V

    .line 1159
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/DayController;->destroySelf()V

    .line 1160
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    .line 1162
    :cond_6
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    if-eqz v0, :cond_7

    .line 1163
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->destroy()V

    .line 1164
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->destorySelf()V

    .line 1165
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    .line 1167
    :cond_7
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    if-eqz v0, :cond_8

    .line 1168
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/WeekController;->destroy()V

    .line 1169
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/WeekController;->destroySelf()V

    .line 1170
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    .line 1172
    :cond_8
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    if-eqz v0, :cond_9

    .line 1173
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/YearController;->destroy()V

    .line 1174
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/YearController;->destorySelf()V

    .line 1175
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    .line 1177
    :cond_9
    return-void
.end method

.method private doWithGotoTimeChanged()V
    .locals 1

    .prologue
    .line 1032
    const/16 v0, 0xfa7

    invoke-direct {p0, v0}, Lcn/nubia/calendar/HomeActivity;->sendWorkEvent(I)V

    .line 1033
    return-void
.end method

.method private doWithWorkingModeChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1036
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurWorkingMode()I

    move-result v0

    .line 1037
    .local v0, "mode":I
    const/4 v1, 0x0

    .line 1039
    .local v1, "tmpController":Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    packed-switch v0, :pswitch_data_0

    .line 1079
    :goto_0
    return-void

    .line 1041
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getDayController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    .line 1042
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eq v2, v1, :cond_0

    .line 1043
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->stop(I)I

    .line 1045
    :cond_0
    invoke-virtual {v1, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->start(I)I

    .line 1046
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 1050
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getWeekController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    .line 1051
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eq v2, v1, :cond_1

    .line 1052
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->stop(I)I

    .line 1054
    :cond_1
    invoke-virtual {v1, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->start(I)I

    .line 1055
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 1059
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getMonthController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    .line 1060
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eq v2, v1, :cond_2

    .line 1061
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->stop(I)I

    .line 1063
    :cond_2
    invoke-virtual {v1, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->start(I)I

    .line 1064
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 1068
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getYearController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    .line 1069
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eq v2, v1, :cond_3

    .line 1070
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v2, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->stop(I)I

    .line 1072
    :cond_3
    invoke-virtual {v1, v3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->start(I)I

    .line 1073
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 1039
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getBottomBarController()Lcn/nubia/calendar/deftcontroller/BottomBarController;
    .locals 3

    .prologue
    .line 842
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    if-eqz v1, :cond_0

    .line 843
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .line 853
    :goto_0
    return-object v1

    .line 846
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/BottomBarController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/BottomBarController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .line 847
    new-instance v0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;-><init>()V

    .line 848
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 849
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->bottomBarMgr:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 850
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;->outterHandler:Landroid/os/Handler;

    .line 851
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->init(Lcn/nubia/calendar/deftcontroller/BottomBarController$InitData;)V

    .line 853
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    goto :goto_0
.end method

.method private getDayController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    .locals 3

    .prologue
    .line 927
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    if-eqz v1, :cond_0

    .line 928
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    .line 939
    :goto_0
    return-object v1

    .line 931
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/DayController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/DayController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    .line 932
    new-instance v0, Lcn/nubia/calendar/deftcontroller/DayController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/DayController$InitData;-><init>()V

    .line 933
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/DayController$InitData;
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/DayController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    .line 934
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/DayController$InitData;->main_pane:Landroid/widget/FrameLayout;

    .line 935
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/DayController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 936
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/DayController$InitData;->outterHandler:Landroid/os/Handler;

    .line 937
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/DayController;->init(Lcn/nubia/calendar/deftcontroller/DayController$InitData;)V

    .line 939
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDayController:Lcn/nubia/calendar/deftcontroller/DayController;

    goto :goto_0
.end method

.method private getMonthController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    .locals 3

    .prologue
    .line 959
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    if-eqz v1, :cond_0

    .line 960
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    .line 971
    :goto_0
    return-object v1

    .line 963
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/MonthController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/MonthController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    .line 964
    new-instance v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;-><init>()V

    .line 965
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/MonthController$InitData;
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    .line 966
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->main_pane:Landroid/widget/FrameLayout;

    .line 967
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 968
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/MonthController$InitData;->outterHandler:Landroid/os/Handler;

    .line 969
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/MonthController;->init(Lcn/nubia/calendar/deftcontroller/MonthController$InitData;)V

    .line 971
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMonthController:Lcn/nubia/calendar/deftcontroller/MonthController;

    goto :goto_0
.end method

.method private getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "permission"    # Ljava/lang/String;

    .prologue
    .line 369
    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 370
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c010c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 380
    :goto_0
    return-object v0

    .line 371
    :cond_0
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 372
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 373
    :cond_1
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 374
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0108

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 375
    :cond_2
    const-string v0, "android.permission.READ_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 376
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c010b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 377
    :cond_3
    const-string v0, "android.permission.GET_ACCOUNTS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 378
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getSelectDateController()Lcn/nubia/calendar/deftcontroller/SelectDateController;
    .locals 3

    .prologue
    .line 872
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    if-eqz v1, :cond_0

    .line 873
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .line 882
    :goto_0
    return-object v1

    .line 876
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/SelectDateController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/SelectDateController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .line 877
    new-instance v0, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;-><init>()V

    .line 878
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 879
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;->outterHandler:Landroid/os/Handler;

    .line 880
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/SelectDateController;->init(Lcn/nubia/calendar/deftcontroller/SelectDateController$InitData;)V

    .line 882
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSelectDateController:Lcn/nubia/calendar/deftcontroller/SelectDateController;

    goto :goto_0
.end method

.method private getSettingsController()Lcn/nubia/calendar/deftcontroller/SettingsController;
    .locals 3

    .prologue
    .line 886
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    .line 897
    :goto_0
    return-object v1

    .line 890
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/SettingsController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/SettingsController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    .line 891
    new-instance v0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;-><init>()V

    .line 892
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 893
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->configModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 894
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;->outterHandler:Landroid/os/Handler;

    .line 895
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/SettingsController;->init(Lcn/nubia/calendar/deftcontroller/SettingsController$InitData;)V

    .line 897
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSettingsController:Lcn/nubia/calendar/deftcontroller/SettingsController;

    goto :goto_0
.end method

.method private getTopBarController()Lcn/nubia/calendar/deftcontroller/TopBarController;
    .locals 3

    .prologue
    .line 821
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    if-eqz v1, :cond_0

    .line 822
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 838
    :goto_0
    return-object v1

    .line 825
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/TopBarController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/TopBarController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 826
    new-instance v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;-><init>()V

    .line 827
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    .line 828
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mSwitchModeWidgetsManager:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->widgetsMgr:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 829
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 830
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->dateCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 831
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->outterHandler:Landroid/os/Handler;

    .line 832
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mView:Landroid/widget/LinearLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->view:Landroid/view/View;

    .line 833
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mActionBarView:Landroid/widget/RelativeLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->actionBarView:Landroid/view/View;

    .line 834
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentMonthDateText:Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentMonthDateWidget:Landroid/widget/TextView;

    .line 835
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentYearandWeekDateText:Landroid/widget/TextView;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;->currentYearAndWeekDateWidget:Landroid/widget/TextView;

    .line 836
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/TopBarController;->init(Lcn/nubia/calendar/deftcontroller/TopBarController$InitData;)V

    .line 838
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mTopBarController:Lcn/nubia/calendar/deftcontroller/TopBarController;

    goto :goto_0
.end method

.method private getUserActionController()Lcn/nubia/calendar/deftcontroller/UserActionController;
    .locals 3

    .prologue
    .line 857
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    if-eqz v1, :cond_0

    .line 858
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 868
    :goto_0
    return-object v1

    .line 861
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/UserActionController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/UserActionController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 862
    new-instance v0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;-><init>()V

    .line 863
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->workingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 864
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->userActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 865
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;->outterHandler:Landroid/os/Handler;

    .line 866
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/UserActionController;->init(Lcn/nubia/calendar/deftcontroller/UserActionController$InitData;)V

    .line 868
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionController:Lcn/nubia/calendar/deftcontroller/UserActionController;

    goto :goto_0
.end method

.method private getWeekController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    .locals 3

    .prologue
    .line 943
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    if-eqz v1, :cond_0

    .line 944
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    .line 955
    :goto_0
    return-object v1

    .line 947
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/WeekController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/WeekController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    .line 948
    new-instance v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;-><init>()V

    .line 949
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/WeekController$InitData;
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    .line 950
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->main_pane:Landroid/widget/FrameLayout;

    .line 951
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 952
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/WeekController$InitData;->outterHandler:Landroid/os/Handler;

    .line 953
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/WeekController;->init(Lcn/nubia/calendar/deftcontroller/WeekController$InitData;)V

    .line 955
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWeekController:Lcn/nubia/calendar/deftcontroller/WeekController;

    goto :goto_0
.end method

.method private getYearController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;
    .locals 3

    .prologue
    .line 975
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    if-eqz v1, :cond_0

    .line 976
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    .line 986
    :goto_0
    return-object v1

    .line 979
    :cond_0
    new-instance v1, Lcn/nubia/calendar/deftcontroller/YearController;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDeftEventSender:Lcn/nubia/deftmachanism/IDeftEventSender;

    invoke-direct {v1, p0, v2}, Lcn/nubia/calendar/deftcontroller/YearController;-><init>(Landroid/content/Context;Lcn/nubia/deftmachanism/IDeftEventSender;)V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    .line 980
    new-instance v0, Lcn/nubia/calendar/deftcontroller/YearController$InitData;

    invoke-direct {v0}, Lcn/nubia/calendar/deftcontroller/YearController$InitData;-><init>()V

    .line 981
    .local v0, "initData":Lcn/nubia/calendar/deftcontroller/YearController$InitData;
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->fragment_manager:Landroid/app/FragmentManager;

    .line 982
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->main_pane:Landroid/widget/FrameLayout;

    .line 983
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iput-object v1, v0, Lcn/nubia/calendar/deftcontroller/YearController$InitData;->working_model:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 984
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/deftcontroller/YearController;->init(Lcn/nubia/calendar/deftcontroller/YearController$InitData;)V

    .line 986
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mYearController:Lcn/nubia/calendar/deftcontroller/YearController;

    goto :goto_0
.end method

.method private getYunSdkInit(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 418
    new-instance v0, Lcn/nubia/calendar/util/CtaUtils;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    .line 419
    invoke-static {p1}, Lcn/nubia/calendar/util/TrackUtils;->init(Landroid/content/Context;)V

    .line 420
    return-void
.end method

.method private initBottomBarController()V
    .locals 0

    .prologue
    .line 805
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getBottomBarController()Lcn/nubia/calendar/deftcontroller/BottomBarController;

    .line 806
    return-void
.end method

.method private initCurrentController()V
    .locals 2

    .prologue
    .line 901
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getCurWorkingMode()I

    move-result v0

    .line 903
    .local v0, "mode":I
    packed-switch v0, :pswitch_data_0

    .line 921
    const/4 v1, 0x0

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    .line 924
    :goto_0
    return-void

    .line 905
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getDayController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 909
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getWeekController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 913
    :pswitch_2
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getMonthController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 917
    :pswitch_3
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getYearController()Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    goto :goto_0

    .line 903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private initModels()V
    .locals 3

    .prologue
    .line 660
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcn/nubia/calendar/CalendarApplication;

    .line 662
    .local v0, "app":Lcn/nubia/calendar/CalendarApplication;
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getConfigModel()Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    .line 663
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getUserModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    .line 664
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getAccountModel()Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    .line 665
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getUserActionModel()Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    .line 666
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getKernelDataModel()Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    .line 667
    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarApplication;->getHolidayModel()Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    .line 669
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->init(Landroid/content/Context;)V

    .line 670
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarUserModel;->init(Landroid/content/Context;)V

    .line 671
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v1, v0, p0}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->init(Landroid/content/Context;Landroid/app/Activity;)V

    .line 672
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mUserActionModel:Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarUserActionModel;->init(Landroid/content/Context;)V

    .line 673
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mKernelDataModel:Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarKernelDataModel;->init(Landroid/content/Context;)V

    .line 674
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-virtual {v1, v0}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->init(Landroid/content/Context;)V

    .line 676
    new-instance v1, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-direct {v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;-><init>()V

    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    .line 677
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->init(Landroid/content/Context;)V

    .line 678
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setHolidayModel(Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;)V

    .line 679
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v1, v2}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setCalendarConfigModel(Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;)V

    .line 680
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v1, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->registerObserver(Ljava/lang/Object;)V

    .line 681
    return-void
.end method

.method private initPreviousView(I)V
    .locals 4
    .param p1, "viewType"    # I

    .prologue
    .line 539
    const/4 v0, 0x0

    .line 540
    .local v0, "info":Lcn/nubia/calendar/CalendarController$EventInfo;
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 541
    invoke-static {p0}, Lcn/nubia/calendar/GeneralPreferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "preferred_startView"

    const/4 v3, 0x4

    .line 542
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcn/nubia/calendar/HomeActivity;->mPreviousView:I

    .line 547
    :goto_0
    return-void

    .line 545
    :cond_0
    iput p1, p0, Lcn/nubia/calendar/HomeActivity;->mPreviousView:I

    goto :goto_0
.end method

.method private initSelectDateController()V
    .locals 0

    .prologue
    .line 813
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getSelectDateController()Lcn/nubia/calendar/deftcontroller/SelectDateController;

    .line 814
    return-void
.end method

.method private initSettingsController()V
    .locals 0

    .prologue
    .line 817
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getSettingsController()Lcn/nubia/calendar/deftcontroller/SettingsController;

    .line 818
    return-void
.end method

.method private initTopBarController()V
    .locals 0

    .prologue
    .line 801
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getTopBarController()Lcn/nubia/calendar/deftcontroller/TopBarController;

    .line 802
    return-void
.end method

.method private initUiComponents(I)V
    .locals 1
    .param p1, "viewType"    # I

    .prologue
    .line 776
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->setLinearLayoutView()V

    .line 777
    const v0, 0x7f11005d

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentMonthDateText:Landroid/widget/TextView;

    .line 778
    const v0, 0x7f11005e

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurrentYearandWeekDateText:Landroid/widget/TextView;

    .line 779
    const v0, 0x7f1100a2

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mMainPaneLayout:Landroid/widget/FrameLayout;

    .line 781
    invoke-direct {p0, p1}, Lcn/nubia/calendar/HomeActivity;->initPreviousView(I)V

    .line 783
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->isChooserIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mTopActionBar:Lcn/nubia/commonui/actionbar/app/ActionBar;

    invoke-virtual {v0}, Lcn/nubia/commonui/actionbar/app/ActionBar;->hide()V

    .line 787
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initUiManager()V

    .line 788
    return-void
.end method

.method private initUiManager()V
    .locals 1

    .prologue
    .line 796
    new-instance v0, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mSwitchModeWidgetsManager:Lcn/nubia/calendar/ui_component/deftui/SwitchModeWidgetsManager;

    .line 797
    new-instance v0, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarManager:Lcn/nubia/calendar/ui_component/deftui/BottomBarManager;

    .line 798
    return-void
.end method

.method private initUserActionController()V
    .locals 0

    .prologue
    .line 809
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->getUserActionController()Lcn/nubia/calendar/deftcontroller/UserActionController;

    .line 810
    return-void
.end method

.method private initUtils()V
    .locals 1

    .prologue
    .line 684
    new-instance v0, Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-direct {v0, p0}, Lcn/nubia/calendar/util/DateTimeCalcUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 685
    return-void
.end method

.method private initWorkHandler()V
    .locals 2

    .prologue
    .line 688
    new-instance v0, Lcn/nubia/calendar/HomeActivity$WorkHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/calendar/HomeActivity$WorkHandler;-><init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    .line 689
    return-void
.end method

.method private isWhetherCtsOpen()V
    .locals 2

    .prologue
    .line 323
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 324
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;->ctaWarning(Landroid/content/Context;)V

    .line 328
    :goto_0
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/nubia/calendar/util/CtaUtils;->isAllowAccessNetwork(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mHolidayModel:Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/model/deftmodel/CalendarHolidayModel;->asyncLoad(Lcn/nubia/calendar/model/deftmodel/IHolidayDownload;)V

    .line 330
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;->initUpdateController(Landroid/content/Context;)V

    .line 332
    :cond_0
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCtaUtils:Lcn/nubia/calendar/util/CtaUtils;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/util/CtaUtils;->obtainWeatherDate(Landroid/content/Context;)V

    .line 333
    return-void

    .line 326
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->checkAndRequestPermissions()V

    goto :goto_0
.end method

.method private judgeNavigationBarExist()V
    .locals 3

    .prologue
    .line 743
    const-string v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 744
    .local v0, "navbarOverride":Ljava/lang/String;
    const-string v1, "0"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 745
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcn/nubia/calendar/HomeActivity$8;

    invoke-direct {v2, p0}, Lcn/nubia/calendar/HomeActivity$8;-><init>(Lcn/nubia/calendar/HomeActivity;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 752
    :cond_0
    return-void
.end method

.method private requestPermissions()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    const/16 v1, 0x14

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 387
    return-void
.end method

.method private resisterEventContentObserver()V
    .locals 5

    .prologue
    .line 692
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcn/nubia/calendar/HomeActivity$5;

    iget-object v4, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/HomeActivity$5;-><init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Handler;)V

    iput-object v3, p0, Lcn/nubia/calendar/HomeActivity;->mEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 700
    return-void
.end method

.method private resisterNavigationbarOberver()V
    .locals 5

    .prologue
    .line 727
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "system_keys_navigationbar"

    .line 728
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcn/nubia/calendar/HomeActivity$7;

    iget-object v4, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/HomeActivity$7;-><init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Handler;)V

    iput-object v3, p0, Lcn/nubia/calendar/HomeActivity;->mNavitionbarObserver:Landroid/database/ContentObserver;

    .line 727
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 740
    return-void
.end method

.method private resisterReminderTimeObserver()V
    .locals 5

    .prologue
    .line 703
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CalendarContract$Instances;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-instance v3, Lcn/nubia/calendar/HomeActivity$6;

    iget-object v4, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-direct {v3, p0, v4}, Lcn/nubia/calendar/HomeActivity$6;-><init>(Lcn/nubia/calendar/HomeActivity;Landroid/os/Handler;)V

    iput-object v3, p0, Lcn/nubia/calendar/HomeActivity;->mReminderTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 724
    return-void
.end method

.method private sendWorkEvent(I)V
    .locals 2
    .param p1, "what"    # I

    .prologue
    .line 1112
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    if-nez v1, :cond_0

    .line 1119
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 1117
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 1118
    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private showPermissionDialog()V
    .locals 6

    .prologue
    .line 350
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 351
    .local v1, "permissionInCtsDialog":Ljava/lang/StringBuffer;
    sget-object v3, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 352
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 354
    invoke-direct {p0, v0}, Lcn/nubia/calendar/HomeActivity;->getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 356
    invoke-direct {p0, v0}, Lcn/nubia/calendar/HomeActivity;->getPermissionShowInCtsDialog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 360
    .end local v0    # "permission":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v2}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 362
    const/4 v2, 0x0

    iput-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 364
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcn/nubia/calendar/util/PermissionUtils;->showCtsWarningDialog(Ljava/lang/String;Landroid/app/Activity;)Lcn/nubia/commonui/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 365
    return-void
.end method

.method private unRegisterEventContentObserver()V
    .locals 2

    .prologue
    .line 755
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mEventObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 756
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mEventObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 757
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mEventObserver:Landroid/database/ContentObserver;

    .line 759
    :cond_0
    return-void
.end method

.method private unRegisterNavigationBarObserver()V
    .locals 2

    .prologue
    .line 769
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mNavitionbarObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 770
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mNavitionbarObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 771
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mNavitionbarObserver:Landroid/database/ContentObserver;

    .line 773
    :cond_0
    return-void
.end method

.method private unRegisterReminderTimeObserver()V
    .locals 2

    .prologue
    .line 762
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mReminderTimeObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 763
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mReminderTimeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 764
    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mReminderTimeObserver:Landroid/database/ContentObserver;

    .line 766
    :cond_0
    return-void
.end method

.method private updateSportsData()V
    .locals 6

    .prologue
    .line 178
    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v2}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSWITCH_SPORTS()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 184
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->initNucmsSDK(Landroid/content/Context;)V

    .line 188
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 189
    .local v0, "currentTime":J
    sget-wide v2, Lcn/nubia/calendar/HomeActivity;->lastRequestDataTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 191
    sput-wide v0, Lcn/nubia/calendar/HomeActivity;->lastRequestDataTime:J

    .line 192
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSwitchInfo(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->requerstSportsMatchesDataApplication(Landroid/content/Context;)V

    .line 196
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/calendar/util/CtaUtils;->isFirstLaunch(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getSWITCH_SPORTS()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 197
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/SportsGameEvents/SportsUtils/HttpRequestSportsMatches;->getServerSwitch(Landroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAndRequestPermissions()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 335
    sget-object v2, Lcn/nubia/calendar/util/PermissionUtils;->permissions:[Ljava/lang/String;

    .line 336
    .local v2, "permissions":[Ljava/lang/String;
    const/4 v0, 0x1

    .line 338
    .local v0, "checkPermissionsResult":Z
    array-length v6, v2

    move v5, v4

    :goto_0
    if-ge v5, v6, :cond_1

    aget-object v1, v2, v5

    .line 339
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Landroid/support/v4/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_1
    and-int/2addr v0, v3

    .line 338
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 339
    goto :goto_1

    .line 342
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    if-eqz v0, :cond_2

    .line 347
    :goto_2
    return-void

    .line 346
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->requestPermissions()V

    goto :goto_2
.end method

.method public getmController()Lcn/nubia/calendar/CalendarController;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mController:Lcn/nubia/calendar/CalendarController;

    return-object v0
.end method

.method public initSharedPreference()V
    .locals 2

    .prologue
    .line 435
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcn/nubia/calendar/HomeActivity$4;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$4;-><init>(Lcn/nubia/calendar/HomeActivity;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 457
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 1026
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    if-eqz v0, :cond_0

    .line 1027
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mCurController:Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;

    invoke-virtual {v0, p1, p2, p3}, Lcn/nubia/calendar/deftcontroller/DateFragmentExecController;->handleActivityResult(IILandroid/content/Intent;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 551
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onBackPressed()V

    .line 552
    return-void
.end method

.method public onChanged(I)V
    .locals 0
    .param p1, "changeFlag"    # I

    .prologue
    .line 990
    packed-switch p1, :pswitch_data_0

    .line 1002
    :goto_0
    return-void

    .line 992
    :pswitch_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->doWithGotoTimeChanged()V

    goto :goto_0

    .line 996
    :pswitch_1
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->doWithWorkingModeChanged()V

    goto :goto_0

    .line 990
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 461
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 462
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 205
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onCreate(Landroid/os/Bundle;)V

    .line 206
    iput-object p0, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    .line 207
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->updateSportsData()V

    .line 208
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v10}, Lcn/nubia/calendar/HomeActivity;->getYunSdkInit(Landroid/content/Context;)V

    .line 210
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initModels()V

    .line 211
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initUtils()V

    .line 212
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initWorkHandler()V

    .line 213
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->isWhetherCtsOpen()V

    .line 214
    const/4 v9, 0x4

    .line 215
    .local v9, "viewType":I
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->getCheckAcountsFlag()Z

    move-result v6

    .line 216
    .local v6, "needCheckForAccounts":Z
    if-eqz p1, :cond_3

    .line 217
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 218
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v10, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mConfigModel:Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;

    invoke-virtual {v10, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarConfigModel;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->getInitViewType()I

    move-result v9

    .line 222
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->getCheckAcountsFlag()Z

    move-result v6

    .line 256
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->asyncCreateCalendar()V

    .line 257
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v10, v6}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->asyncCheckIfNeeded(Z)V

    .line 260
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->getInstance(Landroid/content/Context;)Lcn/nubia/calendar/CalendarController;

    move-result-object v10

    iput-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mController:Lcn/nubia/calendar/CalendarController;

    .line 261
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->initSharedPreference()V

    .line 263
    const v10, 0x7f03002a

    invoke-virtual {p0, v10}, Lcn/nubia/calendar/HomeActivity;->setContentView(I)V

    .line 264
    invoke-direct {p0, v9}, Lcn/nubia/calendar/HomeActivity;->initUiComponents(I)V

    .line 265
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initTopBarController()V

    .line 266
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initBottomBarController()V

    .line 267
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initUserActionController()V

    .line 268
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initSelectDateController()V

    .line 269
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initSettingsController()V

    .line 270
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->initCurrentController()V

    .line 271
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->judgeNavigationBarExist()V

    .line 273
    const-string v10, "android.permission.READ_CALENDAR"

    invoke-static {p0, v10}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 274
    invoke-direct {p0, v9}, Lcn/nubia/calendar/HomeActivity;->adjustCurrentWorkMode(I)V

    .line 276
    :cond_1
    const-string v10, "android.permission.READ_CALENDAR"

    invoke-static {p0, v10}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v10}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 277
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->resisterReminderTimeObserver()V

    .line 279
    :cond_2
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->resisterNavigationbarOberver()V

    .line 280
    return-void

    .line 224
    :cond_3
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 225
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "action":Ljava/lang/String;
    const-string v10, "android.intent.action.VIEW"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 227
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10, v1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->parseViewAction(Landroid/content/Intent;)J

    .line 228
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->hasViewJobToDo()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 229
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->doWithCurrentViewJob()V

    goto :goto_0

    .line 231
    :cond_4
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    .line 232
    invoke-virtual {v10, v1}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    .line 233
    .local v4, "millis":J
    const-wide/16 v10, -0x1

    cmp-long v10, v4, v10

    if-eqz v10, :cond_5

    .line 234
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10, v4, v5, v12}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 237
    :cond_5
    const-string v10, "age"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 238
    const-string v10, "age"

    invoke-virtual {v1, v10, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    sput v10, Lcn/nubia/calendar/HomeActivity;->age:I

    .line 239
    sget v10, Lcn/nubia/calendar/HomeActivity;->age:I

    if-gez v10, :cond_0

    .line 240
    sput v13, Lcn/nubia/calendar/HomeActivity;->age:I

    goto/16 :goto_0

    .line 244
    .end local v4    # "millis":J
    :cond_6
    const-string v10, "cn.nubia.calendar.otherApp.VIEW_DATE"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 245
    const-string v10, "time_in_millis"

    invoke-virtual {v1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, "time":Ljava/lang/String;
    invoke-static {v8}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->getBeginMillisByTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 247
    .local v2, "gotoTime":J
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10, v2, v3, v12}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto/16 :goto_0

    .line 248
    .end local v2    # "gotoTime":J
    .end local v8    # "time":Ljava/lang/String;
    :cond_7
    const-string v10, "android.intent.action.MAIN"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 249
    new-instance v7, Landroid/text/format/Time;

    invoke-direct {v7}, Landroid/text/format/Time;-><init>()V

    .line 250
    .local v7, "t":Landroid/text/format/Time;
    invoke-virtual {v7}, Landroid/text/format/Time;->setToNow()V

    .line 251
    invoke-virtual {v7, v12}, Landroid/text/format/Time;->normalize(Z)J

    move-result-wide v2

    .line 252
    .restart local v2    # "gotoTime":J
    iget-object v10, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v10, v2, v3, v12}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 507
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onDestroy()V

    .line 509
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 511
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mWorkHandler:Landroid/os/Handler;

    .line 514
    :cond_0
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->cleanUpModels()V

    .line 515
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->destoryController()V

    .line 516
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mController:Lcn/nubia/calendar/CalendarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/CalendarController;->deregisterAllEventHandlers()V

    .line 517
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, p0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->unregisterObserver(Ljava/lang/Object;)V

    .line 518
    invoke-static {p0}, Lcn/nubia/calendar/CalendarController;->removeInstance(Landroid/content/Context;)V

    .line 519
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 520
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->unRegisterReminderTimeObserver()V

    .line 522
    :cond_1
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->unRegisterNavigationBarObserver()V

    .line 524
    invoke-static {}, Lcn/nubia/calendar/util/TrackUtils;->uninit()V

    .line 528
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk;->getInstance()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 529
    invoke-static {}, Lcom/nubia/nucms/api/NuCmsSdk;->getInstance()Lcom/nubia/nucms/api/NuCmsSdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nubia/nucms/api/NuCmsSdk;->destroy()V

    .line 532
    :cond_2
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 533
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    invoke-virtual {v0}, Lcn/nubia/commonui/app/AlertDialog;->dismiss()V

    .line 534
    iput-object v1, p0, Lcn/nubia/calendar/HomeActivity;->mDialog:Lcn/nubia/commonui/app/AlertDialog;

    .line 536
    :cond_3
    return-void
.end method

.method public onHolidayDownloadFail()V
    .locals 0

    .prologue
    .line 1021
    return-void
.end method

.method public onHolidayDownloadSuceess()V
    .locals 2

    .prologue
    .line 1009
    :try_start_0
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v1}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1010
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->doWithGotoTimeChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1015
    :cond_0
    :goto_0
    return-void

    .line 1012
    :catch_0
    move-exception v0

    .line 1013
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p1, "featureId"    # I
    .param p2, "menu"    # Landroid/view/Menu;

    .prologue
    .line 556
    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->switchMoreMenu()V

    .line 559
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 137
    invoke-super {p0, p1}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onNewIntent(Landroid/content/Intent;)V

    .line 138
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, "for_search"

    invoke-virtual {v6, v7, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 139
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->finish()V

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "action":Ljava/lang/String;
    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "KEY_HOME"

    .line 147
    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_4

    .line 148
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->parseViewAction(Landroid/content/Intent;)J

    .line 149
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->hasViewJobToDo()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->doWithCurrentViewJob()V

    goto :goto_0

    .line 152
    :cond_2
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    if-eqz v6, :cond_0

    .line 153
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mDateTimeCalcUtil:Lcn/nubia/calendar/util/DateTimeCalcUtil;

    invoke-virtual {v6, p1}, Lcn/nubia/calendar/util/DateTimeCalcUtil;->timeFromIntentInMillis(Landroid/content/Intent;)J

    move-result-wide v4

    .line 154
    .local v4, "millis":J
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-eqz v6, :cond_3

    .line 155
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6, v4, v5, v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    .line 157
    :cond_3
    const-string v6, "age"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 158
    const-string v6, "age"

    invoke-virtual {p1, v6, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    sput v6, Lcn/nubia/calendar/HomeActivity;->age:I

    .line 159
    sget v6, Lcn/nubia/calendar/HomeActivity;->age:I

    if-gez v6, :cond_0

    .line 160
    sput v8, Lcn/nubia/calendar/HomeActivity;->age:I

    goto :goto_0

    .line 165
    .end local v4    # "millis":J
    :cond_4
    const-string v6, "cn.nubia.calendar.otherApp.VIEW_DATE"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 166
    const-string v6, "time_in_millis"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 167
    .local v1, "time":Ljava/lang/String;
    invoke-static {v1}, Lcn/nubia/calendar/util/TimeHyperLinkHelper;->getBeginMillisByTime(Ljava/lang/String;)J

    move-result-wide v2

    .line 168
    .local v2, "gotoTime":J
    iget-object v6, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v6, v2, v3, v9}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->setGotoTime(JZ)V

    goto :goto_0
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 480
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onPause()V

    .line 481
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->unRegisterEventContentObserver()V

    .line 484
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    .line 392
    const/16 v2, 0x14

    if-ne p1, v2, :cond_1

    .line 393
    const/4 v1, 0x1

    .line 394
    .local v1, "requestResult":Z
    array-length v3, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, p3, v2

    .line 395
    .local v0, "i":I
    if-eqz v0, :cond_2

    .line 396
    const/4 v1, 0x0

    .line 400
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_3

    .line 401
    const/4 v2, 0x4

    invoke-direct {p0, v2}, Lcn/nubia/calendar/HomeActivity;->adjustCurrentWorkMode(I)V

    .line 402
    invoke-static {p0}, Lcn/nubia/calendar/submodule_alerts/AlertReceiver;->createLocalCalendar(Landroid/content/Context;)V

    .line 404
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->updateSportsData()V

    .line 405
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->asyncCreateCalendar()V

    .line 406
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->refreshMonthView()V

    .line 407
    invoke-static {p0}, Lcn/nubia/calendar/ui_component/widget/CalendarPressWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 415
    .end local v1    # "requestResult":Z
    :cond_1
    :goto_1
    return-void

    .line 394
    .restart local v0    # "i":I
    .restart local v1    # "requestResult":Z
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 410
    .end local v0    # "i":I
    :cond_3
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->showPermissionDialog()V

    goto :goto_1
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 503
    return-void
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 465
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onResume()V

    .line 467
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mBottomBarController:Lcn/nubia/calendar/deftcontroller/BottomBarController;

    invoke-virtual {v0}, Lcn/nubia/calendar/deftcontroller/BottomBarController;->resume()V

    .line 468
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->hasViewJobToDo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->doWithCurrentViewJob()V

    .line 471
    :cond_0
    const-string v0, "android.permission.READ_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "android.permission.WRITE_CALENDAR"

    invoke-static {p0, v0}, Lcn/nubia/calendar/util/PermissionUtils;->checkPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 472
    invoke-direct {p0}, Lcn/nubia/calendar/HomeActivity;->resisterEventContentObserver()V

    .line 475
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->invalidateOptionsMenu()V

    .line 476
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 496
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mWorkingModel:Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/model/deftmodel/LocalWorkingModel;->saveInstanceState(Landroid/os/Bundle;)V

    .line 497
    iget-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mAccountModel:Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;

    invoke-virtual {v0, p1}, Lcn/nubia/calendar/model/deftmodel/CalendarAccountModel;->saveInstanceState(Landroid/os/Bundle;)V

    .line 498
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 488
    invoke-super {p0}, Lcn/nubia/calendar/AbstractCalendarActivityMain;->onStop()V

    .line 489
    return-void
.end method

.method public refreshMonthView()V
    .locals 2

    .prologue
    .line 284
    :try_start_0
    new-instance v1, Lcn/nubia/calendar/HomeActivity$1;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$1;-><init>(Lcn/nubia/calendar/HomeActivity;)V

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    :goto_0
    return-void

    .line 294
    :catch_0
    move-exception v0

    .line 295
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setChooserIntentResult(J)V
    .locals 3
    .param p1, "eventId"    # J

    .prologue
    .line 563
    sget-object v2, Lcn/nubia/calendar/db/CustomCalendarProvider;->AGENDA_AS_ICS_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 565
    .local v1, "shareUri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEND"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 567
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "text/calendar"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 568
    const-string v2, "android.intent.extra.STREAM"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 569
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v0}, Lcn/nubia/calendar/HomeActivity;->setResult(ILandroid/content/Intent;)V

    .line 570
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_0

    .line 571
    invoke-virtual {p0}, Lcn/nubia/calendar/HomeActivity;->finish()V

    .line 573
    :cond_0
    return-void
.end method

.method public setGoToTime2RefreshWeartherView()V
    .locals 2

    .prologue
    .line 301
    :try_start_0
    new-instance v1, Lcn/nubia/calendar/HomeActivity$2;

    invoke-direct {v1, p0}, Lcn/nubia/calendar/HomeActivity$2;-><init>(Lcn/nubia/calendar/HomeActivity;)V

    invoke-virtual {p0, v1}, Lcn/nubia/calendar/HomeActivity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setLinearLayoutView()V
    .locals 1

    .prologue
    .line 791
    const v0, 0x7f11005c

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mView:Landroid/widget/LinearLayout;

    .line 792
    const v0, 0x7f11005b

    invoke-virtual {p0, v0}, Lcn/nubia/calendar/HomeActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcn/nubia/calendar/HomeActivity;->mActionBarView:Landroid/widget/RelativeLayout;

    .line 793
    return-void
.end method
