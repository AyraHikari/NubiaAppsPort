.class public Lcn/nubia/upgrade/constants/HttpConstants;
.super Ljava/lang/Object;
.source "HttpConstants.java"


# static fields
.field public static final DEVICE_TYPE:Ljava/lang/String; = "device"

.field public static final FILE_CONTENT_TYPE:Ljava/lang/String; = "application/ausp"

.field public static final FROM_VERSION_CODE:Ljava/lang/String; = "from_version_code"

.field public static final FROM_VERSION_NAME:Ljava/lang/String; = "from_version_name"

.field public static final GETVERSION:Ljava/lang/String; = "service/get_version.do"

.field public static final GET_UPDATE_REPORT:Ljava/lang/String; = "service/upgrade_report.do"

.field public static final GET_VERSION_WITH_CONFIG:Ljava/lang/String; = "service/get_version_with_config.do"

.field public static final HTTP_DOMAIN_TEST:Ljava/lang/String; = "http://ausp-test.nubia.com/"

.field public static final HTTP_DOMAI_RELEASE:Ljava/lang/String; = "http://ausp.server.nubia.cn/"

.field public static final HTTP_HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HTTP_READ_TIME_OUT:I = 0x1388

.field public static final HTTP_TIME_OUT:I = 0x3a98

.field public static final MESSAGE_TRIGGER:Ljava/lang/String; = "message_trigger"

.field public static final MSG_REQUEST_LIST:Ljava/lang/String; = "msg_request_list"

.field public static final PACKAGE_MD5:Ljava/lang/String; = "check_sum"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final PACKAGE_PATCH_MD5:Ljava/lang/String; = ""

.field public static final PACKAGE_UNIQUE_KEY:Ljava/lang/String; = "unique_key"

.field public static final PACKAGE_VERSION_CODE:Ljava/lang/String; = "version_code"

.field public static final PATCH_VALUE:Ljava/lang/String; = "patch_value"

.field public static final PHONE_IMEI:Ljava/lang/String; = "imei"

.field public static final PHONE_ROM:Ljava/lang/String; = "rom"

.field public static final PHONE_TYPE:Ljava/lang/String; = "mobile_type"

.field public static final UPGRADE_SERVICE_CONFIG:Ljava/lang/String; = "upgrade_service_config"

.field public static final UPGRADE_STATUS:Ljava/lang/String; = "upgrade_status"

.field public static final UPGRADE_TYPE:Ljava/lang/String; = "upgrade_type"

.field private static sDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const/4 v0, 0x0

    sput-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Z)V
    .locals 0

    .prologue
    .line 44
    sput-boolean p0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    .line 45
    return-void
.end method

.method public static getCheckVersionURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    sget-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "http://ausp-test.nubia.com/service/get_version.do"

    .line 51
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://ausp.server.nubia.cn/service/get_version.do"

    goto :goto_0
.end method

.method public static getDownloadUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getReportURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    if-eqz v0, :cond_0

    .line 67
    const-string v0, "http://ausp-test.nubia.com/service/upgrade_report.do"

    .line 69
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://ausp.server.nubia.cn/service/upgrade_report.do"

    goto :goto_0
.end method

.method public static getVersionURLWithConfig()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcn/nubia/upgrade/constants/HttpConstants;->sDebug:Z

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "http://ausp-test.nubia.com/service/get_version_with_config.do"

    .line 60
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "http://ausp.server.nubia.cn/service/get_version_with_config.do"

    goto :goto_0
.end method
