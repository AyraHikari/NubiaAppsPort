.class public final enum Lc/b/a/n/i/b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/b/a/n/i/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lc/b/a/n/i/b;

.field public static final enum d:Lc/b/a/n/i/b;

.field public static final enum e:Lc/b/a/n/i/b;

.field public static final enum f:Lc/b/a/n/i/b;

.field private static final synthetic g:[Lc/b/a/n/i/b;


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lc/b/a/n/i/b;

    const-string v1, "ALL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lc/b/a/n/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lc/b/a/n/i/b;->c:Lc/b/a/n/i/b;

    .line 2
    new-instance v1, Lc/b/a/n/i/b;

    const-string v4, "NONE"

    invoke-direct {v1, v4, v3, v2, v2}, Lc/b/a/n/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v1, Lc/b/a/n/i/b;->d:Lc/b/a/n/i/b;

    .line 3
    new-instance v4, Lc/b/a/n/i/b;

    const-string v5, "SOURCE"

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3, v2}, Lc/b/a/n/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v4, Lc/b/a/n/i/b;->e:Lc/b/a/n/i/b;

    .line 4
    new-instance v5, Lc/b/a/n/i/b;

    const-string v7, "RESULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v2, v3}, Lc/b/a/n/i/b;-><init>(Ljava/lang/String;IZZ)V

    sput-object v5, Lc/b/a/n/i/b;->f:Lc/b/a/n/i/b;

    const/4 v7, 0x4

    new-array v7, v7, [Lc/b/a/n/i/b;

    aput-object v0, v7, v2

    aput-object v1, v7, v3

    aput-object v4, v7, v6

    aput-object v5, v7, v8

    .line 5
    sput-object v7, Lc/b/a/n/i/b;->g:[Lc/b/a/n/i/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lc/b/a/n/i/b;->a:Z

    .line 3
    iput-boolean p4, p0, Lc/b/a/n/i/b;->b:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/b/a/n/i/b;
    .locals 1

    .line 1
    const-class v0, Lc/b/a/n/i/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/b/a/n/i/b;

    return-object p0
.end method

.method public static values()[Lc/b/a/n/i/b;
    .locals 1

    .line 1
    sget-object v0, Lc/b/a/n/i/b;->g:[Lc/b/a/n/i/b;

    invoke-virtual {v0}, [Lc/b/a/n/i/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/b/a/n/i/b;

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/i/b;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lc/b/a/n/i/b;->a:Z

    return v0
.end method
