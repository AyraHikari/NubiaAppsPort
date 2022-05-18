.class public final enum Lcom/hpplay/common/utils/NetworkUtil$NetworkType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/common/utils/NetworkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hpplay/common/utils/NetworkUtil$NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_2G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_3G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_4G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_NO:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_UNKNOWN:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

.field public static final enum NETWORK_WIFI:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 34
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_WIFI:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 35
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_4G"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_4G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 36
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_3G"

    invoke-direct {v0, v1, v5}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_3G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 37
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_2G"

    invoke-direct {v0, v1, v6}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_2G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 38
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_UNKNOWN"

    invoke-direct {v0, v1, v7}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 39
    new-instance v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    const-string v1, "NETWORK_NO"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_NO:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    .line 33
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_WIFI:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_4G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_3G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_2G:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_UNKNOWN:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->NETWORK_NO:Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->$VALUES:[Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hpplay/common/utils/NetworkUtil$NetworkType;
    .locals 1

    .prologue
    .line 33
    const-class v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/hpplay/common/utils/NetworkUtil$NetworkType;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->$VALUES:[Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    invoke-virtual {v0}, [Lcom/hpplay/common/utils/NetworkUtil$NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/common/utils/NetworkUtil$NetworkType;

    return-object v0
.end method
