.class public final enum Lc/c/a/f/b$c;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/a/f/b$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/a/f/b$c;

.field public static final enum b:Lc/c/a/f/b$c;

.field public static final enum c:Lc/c/a/f/b$c;

.field public static final enum d:Lc/c/a/f/b$c;

.field public static final enum e:Lc/c/a/f/b$c;

.field public static final enum f:Lc/c/a/f/b$c;

.field private static final synthetic g:[Lc/c/a/f/b$c;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lc/c/a/f/b$c;

    const-string v1, "WAITING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/c/a/f/b$c;->a:Lc/c/a/f/b$c;

    new-instance v1, Lc/c/a/f/b$c;

    const-string v3, "STARTED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/c/a/f/b$c;->b:Lc/c/a/f/b$c;

    new-instance v3, Lc/c/a/f/b$c;

    const-string v5, "LOADING"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lc/c/a/f/b$c;->c:Lc/c/a/f/b$c;

    new-instance v5, Lc/c/a/f/b$c;

    const-string v7, "FAILURE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lc/c/a/f/b$c;->d:Lc/c/a/f/b$c;

    new-instance v7, Lc/c/a/f/b$c;

    const-string v9, "CANCELLED"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lc/c/a/f/b$c;->e:Lc/c/a/f/b$c;

    new-instance v9, Lc/c/a/f/b$c;

    const-string v11, "SUCCESS"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lc/c/a/f/b$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lc/c/a/f/b$c;->f:Lc/c/a/f/b$c;

    const/4 v11, 0x6

    new-array v11, v11, [Lc/c/a/f/b$c;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lc/c/a/f/b$c;->g:[Lc/c/a/f/b$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/f/b$c;
    .locals 1

    const-class v0, Lc/c/a/f/b$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/a/f/b$c;

    return-object p0
.end method

.method public static values()[Lc/c/a/f/b$c;
    .locals 1

    sget-object v0, Lc/c/a/f/b$c;->g:[Lc/c/a/f/b$c;

    invoke-virtual {v0}, [Lc/c/a/f/b$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/f/b$c;

    return-object v0
.end method
