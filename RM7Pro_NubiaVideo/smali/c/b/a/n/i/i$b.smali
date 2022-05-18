.class final enum Lc/b/a/n/i/i$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/n/i/i$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a/n/i/i$b;

.field public static final enum b:Lc/b/a/n/i/i$b;

.field private static final synthetic c:[Lc/b/a/n/i/i$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lc/b/a/n/i/i$b;

    const-string v1, "CACHE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/n/i/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/n/i/i$b;->a:Lc/b/a/n/i/i$b;

    .line 2
    new-instance v1, Lc/b/a/n/i/i$b;

    const-string v3, "SOURCE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/b/a/n/i/i$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/b/a/n/i/i$b;->b:Lc/b/a/n/i/i$b;

    const/4 v3, 0x2

    new-array v3, v3, [Lc/b/a/n/i/i$b;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lc/b/a/n/i/i$b;->c:[Lc/b/a/n/i/i$b;

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

.method public static valueOf(Ljava/lang/String;)Lc/b/a/n/i/i$b;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/n/i/i$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/n/i/i$b;

    return-object p0
.end method

.method public static values()[Lc/b/a/n/i/i$b;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/i/i$b;->c:[Lc/b/a/n/i/i$b;

    invoke-virtual {v0}, [Lc/b/a/n/i/i$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/n/i/i$b;

    return-object v0
.end method
