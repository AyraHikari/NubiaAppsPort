.class public enum Lc/b/a/n/i/o/a$d;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/b/a/n/i/o/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4009
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/n/i/o/a$d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/b/a/n/i/o/a$d;

.field public static final enum b:Lc/b/a/n/i/o/a$d;

.field public static final enum c:Lc/b/a/n/i/o/a$d;

.field private static final synthetic d:[Lc/b/a/n/i/o/a$d;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lc/b/a/n/i/o/a$d;

    const-string v1, "IGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/b/a/n/i/o/a$d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/b/a/n/i/o/a$d;->a:Lc/b/a/n/i/o/a$d;

    .line 2
    new-instance v1, Lc/b/a/n/i/o/a$d$a;

    const-string v3, "LOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/b/a/n/i/o/a$d$a;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/b/a/n/i/o/a$d;->b:Lc/b/a/n/i/o/a$d;

    .line 3
    new-instance v3, Lc/b/a/n/i/o/a$d$b;

    const-string v5, "THROW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/b/a/n/i/o/a$d$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/b/a/n/i/o/a$d;->c:Lc/b/a/n/i/o/a$d;

    const/4 v5, 0x3

    new-array v5, v5, [Lc/b/a/n/i/o/a$d;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lc/b/a/n/i/o/a$d;->d:[Lc/b/a/n/i/o/a$d;

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

.method synthetic constructor <init>(Ljava/lang/String;ILc/b/a/n/i/o/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lc/b/a/n/i/o/a$d;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a/n/i/o/a$d;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/n/i/o/a$d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/n/i/o/a$d;

    return-object p0
.end method

.method public static values()[Lc/b/a/n/i/o/a$d;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/i/o/a$d;->d:[Lc/b/a/n/i/o/a$d;

    invoke-virtual {v0}, [Lc/b/a/n/i/o/a$d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/n/i/o/a$d;

    return-object v0
.end method


# virtual methods
.method protected a(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method
