.class public final enum Lc/d/a/b/j/g;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/j/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/j/g;

.field public static final enum b:Lc/d/a/b/j/g;

.field private static final synthetic c:[Lc/d/a/b/j/g;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/d/a/b/j/g;

    const-string v1, "FIFO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/b/j/g;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/j/g;->a:Lc/d/a/b/j/g;

    new-instance v1, Lc/d/a/b/j/g;

    const-string v3, "LIFO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/a/b/j/g;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/a/b/j/g;->b:Lc/d/a/b/j/g;

    const/4 v3, 0x2

    new-array v3, v3, [Lc/d/a/b/j/g;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc/d/a/b/j/g;->c:[Lc/d/a/b/j/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/j/g;
    .locals 1

    const-class v0, Lc/d/a/b/j/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/j/g;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/j/g;
    .locals 1

    sget-object v0, Lc/d/a/b/j/g;->c:[Lc/d/a/b/j/g;

    invoke-virtual {v0}, [Lc/d/a/b/j/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/j/g;

    return-object v0
.end method
