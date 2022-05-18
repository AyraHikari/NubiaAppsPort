.class public final enum Lc/b/a/n/a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/n/a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a/n/a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final enum b:Lc/b/a/n/a;

.field public static final enum c:Lc/b/a/n/a;

.field public static final d:Lc/b/a/n/a;

.field private static final synthetic e:[Lc/b/a/n/a;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc/b/a/n/a;

    const-string v1, "ALWAYS_ARGB_8888"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/n/a;->a:Lc/b/a/n/a;

    .line 2
    new-instance v1, Lc/b/a/n/a;

    const-string v3, "PREFER_ARGB_8888"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/b/a/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/b/a/n/a;->b:Lc/b/a/n/a;

    .line 3
    new-instance v3, Lc/b/a/n/a;

    const-string v5, "PREFER_RGB_565"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/b/a/n/a;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/b/a/n/a;->c:Lc/b/a/n/a;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/b/a/n/a;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lc/b/a/n/a;->e:[Lc/b/a/n/a;

    .line 5
    sput-object v3, Lc/b/a/n/a;->d:Lc/b/a/n/a;

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

.method public static valueOf(Ljava/lang/String;)Lc/b/a/n/a;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/n/a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/n/a;

    return-object p0
.end method

.method public static values()[Lc/b/a/n/a;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/a;->e:[Lc/b/a/n/a;

    invoke-virtual {v0}, [Lc/b/a/n/a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/n/a;

    return-object v0
.end method
