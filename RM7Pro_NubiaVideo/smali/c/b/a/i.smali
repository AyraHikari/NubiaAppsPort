.class public final enum Lc/b/a/i;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/i;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a/i;

.field public static final enum b:Lc/b/a/i;

.field public static final enum c:Lc/b/a/i;

.field public static final enum d:Lc/b/a/i;

.field public static final enum e:Lc/b/a/i;

.field private static final synthetic f:[Lc/b/a/i;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lc/b/a/i;

    const-string v1, "IMMEDIATE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/i;->a:Lc/b/a/i;

    .line 2
    new-instance v1, Lc/b/a/i;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/b/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/b/a/i;->b:Lc/b/a/i;

    .line 3
    new-instance v3, Lc/b/a/i;

    const-string v5, "NORMAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/b/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/b/a/i;->c:Lc/b/a/i;

    .line 4
    new-instance v5, Lc/b/a/i;

    const-string v7, "LOW"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/b/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/b/a/i;->d:Lc/b/a/i;

    new-instance v7, Lc/b/a/i;

    const-string v9, "priority"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/b/a/i;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/b/a/i;->e:Lc/b/a/i;

    const/4 v9, 0x5

    new-array v9, v9, [Lc/b/a/i;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 5
    sput-object v9, Lc/b/a/i;->f:[Lc/b/a/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a/i;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/i;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/i;

    return-object p0
.end method

.method public static values()[Lc/b/a/i;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/i;->f:[Lc/b/a/i;

    invoke-virtual {v0}, [Lc/b/a/i;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/i;

    return-object v0
.end method
