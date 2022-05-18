.class public final enum Lcom/hpplay/common/asyncmanager/HttpMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hpplay/common/asyncmanager/HttpMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum DELETE:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum GET:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum HEAD:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum OPTIONS:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum POST:Lcom/hpplay/common/asyncmanager/HttpMethod;

.field public static final enum PUT:Lcom/hpplay/common/asyncmanager/HttpMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 11
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "DELETE"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->DELETE:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 16
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "GET"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->GET:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 21
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "HEAD"

    invoke-direct {v0, v1, v5}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->HEAD:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 26
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "POST"

    invoke-direct {v0, v1, v6}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->POST:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 31
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "PUT"

    invoke-direct {v0, v1, v7}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->PUT:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 36
    new-instance v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    const-string v1, "OPTIONS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/hpplay/common/asyncmanager/HttpMethod;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->OPTIONS:Lcom/hpplay/common/asyncmanager/HttpMethod;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/hpplay/common/asyncmanager/HttpMethod;

    sget-object v1, Lcom/hpplay/common/asyncmanager/HttpMethod;->DELETE:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hpplay/common/asyncmanager/HttpMethod;->GET:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hpplay/common/asyncmanager/HttpMethod;->HEAD:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v1, v0, v5

    sget-object v1, Lcom/hpplay/common/asyncmanager/HttpMethod;->POST:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v1, v0, v6

    sget-object v1, Lcom/hpplay/common/asyncmanager/HttpMethod;->PUT:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/hpplay/common/asyncmanager/HttpMethod;->OPTIONS:Lcom/hpplay/common/asyncmanager/HttpMethod;

    aput-object v2, v0, v1

    sput-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->$VALUES:[Lcom/hpplay/common/asyncmanager/HttpMethod;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hpplay/common/asyncmanager/HttpMethod;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hpplay/common/asyncmanager/HttpMethod;

    return-object v0
.end method

.method public static values()[Lcom/hpplay/common/asyncmanager/HttpMethod;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/hpplay/common/asyncmanager/HttpMethod;->$VALUES:[Lcom/hpplay/common/asyncmanager/HttpMethod;

    invoke-virtual {v0}, [Lcom/hpplay/common/asyncmanager/HttpMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/common/asyncmanager/HttpMethod;

    return-object v0
.end method
