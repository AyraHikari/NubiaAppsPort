.class public final enum Lc/d/a/b/j/h;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/j/h;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/j/h;

.field public static final enum b:Lc/d/a/b/j/h;

.field private static final synthetic c:[Lc/d/a/b/j/h;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lc/d/a/b/j/h;

    const-string v1, "FIT_INSIDE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/b/j/h;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/j/h;->a:Lc/d/a/b/j/h;

    new-instance v1, Lc/d/a/b/j/h;

    const-string v3, "CROP"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/a/b/j/h;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/a/b/j/h;->b:Lc/d/a/b/j/h;

    const/4 v3, 0x2

    new-array v3, v3, [Lc/d/a/b/j/h;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lc/d/a/b/j/h;->c:[Lc/d/a/b/j/h;

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

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/j/h;
    .locals 1

    const-class v0, Lc/d/a/b/j/h;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/j/h;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/j/h;
    .locals 1

    sget-object v0, Lc/d/a/b/j/h;->c:[Lc/d/a/b/j/h;

    invoke-virtual {v0}, [Lc/d/a/b/j/h;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/j/h;

    return-object v0
.end method
