.class public final enum Lc/c/a/f/h/b$a;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/f/h/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/a/f/h/b$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/c/a/f/h/b$a;

.field public static final enum c:Lc/c/a/f/h/b$a;

.field public static final enum d:Lc/c/a/f/h/b$a;

.field public static final enum e:Lc/c/a/f/h/b$a;

.field public static final enum f:Lc/c/a/f/h/b$a;

.field public static final enum g:Lc/c/a/f/h/b$a;

.field public static final enum h:Lc/c/a/f/h/b$a;

.field public static final enum i:Lc/c/a/f/h/b$a;

.field public static final enum j:Lc/c/a/f/h/b$a;

.field public static final enum k:Lc/c/a/f/h/b$a;

.field private static final synthetic l:[Lc/c/a/f/h/b$a;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lc/c/a/f/h/b$a;

    const-string v1, "GET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lc/c/a/f/h/b$a;->b:Lc/c/a/f/h/b$a;

    new-instance v1, Lc/c/a/f/h/b$a;

    const-string v3, "POST"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v3}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lc/c/a/f/h/b$a;->c:Lc/c/a/f/h/b$a;

    new-instance v3, Lc/c/a/f/h/b$a;

    const-string v5, "PUT"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v5}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lc/c/a/f/h/b$a;->d:Lc/c/a/f/h/b$a;

    new-instance v5, Lc/c/a/f/h/b$a;

    const-string v7, "HEAD"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v7}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lc/c/a/f/h/b$a;->e:Lc/c/a/f/h/b$a;

    new-instance v7, Lc/c/a/f/h/b$a;

    const-string v9, "MOVE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v9}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lc/c/a/f/h/b$a;->f:Lc/c/a/f/h/b$a;

    new-instance v9, Lc/c/a/f/h/b$a;

    const-string v11, "COPY"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v11}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lc/c/a/f/h/b$a;->g:Lc/c/a/f/h/b$a;

    new-instance v11, Lc/c/a/f/h/b$a;

    const-string v13, "DELETE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14, v13}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lc/c/a/f/h/b$a;->h:Lc/c/a/f/h/b$a;

    new-instance v13, Lc/c/a/f/h/b$a;

    const-string v15, "OPTIONS"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14, v15}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lc/c/a/f/h/b$a;->i:Lc/c/a/f/h/b$a;

    new-instance v15, Lc/c/a/f/h/b$a;

    const-string v14, "TRACE"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12, v14}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v15, Lc/c/a/f/h/b$a;->j:Lc/c/a/f/h/b$a;

    new-instance v14, Lc/c/a/f/h/b$a;

    const-string v12, "CONNECT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10, v12}, Lc/c/a/f/h/b$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v14, Lc/c/a/f/h/b$a;->k:Lc/c/a/f/h/b$a;

    const/16 v12, 0xa

    new-array v12, v12, [Lc/c/a/f/h/b$a;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    const/4 v0, 0x4

    aput-object v7, v12, v0

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    const/4 v0, 0x7

    aput-object v13, v12, v0

    const/16 v0, 0x8

    aput-object v15, v12, v0

    aput-object v14, v12, v10

    sput-object v12, Lc/c/a/f/h/b$a;->l:[Lc/c/a/f/h/b$a;

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

    iput-object p3, p0, Lc/c/a/f/h/b$a;->a:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/f/h/b$a;
    .locals 1

    const-class v0, Lc/c/a/f/h/b$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/a/f/h/b$a;

    return-object p0
.end method

.method public static values()[Lc/c/a/f/h/b$a;
    .locals 1

    sget-object v0, Lc/c/a/f/h/b$a;->l:[Lc/c/a/f/h/b$a;

    invoke-virtual {v0}, [Lc/c/a/f/h/b$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/f/h/b$a;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lc/c/a/f/h/b$a;->a:Ljava/lang/String;

    return-object v0
.end method
