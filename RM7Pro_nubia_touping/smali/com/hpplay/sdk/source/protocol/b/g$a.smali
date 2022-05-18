.class public final enum Lcom/hpplay/sdk/source/protocol/b/g$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/protocol/b/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hpplay/sdk/source/protocol/b/g$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BAD_CREDENTIALS:Lcom/hpplay/sdk/source/protocol/b/g$a;

.field public static final enum BAD_PUBLIC_VALUE:Lcom/hpplay/sdk/source/protocol/b/g$a;

.field public static final enum TIMEOUT:Lcom/hpplay/sdk/source/protocol/b/g$a;

.field private static final synthetic a:[Lcom/hpplay/sdk/source/protocol/b/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g$a;

    const-string v1, "BAD_PUBLIC_VALUE"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/protocol/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_PUBLIC_VALUE:Lcom/hpplay/sdk/source/protocol/b/g$a;

    .line 30
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g$a;

    const-string v1, "BAD_CREDENTIALS"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/sdk/source/protocol/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_CREDENTIALS:Lcom/hpplay/sdk/source/protocol/b/g$a;

    .line 36
    new-instance v0, Lcom/hpplay/sdk/source/protocol/b/g$a;

    const-string v1, "TIMEOUT"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/protocol/b/g$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/protocol/b/g$a;->TIMEOUT:Lcom/hpplay/sdk/source/protocol/b/g$a;

    .line 18
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hpplay/sdk/source/protocol/b/g$a;

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_PUBLIC_VALUE:Lcom/hpplay/sdk/source/protocol/b/g$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/g$a;->BAD_CREDENTIALS:Lcom/hpplay/sdk/source/protocol/b/g$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hpplay/sdk/source/protocol/b/g$a;->TIMEOUT:Lcom/hpplay/sdk/source/protocol/b/g$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hpplay/sdk/source/protocol/b/g$a;->a:[Lcom/hpplay/sdk/source/protocol/b/g$a;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hpplay/sdk/source/protocol/b/g$a;
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/protocol/b/g$a;

    return-object v0
.end method

.method public static values()[Lcom/hpplay/sdk/source/protocol/b/g$a;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/hpplay/sdk/source/protocol/b/g$a;->a:[Lcom/hpplay/sdk/source/protocol/b/g$a;

    invoke-virtual {v0}, [Lcom/hpplay/sdk/source/protocol/b/g$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/protocol/b/g$a;

    return-object v0
.end method
