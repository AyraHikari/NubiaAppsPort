.class public Lcn/nubia/analytic/util/Consts;
.super Ljava/lang/Object;
.source "Consts.java"


# static fields
.field public static final ANDROID:Ljava/lang/String; = "Android"

.field public static final APP_MAX_NUM_PER_DAY:I = 0xbb8

.field public static final BATCH_SIZE:I = 0xa

.field public static final BIG_DATA_SLICE_SIZE:I = 0x800

.field public static final CDMA:Ljava/lang/String; = "CDMA"

.field public static final CRASH_INFO_MAX_LENGTH:I = 0xbb8

.field public static final CRASH_KEY:Ljava/lang/String; = "Crash"

.field public static final DEFAULT_APP_VERSION_CODE:I = 0x1

.field public static final DEFAULT_COUNTRY_CODE:Ljava/lang/String; = "CN"

.field public static final DEFAULT_LANGUAGE_CODE:Ljava/lang/String; = "zh"

.field public static final DEFAULT_SEND_STRATEGY_ID:I = 0x0

.field public static final DEFAULT_TIME_ZONE:I = 0x8

.field public static final EDGE:Ljava/lang/String; = "EDGE"

.field public static final EHRPD:Ljava/lang/String; = "EHRPD"

.field public static final EVDO_0:Ljava/lang/String; = "EVDO_0"

.field public static final EVDO_A:Ljava/lang/String; = "EVDO_A"

.field public static final EVDO_B:Ljava/lang/String; = "EVDO_B"

.field public static final EVENT_KEY:Ljava/lang/String; = "Event"

.field public static final FIRST_SLICE:I = 0x0

.field public static final GPRS:Ljava/lang/String; = "GPRS"

.field public static final HSDPA:Ljava/lang/String; = "HSDPA"

.field public static final HSPA:Ljava/lang/String; = "HSPA"

.field public static final HSPAP:Ljava/lang/String; = "HSPAP"

.field public static final HSUPA:Ljava/lang/String; = "HSUPA"

.field public static final IDEN:Ljava/lang/String; = "IDEN"

.field public static final LAST_SLICE:I = 0x2

.field public static final LTE:Ljava/lang/String; = "LTE"

.field public static final MAX_DATA_STORE_IN_HOUR:I = 0x48

.field public static final MAX_NUM_PER_SEND:I = 0x1770

.field public static final METHOD_ONPAUSE:Ljava/lang/String; = "onPause"

.field public static final METHOD_ONRESUME:Ljava/lang/String; = "onResume"

.field public static final MIDDLE_SLICE:I = 0x1

.field public static final NETWORK_TYPE_2G:Ljava/lang/String; = "2G"

.field public static final NETWORK_TYPE_3G:Ljava/lang/String; = "3G"

.field public static final NETWORK_TYPE_4G:Ljava/lang/String; = "4G"

.field public static final NETWORK_TYPE_WIFI:Ljava/lang/String; = "WIFI"

.field public static final NO_SLICE:I = 0x0

.field public static final NO_URGENT_DATA:I = -0x1

.field public static final NUBIA_ACCOUNT_APP_NAME:Ljava/lang/String; = "cn.nubia.accounts"

.field public static final NUBIA_ACCOUNT_FIELD_MOBILE:Ljava/lang/String; = "mobile"

.field public static final NUBIA_ACCOUNT_FIELD_NICK_NAME:Ljava/lang/String; = "nickname"

.field public static final NUBIA_ACCOUNT_FIELD_USER_ID:Ljava/lang/String; = "userId"

.field public static final NUBIA_ACCOUNT_FIELD_USER_NAME:Ljava/lang/String; = "username"

.field public static final NUBIA_ACCOUNT_TYPE:Ljava/lang/String; = "com.ztemt"

.field public static final NUBIA_CATEGORY:Ljava/lang/String; = "nubia_category"

.field public static final NUBIA_CATEGORY_DEFAULT:Ljava/lang/String; = "nubia_category_default"

.field public static final NUBIA_EVENTID:Ljava/lang/String; = "nubia_eventid"

.field public static final NUBIA_PUSH_APP_NAME:Ljava/lang/String; = "cn.nubia.neopush"

.field public static final NUBIA_TRAFFIC_CONTROL_APP_NAME:Ljava/lang/String; = "cn.nubia.trafficcontrol"

.field public static final NUBIA_TRAFFIC_CONTROL_SERVICE_NAME:Ljava/lang/String; = "cn.nubia.trafficcontrol.service.TrafficControlService"

.field public static final PREF_KEY_STRATEGY_TYPE:Ljava/lang/String; = "pref_key_strategy_type"

.field public static final PREF_KEY_SWITCH_EVENTS:Ljava/lang/String; = "pref_key_switch_events"

.field public static final REMOTE_RESPONSE_START:I = 0x1

.field public static final REMOTE_RESPONSE_SUCCESS:I = 0x2

.field public static final RTT:Ljava/lang/String; = "RTT"

.field public static final SEND_STATUS_SENDING:I = 0x0

.field public static final SEND_STATUS_SEND_COMPLETED:I = 0x1

.field public static final SEND_STATUS_SEND_UNSEND:I = 0x2

.field public static final SESSION_DATA_INVALID_PERIOD:I = 0x5a0

.field public static final SESSION_KEY:Ljava/lang/String; = "Session"

.field public static final SLICE:I = 0x1

.field public static final UMTS:Ljava/lang/String; = "UMTS"

.field public static final UN_KNOWN:Ljava/lang/String; = "unKnow"

.field public static final UN_KNOWN_DEVICE_MANUTIME:J = 0x0L

.field public static final UN_KNOWN_RESOLUTION:I = 0x0

.field public static final UPDATE_APK_PATH:Ljava/lang/String; = "update_apk_path"

.field public static final URGENT_DATA:I = 0x0

.field public static final USER_EXPERIENCE_PLAN:Ljava/lang/String; = "user_experience_plan"

.field public static final ZTE_PUSH_APP_NAME:Ljava/lang/String; = "com.zte.neopush"

.field public static sConnectServiceTimeout:I

.field public static sDataUploadPeriod:I

.field public static sIsSdkVersionHigherThanDataUpload:Z

.field public static sStopServiceTimeout:I

.field public static sUnBindServiceTimeout:I

.field public static sUrgentDataUploadPeriod:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const v0, 0x927c0

    sput v0, Lcn/nubia/analytic/util/Consts;->sUnBindServiceTimeout:I

    .line 50
    const/16 v0, 0x4e20

    sput v0, Lcn/nubia/analytic/util/Consts;->sConnectServiceTimeout:I

    .line 95
    const/16 v0, 0x168

    sput v0, Lcn/nubia/analytic/util/Consts;->sDataUploadPeriod:I

    .line 97
    const/16 v0, 0xa

    sput v0, Lcn/nubia/analytic/util/Consts;->sUrgentDataUploadPeriod:I

    .line 100
    const v0, 0x493e0

    sput v0, Lcn/nubia/analytic/util/Consts;->sStopServiceTimeout:I

    .line 103
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/analytic/util/Consts;->sIsSdkVersionHigherThanDataUpload:Z

    .line 122
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
