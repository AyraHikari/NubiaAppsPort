.class public Lcom/hpplay/sdk/source/common/cloud/CloudAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static AUTH_DEBUG:Ljava/lang/String; = null

.field public static AUTH_HUAWEI:Ljava/lang/String; = null

.field public static AUTH_NUBIA:Ljava/lang/String; = null

.field public static AUTH_RELEASE:Ljava/lang/String; = null

.field public static AUTH_VO:Ljava/lang/String; = null

.field public static AUTH_XIAOMI:Ljava/lang/String; = null

.field public static final KEY_AD:Ljava/lang/String; = "key_ad"

.field public static final KEY_ADENGINE:Ljava/lang/String; = "key_adengine"

.field public static final KEY_ALL_URLS:Ljava/lang/String; = "all_urls"

.field public static final KEY_DATA_REPORT:Ljava/lang/String; = "key_data_report"

.field public static final KEY_DEBUNG_AUTH:Ljava/lang/String; = "key_debug_auth"

.field public static final KEY_DEV_MANAGER:Ljava/lang/String; = "key_dev_mgr"

.field public static final KEY_GLSB:Ljava/lang/String; = "key_gslb"

.field public static final KEY_HUAWEI_AUTH:Ljava/lang/String; = "key_huawei"

.field public static final KEY_MDNS:Ljava/lang/String; = "key_mdns"

.field public static final KEY_NUBIA_AUTH:Ljava/lang/String; = "key_nubia_auth"

.field public static final KEY_PINCODE:Ljava/lang/String; = "key_pincode"

.field public static final KEY_RELEASE_AUTH:Ljava/lang/String; = "key_release_auth"

.field public static final KEY_SHORT_LINK:Ljava/lang/String; = "key_short_link"

.field public static final KEY_TXT_INFO:Ljava/lang/String; = "key_txt_info"

.field public static final KEY_VO_AUTH:Ljava/lang/String; = "key_vo"

.field public static final KEY_XIAOMI_AUTH:Ljava/lang/String; = "key_xiaomi"

.field public static URL_TXT_INFO:Ljava/lang/String;

.field public static VERIFY_URL:Ljava/lang/String;

.field public static logReportUrl:Ljava/lang/String;

.field public static multiMirrorPinUrl:Ljava/lang/String;

.field public static parse_qrinfo_url:Ljava/lang/String;

.field public static passthrough_push_url:Ljava/lang/String;

.field public static s3rdPartyReport:Ljava/lang/String;

.field public static sADEngineUrl:Ljava/lang/String;

.field public static sADUrl:Ljava/lang/String;

.field public static sAddDevice:Ljava/lang/String;

.field public static sConferenceCodeAuth:Ljava/lang/String;

.field public static sConferenceLikeEqAuth:Ljava/lang/String;

.field public static sConferenceRoot:Ljava/lang/String;

.field public static sDeleteDevice:Ljava/lang/String;

.field public static sDeviceMgrUrl:Ljava/lang/String;

.field public static sFetchCreative:Ljava/lang/String;

.field public static sGLSBRoot:Ljava/lang/String;

.field public static sGetDevice:Ljava/lang/String;

.field public static sGetTVListStatus:Ljava/lang/String;

.field public static sImDNSUrl:Ljava/lang/String;

.field public static sImServer:Ljava/lang/String;

.field public static sLogReportQueryUrl:Ljava/lang/String;

.field public static sPinRoot:Ljava/lang/String;

.field public static sPinUrl:Ljava/lang/String;

.field public static sReportAd:Ljava/lang/String;

.field public static sReportConn:Ljava/lang/String;

.field public static sReportConnLive:Ljava/lang/String;

.field public static sReportError:Ljava/lang/String;

.field public static sReportLogIn:Ljava/lang/String;

.field public static sReportLogOut:Ljava/lang/String;

.field public static sReportMirror:Ljava/lang/String;

.field public static sReportPush:Ljava/lang/String;

.field public static sReportRelation:Ljava/lang/String;

.field public static sReportRoot:Ljava/lang/String;

