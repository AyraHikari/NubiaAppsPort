.class public final enum Lc/c/a/h/a$c;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc/c/a/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lc/c/a/h/a$c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum b:Lc/c/a/h/a$c;

.field public static final enum c:Lc/c/a/h/a$c;

.field public static final enum d:Lc/c/a/h/a$c;

.field public static final enum e:Lc/c/a/h/a$c;

.field public static final enum f:Lc/c/a/h/a$c;

.field public static final enum g:Lc/c/a/h/a$c;

.field private static final synthetic h:[Lc/c/a/h/a$c;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .line 1
    new-instance v0, Lc/c/a/h/a$c;

    const-string v1, "VERBOSE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lc/c/a/h/a$c;->b:Lc/c/a/h/a$c;

    .line 2
    new-instance v1, Lc/c/a/h/a$c;

    const-string v4, "DEBUG"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lc/c/a/h/a$c;->c:Lc/c/a/h/a$c;

    .line 3
    new-instance v4, Lc/c/a/h/a$c;

    const-string v7, "INFO"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lc/c/a/h/a$c;->d:Lc/c/a/h/a$c;

    .line 4
    new-instance v7, Lc/c/a/h/a$c;

    const-string v9, "WARN"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lc/c/a/h/a$c;->e:Lc/c/a/h/a$c;

    .line 5
    new-instance v9, Lc/c/a/h/a$c;

    const-string v11, "ERROR"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lc/c/a/h/a$c;->f:Lc/c/a/h/a$c;

    .line 6
    new-instance v11, Lc/c/a/h/a$c;

    const-string v13, "ASSERT"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lc/c/a/h/a$c;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lc/c/a/h/a$c;->g:Lc/c/a/h/a$c;

    new-array v12, v12, [Lc/c/a/h/a$c;

    aput-object v0, v12, v2

    aput-object v1, v12, v5

    aput-object v4, v12, v3

    aput-object v7, v12, v6

    aput-object v9, v12, v8

    aput-object v11, v12, v10

    .line 7
    sput-object v12, Lc/c/a/h/a$c;->h:[Lc/c/a/h/a$c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lc/c/a/h/a$c;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lc/c/a/h/a$c;
    .locals 1

    .line 1
    const-class v0, Lc/c/a/h/a$c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lc/c/a/h/a$c;

    return-object p0
.end method

.method public static values()[Lc/c/a/h/a$c;
    .locals 1

    .line 1
    sget-object v0, Lc/c/a/h/a$c;->h:[Lc/c/a/h/a$c;

    invoke-virtual {v0}, [Lc/c/a/h/a$c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lc/c/a/h/a$c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Lc/c/a/h/a$c;->a:I

    return v0
.end method
