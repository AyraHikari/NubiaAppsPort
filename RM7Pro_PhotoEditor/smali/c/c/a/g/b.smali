.class public final enum Lc/c/a/g/b;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/a/g/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lc/c/a/g/b;

.field public static final enum b:Lc/c/a/g/b;

.field public static final enum c:Lc/c/a/g/b;

.field public static final enum d:Lc/c/a/g/b;

.field public static final enum e:Lc/c/a/g/b;

.field public static final enum f:Lc/c/a/g/b;

.field public static final enum g:Lc/c/a/g/b;

.field private static final synthetic h:[Lc/c/a/g/b;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v0, Lc/c/a/g/b;

    const-string v1, "UI_TOP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lc/c/a/g/b;->a:Lc/c/a/g/b;

    new-instance v1, Lc/c/a/g/b;

    const-string v3, "UI_NORMAL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lc/c/a/g/b;->b:Lc/c/a/g/b;

    new-instance v3, Lc/c/a/g/b;

    const-string v5, "UI_LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lc/c/a/g/b;->c:Lc/c/a/g/b;

    new-instance v5, Lc/c/a/g/b;

    const-string v7, "DEFAULT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lc/c/a/g/b;->d:Lc/c/a/g/b;

    new-instance v7, Lc/c/a/g/b;

    const-string v9, "BG_TOP"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lc/c/a/g/b;->e:Lc/c/a/g/b;

    new-instance v9, Lc/c/a/g/b;

    const-string v11, "BG_NORMAL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lc/c/a/g/b;->f:Lc/c/a/g/b;

    new-instance v11, Lc/c/a/g/b;

    const-string v13, "BG_LOW"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lc/c/a/g/b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lc/c/a/g/b;->g:Lc/c/a/g/b;

    const/4 v13, 0x7

    new-array v13, v13, [Lc/c/a/g/b;

    aput-object v0, v13, v2

    aput-object v1, v13, v4

    aput-object v3, v13, v6

    aput-object v5, v13, v8

    aput-object v7, v13, v10

    aput-object v9, v13, v12

    aput-object v11, v13, v14

    sput-object v13, Lc/c/a/g/b;->h:[Lc/c/a/g/b;

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

.method public static valueOf(Ljava/lang/String;)Lc/c/a/g/b;
    .locals 1

    const-class v0, Lc/c/a/g/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/a/g/b;

    return-object p0
.end method

.method public static values()[Lc/c/a/g/b;
    .locals 1

    sget-object v0, Lc/c/a/g/b;->h:[Lc/c/a/g/b;

    invoke-virtual {v0}, [Lc/c/a/g/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/g/b;

    return-object v0
.end method
