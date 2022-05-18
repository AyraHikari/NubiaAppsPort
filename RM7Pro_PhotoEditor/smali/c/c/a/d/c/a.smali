.class public final enum Lc/c/a/d/c/a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/a/d/c/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/c/a/d/c/a;

.field public static final enum c:Lc/c/a/d/c/a;

.field public static final enum d:Lc/c/a/d/c/a;

.field public static final enum e:Lc/c/a/d/c/a;

.field private static final synthetic f:[Lc/c/a/d/c/a;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lc/c/a/d/c/a;

    const-string v1, "INTEGER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lc/c/a/d/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc/c/a/d/c/a;->b:Lc/c/a/d/c/a;

    new-instance v1, Lc/c/a/d/c/a;

    const-string v3, "REAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lc/c/a/d/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lc/c/a/d/c/a;->c:Lc/c/a/d/c/a;

    new-instance v3, Lc/c/a/d/c/a;

    const-string v5, "TEXT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lc/c/a/d/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lc/c/a/d/c/a;->d:Lc/c/a/d/c/a;

    new-instance v5, Lc/c/a/d/c/a;

    const-string v7, "BLOB"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lc/c/a/d/c/a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lc/c/a/d/c/a;->e:Lc/c/a/d/c/a;

    const/4 v7, 0x4

    new-array v7, v7, [Lc/c/a/d/c/a;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lc/c/a/d/c/a;->f:[Lc/c/a/d/c/a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lc/c/a/d/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/d/c/a;
    .locals 1

    const-class v0, Lc/c/a/d/c/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/a/d/c/a;

    return-object p0
.end method

.method public static values()[Lc/c/a/d/c/a;
    .locals 1

    sget-object v0, Lc/c/a/d/c/a;->f:[Lc/c/a/d/c/a;

    invoke-virtual {v0}, [Lc/c/a/d/c/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/d/c/a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/d/c/a;->a:Ljava/lang/String;

    return-object v0
.end method
