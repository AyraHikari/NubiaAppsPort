.class public final enum Lc/d/a/b/j/d;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/d/a/b/j/d;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/d/a/b/j/d;

.field public static final enum b:Lc/d/a/b/j/d;

.field public static final enum c:Lc/d/a/b/j/d;

.field public static final enum d:Lc/d/a/b/j/d;

.field public static final enum e:Lc/d/a/b/j/d;

.field public static final enum f:Lc/d/a/b/j/d;

.field private static final synthetic g:[Lc/d/a/b/j/d;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v0, Lc/d/a/b/j/d;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/d/a/b/j/d;->a:Lc/d/a/b/j/d;

    new-instance v1, Lc/d/a/b/j/d;

    const-string v3, "NONE_SAFE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/d/a/b/j/d;->b:Lc/d/a/b/j/d;

    new-instance v3, Lc/d/a/b/j/d;

    const-string v5, "IN_SAMPLE_POWER_OF_2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/d/a/b/j/d;->c:Lc/d/a/b/j/d;

    new-instance v5, Lc/d/a/b/j/d;

    const-string v7, "IN_SAMPLE_INT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/d/a/b/j/d;->d:Lc/d/a/b/j/d;

    new-instance v7, Lc/d/a/b/j/d;

    const-string v9, "EXACTLY"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/d/a/b/j/d;->e:Lc/d/a/b/j/d;

    new-instance v9, Lc/d/a/b/j/d;

    const-string v11, "EXACTLY_STRETCHED"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lc/d/a/b/j/d;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lc/d/a/b/j/d;->f:Lc/d/a/b/j/d;

    const/4 v11, 0x6

    new-array v11, v11, [Lc/d/a/b/j/d;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lc/d/a/b/j/d;->g:[Lc/d/a/b/j/d;

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

.method public static valueOf(Ljava/lang/String;)Lc/d/a/b/j/d;
    .locals 1

    const-class v0, Lc/d/a/b/j/d;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/d/a/b/j/d;

    return-object p0
.end method

.method public static values()[Lc/d/a/b/j/d;
    .locals 1

    sget-object v0, Lc/d/a/b/j/d;->g:[Lc/d/a/b/j/d;

    invoke-virtual {v0}, [Lc/d/a/b/j/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/d/a/b/j/d;

    return-object v0
.end method
