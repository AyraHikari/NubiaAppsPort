.class public final enum Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;
.super Ljava/lang/Enum;
.source "Config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/common/Config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

.field public static final enum DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

.field public static final enum ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 718
    new-instance v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    new-instance v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    .line 717
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    sget-object v1, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->DEBUG:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->ONLINE:Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->$VALUES:[Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

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
    .line 717
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 717
    const-class v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;
    .locals 1

    .prologue
    .line 717
    sget-object v0, Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->$VALUES:[Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/core/common/Config$NetEnvironment;

    return-object v0
.end method
