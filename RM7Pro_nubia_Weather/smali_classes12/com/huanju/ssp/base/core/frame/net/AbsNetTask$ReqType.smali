.class public final enum Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
.super Ljava/lang/Enum;
.source "AbsNetTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/frame/net/AbsNetTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ReqType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

.field public static final enum Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

.field public static final enum Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 324
    new-instance v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    const-string v1, "Get"

    invoke-direct {v0, v1, v2}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    new-instance v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    const-string v1, "Post"

    invoke-direct {v0, v1, v3}, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    .line 323
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Get:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->Post:Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->$VALUES:[Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

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
    .line 323
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 323
    const-class v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    return-object v0
.end method

.method public static values()[Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;
    .locals 1

    .prologue
    .line 323
    sget-object v0, Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->$VALUES:[Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    invoke-virtual {v0}, [Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/huanju/ssp/base/core/frame/net/AbsNetTask$ReqType;

    return-object v0
.end method
