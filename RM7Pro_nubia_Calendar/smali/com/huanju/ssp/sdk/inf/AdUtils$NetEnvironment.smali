.class public final enum Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
.super Ljava/lang/Enum;
.source "AdUtils.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/sdk/inf/AdUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetEnvironment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

.field public static final enum DEBUG:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

.field public static final enum ONLINE:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->DEBUG:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    new-instance v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    const-string v1, "ONLINE"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->ONLINE:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->DEBUG:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->ONLINE:Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->$VALUES:[Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->$VALUES:[Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    invoke-virtual {v0}, [Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/sdk/inf/AdUtils$NetEnvironment;

    return-object v0
.end method
