.class public interface abstract Lcom/nubia/reyun/utils/ReYunConst;
.super Ljava/lang/Object;
.source "ReYunConst.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nubia/reyun/utils/ReYunConst$DataStatus;,
        Lcom/nubia/reyun/utils/ReYunConst$Domain;,
        Lcom/nubia/reyun/utils/ReYunConst$NubiaAPI;,
        Lcom/nubia/reyun/utils/ReYunConst$NubiaResponseCode;,
        Lcom/nubia/reyun/utils/ReYunConst$Policy;,
        Lcom/nubia/reyun/utils/ReYunConst$Switch;
    }
.end annotation


# static fields
.field public static final AUDIT_MIN_INTERVAL:I = 0xa4cb80

.field public static final CONNECT_TIMEOUT:I = 0x7530

.field public static final DATABASE_EXPIRED_SECONDS:I = 0x54600

.field public static final DEFAULT_INTERVAL_SECONDS:I = 0x5460

.field public static final FETCH_MIN_TIME:I = 0x5265c00

.field public static final IS_DATA_ENCRYPT:Z = false

.field public static final KEY_AES_PUBKEY:Ljava/lang/String; = "pubpsw"

.field public static final KEY_AES_PUBVER:Ljava/lang/String; = "pubver"

.field public static final KEY_ALREADY_INSTALLED:Ljava/lang/String; = "ai"

.field public static final KEY_DEVICEID_TYPE:Ljava/lang/String; = "p_did_type"

.field public static final KEY_PAUSE_TIME:Ljava/lang/String; = "pt"

.field public static final KEY_POLICY:Ljava/lang/String; = "p"

.field public static final KEY_POLICY_COUNT:Ljava/lang/String; = "p_count"

.field public static final KEY_POLICY_TIME:Ljava/lang/String; = "p_time"

.field public static final KEY_RESUME_TIME:Ljava/lang/String; = "rt"

.field public static final KEY_SESSION_START_TIME:Ljava/lang/String; = "sst"

.field public static final KEY_TRACK_COUNT:Ljava/lang/String; = "tc"

.field public static final KEY_UUID:Ljava/lang/String; = "uuid"

.field public static final MAX_TRACK_COUNT_ONCE:I = 0x1f4

.field public static final MAX_TRACK_COUNT_ONE_DAY:I = 0x2710

.field public static final MOST_EFFORT_PROVIDER:Ljava/lang/String; = "content://cn.nubia.trafficpush/mosteeffort"

.field public static final NUBIA_API_VERSION:Ljava/lang/String; = "V1.0.2"

.field public static final POST_BATCH_MIN_INTERVAL:I = 0xea60

.field public static final READ_TIMEOUT:I = 0x7530

.field public static final REQUEST_READ_PHONE_CODE:I = 0xabcdef

.field public static final RESEND_STARTUP_INTERVAL:I = 0x7530

.field public static final RETRY_COUNT_LIMIT:I = 0x2

.field public static final RETRY_DELAY:J = 0x493e0L

.field public static final REYUN_STORE_DS_PREFERENCE:Ljava/lang/String; = "ds"

.field public static final REYUN_STORE_PREFERENCE:Ljava/lang/String; = "ry"

.field public static final SDK_NAME:Ljava/lang/String; = "nubia.reyun"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.6.1_05191"

.field public static final SESSION_END_LIMIT:J = 0x7530L

.field public static final STR_AES_KEY_DEFAULT:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCW8j7TRqevpsAoWS7qWbHofKYiF1ZEVBtxzqpkU0OREYfSj+NBc2uEcBYcIMGJaKML11zFL0gLWxSjh3LZ+roza1kq8FaligQjeHxmf7lueyRJSlLL3BDW8teXrLBD30c19upLJ6uqyVQWtbmv6+34MfIMJdvKO5xDqRgrvms+JwIDAQAB"

.field public static final STR_AES_KEY_DEFAULT_VERSION:I = 0x1

.field public static final STR_AES_TRAFFIC_VERSION_CODE:I = 0x1e

.field public static final STR_AUDIT_TIME:Ljava/lang/String; = "audit_time"

.field public static final STR_CONTEXT:Ljava/lang/String; = "context"

.field public static final STR_DURATION:Ljava/lang/String; = "duration"

.field public static final STR_END_TIME:Ljava/lang/String; = "end_time"

.field public static final STR_FETCH_TIME:Ljava/lang/String; = "fetch_time"

.field public static final STR_PHONE:Ljava/lang/String; = "phone"

.field public static final STR_POST_BATCH_TIME:Ljava/lang/String; = "post_batch_time"

.field public static final STR_SESSION:Ljava/lang/String; = "session"

.field public static final STR_START_TIME:Ljava/lang/String; = "start_time"

.field public static final STR_SWITCH:Ljava/lang/String; = "switch"

.field public static final STR_TABLET:Ljava/lang/String; = "table"

.field public static final STR_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final TAG:Ljava/lang/String;

.field public static final encryptVersion:Ljava/lang/String; = "1.0"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/nubia/reyun/sdk/ReYunSDK;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nubia/reyun/utils/ReYunConst;->TAG:Ljava/lang/String;

    .line 62
    return-void
.end method
