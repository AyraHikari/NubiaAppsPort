.class public final enum Lcom/hpplay/a/e$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hpplay/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/hpplay/a/e$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/hpplay/a/e$a;

.field public static final enum b:Lcom/hpplay/a/e$a;

.field public static final enum c:Lcom/hpplay/a/e$a;

.field public static final enum d:Lcom/hpplay/a/e$a;

.field private static final synthetic e:[Lcom/hpplay/a/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/hpplay/a/e$a;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v2}, Lcom/hpplay/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/a/e$a;->a:Lcom/hpplay/a/e$a;

    new-instance v0, Lcom/hpplay/a/e$a;

    const-string v1, "VERTICAL"

    invoke-direct {v0, v1, v3}, Lcom/hpplay/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/a/e$a;->b:Lcom/hpplay/a/e$a;

    new-instance v0, Lcom/hpplay/a/e$a;

    const-string v1, "UPSIDEDOWN_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/hpplay/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/a/e$a;->c:Lcom/hpplay/a/e$a;

    new-instance v0, Lcom/hpplay/a/e$a;

    const-string v1, "UPSIDEDOWN_VERTICAL"

    invoke-direct {v0, v1, v5}, Lcom/hpplay/a/e$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/hpplay/a/e$a;->d:Lcom/hpplay/a/e$a;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/hpplay/a/e$a;

    sget-object v1, Lcom/hpplay/a/e$a;->a:Lcom/hpplay/a/e$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/hpplay/a/e$a;->b:Lcom/hpplay/a/e$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/hpplay/a/e$a;->c:Lcom/hpplay/a/e$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/hpplay/a/e$a;->d:Lcom/hpplay/a/e$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/hpplay/a/e$a;->e:[Lcom/hpplay/a/e$a;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hpplay/a/e$a;
    .locals 1

    .prologue
    .line 53
    const-class v0, Lcom/hpplay/a/e$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/hpplay/a/e$a;

    return-object v0
.end method

.method public static values()[Lcom/hpplay/a/e$a;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/hpplay/a/e$a;->e:[Lcom/hpplay/a/e$a;

    invoke-virtual {v0}, [Lcom/hpplay/a/e$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hpplay/a/e$a;

    return-object v0
.end method
