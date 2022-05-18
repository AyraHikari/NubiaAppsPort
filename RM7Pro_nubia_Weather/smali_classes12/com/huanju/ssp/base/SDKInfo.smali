.class public Lcom/huanju/ssp/base/SDKInfo;
.super Ljava/lang/Object;
.source "SDKInfo.java"


# static fields
.field public static final AD_TEXT:Ljava/lang/String; = "\u5e7f\u544a"

.field public static final API_VERSION:Ljava/lang/String; = "1.3.2"

.field public static final API_VERSION_CODE:I = 0x84

.field public static AUTH_KEY:Ljava/lang/String; = null

.field public static AUTH_TOKEN_ID:Ljava/lang/String; = null

.field public static final CHANNEL_ID:Ljava/lang/String; = "1"

.field public static final CLK_TEXT:Ljava/lang/String; = "\u70b9\u51fb\u8df3\u8f6c\u8be6\u60c5\u9875\u9762\u6216\u7b2c\u4e09\u65b9\u5e94\u7528 >"

.field public static final CLO_SIGN:Ljava/lang/String; = "\u00d7"

.field public static final CLO_TEXT:Ljava/lang/String; = "\u8df3\u8fc7"

.field public static final DB_VER:I = 0x5

.field public static final EXTEND_TEXT:Ljava/lang/String; = "\u63a8\u5e7f"

.field public static final SDK:Ljava/lang/String; = "SSP_SDK"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.46.3"

.field public static final TAG:Ljava/lang/String; = "nubia_ad"

.field public static UNIQUE_KEY:Ljava/lang/String; = null

.field public static final UPDATE:Z = true

.field public static final VER_CODE:I = 0x1

.field public static isMonkeyTest:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput-boolean v0, Lcom/huanju/ssp/base/SDKInfo;->isMonkeyTest:Z

    .line 33
    const-string v0, "100100"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->UNIQUE_KEY:Ljava/lang/String;

    .line 34
    const-string v0, "y1BJyl3100a12aab"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_TOKEN_ID:Ljava/lang/String;

    .line 35
    const-string v0, "c2f619ae3441ce20"

    sput-object v0, Lcom/huanju/ssp/base/SDKInfo;->AUTH_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
