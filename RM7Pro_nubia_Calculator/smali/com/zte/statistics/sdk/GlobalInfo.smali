.class public Lcom/zte/statistics/sdk/GlobalInfo;
.super Ljava/lang/Object;
.source "GlobalInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/statistics/sdk/GlobalInfo$SDKConfig;
    }
.end annotation


# static fields
.field public static URL_BASE:Ljava/lang/String; = null

.field public static appid:Ljava/lang/String; = null

.field public static brand:Ljava/lang/String; = null

.field public static criterion:J = 0x0L

.field public static did:Ljava/lang/String; = null

.field public static eventorder:I = 0x0

.field public static initialized:Z = false

.field public static initialized_db:Z = false

.field public static innerModel:Ljava/lang/String; = null

.field public static innerVersion:Ljava/lang/String; = null

.field public static language:Ljava/lang/String; = null

.field public static manufacturer:Ljava/lang/String; = null

.field public static market:Ljava/lang/String; = "preload"

.field public static mfvVersion:Ljava/lang/String; = null

.field public static model:Ljava/lang/String; = null

.field public static msg:Ljava/lang/String; = null

.field public static ns:Ljava/lang/String; = "statistics"

.field public static open_debug:Z = false

.field public static os_id:Ljava/lang/String; = null

.field public static os_version:Ljava/lang/String; = null

.field public static pureInit:Z = false

.field public static resolutions:Ljava/lang/String; = null

.field public static final sdk_version:Ljava/lang/String; = "5.0.5"

.field public static sessionID:I = -0x1

.field public static versionCode:Ljava/lang/String;

.field public static versionName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    sget-object v0, Lcom/zte/statistics/sdk/comm/ConstantDefine;->defualtUrl:Ljava/lang/String;

    sput-object v0, Lcom/zte/statistics/sdk/GlobalInfo;->URL_BASE:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    sput v0, Lcom/zte/statistics/sdk/GlobalInfo;->eventorder:I

    .line 47
    sput-boolean v0, Lcom/zte/statistics/sdk/GlobalInfo;->open_debug:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
