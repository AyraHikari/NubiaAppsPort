.class final enum Lcom/hpplay/sdk/source/a/a$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/sdk/source/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hpplay/sdk/source/a/a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum RUNNING:Lcom/hpplay/sdk/source/a/a$b;

.field public static final enum STOPPED:Lcom/hpplay/sdk/source/a/a$b;

.field public static final enum STOPPING:Lcom/hpplay/sdk/source/a/a$b;

.field private static final synthetic a:[Lcom/hpplay/sdk/source/a/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 28
    new-instance v0, Lcom/hpplay/sdk/source/a/a$b;

    const-string v1, "STOPPED"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/sdk/source/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    new-instance v0, Lcom/hpplay/sdk/source/a/a$b;

    const-string v1, "STOPPING"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/sdk/source/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/a/a$b;->STOPPING:Lcom/hpplay/sdk/source/a/a$b;

    new-instance v0, Lcom/hpplay/sdk/source/a/a$b;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/sdk/source/a/a$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    .line 27
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/hpplay/sdk/source/a/a$b;

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPED:Lcom/hpplay/sdk/source/a/a$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->STOPPING:Lcom/hpplay/sdk/source/a/a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hpplay/sdk/source/a/a$b;->RUNNING:Lcom/hpplay/sdk/source/a/a$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/hpplay/sdk/source/a/a$b;->a:[Lcom/hpplay/sdk/source/a/a$b;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hpplay/sdk/source/a/a$b;
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/hpplay/sdk/source/a/a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hpplay/sdk/source/a/a$b;

    return-object v0
.end method

.method public static values()[Lcom/hpplay/sdk/source/a/a$b;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/hpplay/sdk/source/a/a$b;->a:[Lcom/hpplay/sdk/source/a/a$b;

    invoke-virtual {v0}, [Lcom/hpplay/sdk/source/a/a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/sdk/source/a/a$b;

    return-object v0
.end method