.field public static sReportUserBehavior:Ljava/lang/String;

.field public static sShortLink:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/getall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGetDevice:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/addlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sAddDevice:Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/deletelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeleteDevice:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PassThrough"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->passthrough_push_url:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sShortLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/leboServer/parseShortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->parse_qrinfo_url:Ljava/lang/String;

    .line 64
    const-string v0, "http://192.168.8.230:8000"

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    .line 67
    const-string v0, ""

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sImServer:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/codeAuth?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinUrl:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GetTVListStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGetTVListStatus:Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Monitor3rd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->s3rdPartyReport:Ljava/lang/String;

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logins?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportLogIn:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logouts?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportLogOut:Ljava/lang/String;

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/push?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportPush:Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mirror?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportMirror:Ljava/lang/String;

    .line 82
    const-string v0, "/relation?"

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRelation:Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportConn:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adreport?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportAd:Ljava/lang/String;

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportUserBehavior:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn_live?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportConnLive:Ljava/lang/String;

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADEngineUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adEngine/fetchCreative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sFetchCreative:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apicode/codeAuth?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceCodeAuth:Ljava/lang/String;

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apicode/likeEQdata?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceLikeEqAuth:Ljava/lang/String;

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/code/codeDetail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->multiMirrorPinUrl:Ljava/lang/String;

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/erlog?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportError:Ljava/lang/String;

    .line 104
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->getLogReportUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->logReportUrl:Ljava/lang/String;

    .line 106
    invoke-static {}, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->getLogReportQueryUrl()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sLogReportQueryUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_XIAOMI:Ljava/lang/String;

    .line 122
    :goto_0
    return-object v0

    .line 115
    :cond_0
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_VO:Ljava/lang/String;

    goto :goto_0

    .line 117
    :cond_1
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 118
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_HUAWEI:Ljava/lang/String;

    goto :goto_0

    .line 119
    :cond_2
    invoke-static {}, Lcom/hpplay/sdk/source/d/e;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 120
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_NUBIA:Ljava/lang/String;

    goto :goto_0

    .line 122
    :cond_3
    sget-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->AUTH_RELEASE:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getLogReportQueryUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    const-string v0, "http://logu.hpplay.cn:8855"

    return-object v0
.end method

.method private static getLogReportUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    const-string v0, "http://logu.hpplay.cn:8865"

    return-object v0
.end method

.method public static getQrCodeHttpServerUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 109
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->URL_TXT_INFO:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static updateDynamicUrls()V
    .locals 2

    .prologue
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logins?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportLogIn:Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logouts?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportLogOut:Ljava/lang/String;

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/push?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportPush:Ljava/lang/String;

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mirror?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportMirror:Ljava/lang/String;

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/relation?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRelation:Ljava/lang/String;

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportConn:Ljava/lang/String;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/service?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportUserBehavior:Ljava/lang/String;

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adreport?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportAd:Ljava/lang/String;

    .line 164
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sADEngineUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/adEngine/fetchCreative"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sFetchCreative:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/codeAuth?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinUrl:Ljava/lang/String;

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conn_live?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportConnLive:Ljava/lang/String;

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/erlog?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sReportError:Ljava/lang/String;

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/GetTVListStatus"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGetTVListStatus:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Monitor3rd"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->s3rdPartyReport:Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/getall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGetDevice:Ljava/lang/String;

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/addlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sAddDevice:Ljava/lang/String;

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeviceMgrUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/tvshare/deletelist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sDeleteDevice:Ljava/lang/String;

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sGLSBRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/PassThrough"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->passthrough_push_url:Ljava/lang/String;

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apicode/codeAuth?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceCodeAuth:Ljava/lang/String;

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/apicode/likeEQdata?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sConferenceLikeEqAuth:Ljava/lang/String;

    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sShortLink:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/leboServer/parseShortUrl"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->parse_qrinfo_url:Ljava/lang/String;

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->sPinRoot:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/code/codeDetail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/hpplay/sdk/source/common/cloud/CloudAPI;->multiMirrorPinUrl:Ljava/lang/String;

    .line 190
    return-void
.end method
