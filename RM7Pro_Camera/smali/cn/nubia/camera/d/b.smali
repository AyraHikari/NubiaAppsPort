.class public enum Lcn/nubia/camera/d/b;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/d/b;",
        ">;",
        "Lcn/nubia/camera/d/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/d/b;

.field public static final enum b:Lcn/nubia/camera/d/b;

.field public static final enum c:Lcn/nubia/camera/d/b;

.field public static final enum d:Lcn/nubia/camera/d/b;

.field public static final enum e:Lcn/nubia/camera/d/b;

.field public static final enum f:Lcn/nubia/camera/d/b;

.field public static final enum g:Lcn/nubia/camera/d/b;

.field public static final enum h:Lcn/nubia/camera/d/b;

.field private static final synthetic j:[Lcn/nubia/camera/d/b;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 13
    new-instance v0, Lcn/nubia/camera/d/b;

    const-string v1, "NOT_INITIALIZED"

    const/4 v2, 0x0

    const/16 v3, 0xc9

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/d/b;->a:Lcn/nubia/camera/d/b;

    .line 14
    new-instance v1, Lcn/nubia/camera/d/b;

    const-string v3, "SESSION_NOT_CONFIGURED"

    const/4 v4, 0x1

    const/16 v5, 0xca

    invoke-direct {v1, v3, v4, v5}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/d/b;->b:Lcn/nubia/camera/d/b;

    .line 15
    new-instance v3, Lcn/nubia/camera/d/b;

    const-string v5, "SESSION_CONFIGURING"

    const/4 v6, 0x2

    const/16 v7, 0xcb

    invoke-direct {v3, v5, v6, v7}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/d/b;->c:Lcn/nubia/camera/d/b;

    .line 16
    new-instance v5, Lcn/nubia/camera/d/b;

    const-string v7, "IDLE"

    const/4 v8, 0x3

    const/16 v9, 0xcc

    invoke-direct {v5, v7, v8, v9}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    .line 17
    new-instance v7, Lcn/nubia/camera/d/b$1;

    const-string v9, "SNAPSHOT_IN_PROGRESS"

    const/4 v10, 0x4

    const/16 v11, 0xcd

    invoke-direct {v7, v9, v10, v11}, Lcn/nubia/camera/d/b$1;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    .line 31
    new-instance v9, Lcn/nubia/camera/d/b$2;

    const-string v11, "VIDEO_RECORDING"

    const/4 v12, 0x5

    const/16 v13, 0xcf

    invoke-direct {v9, v11, v12, v13}, Lcn/nubia/camera/d/b$2;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    .line 43
    new-instance v11, Lcn/nubia/camera/d/b$3;

    const-string v13, "VIDEO_RECORDING_PAUSED"

    const/4 v14, 0x6

    const/16 v15, 0xd0

    invoke-direct {v11, v13, v14, v15}, Lcn/nubia/camera/d/b$3;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    .line 54
    new-instance v13, Lcn/nubia/camera/d/b$4;

    const-string v15, "VIDEO_RECORDING_SNAPSHOT"

    const/4 v14, 0x7

    const/16 v12, 0xd1

    invoke-direct {v13, v15, v14, v12}, Lcn/nubia/camera/d/b$4;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    const/16 v12, 0x8

    new-array v12, v12, [Lcn/nubia/camera/d/b;

    aput-object v0, v12, v2

    aput-object v1, v12, v4

    aput-object v3, v12, v6

    aput-object v5, v12, v8

    aput-object v7, v12, v10

    const/4 v0, 0x5

    aput-object v9, v12, v0

    const/4 v0, 0x6

    aput-object v11, v12, v0

    aput-object v13, v12, v14

    .line 11
    sput-object v12, Lcn/nubia/camera/d/b;->j:[Lcn/nubia/camera/d/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 68
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 67
    iput p1, p0, Lcn/nubia/camera/d/b;->i:I

    .line 69
    iput p3, p0, Lcn/nubia/camera/d/b;->i:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcn/nubia/camera/d/b$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/d/b;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/d/b;
    .locals 1

    .line 11
    const-class v0, Lcn/nubia/camera/d/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/d/b;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/d/b;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/camera/d/b;->j:[Lcn/nubia/camera/d/b;

    invoke-virtual {v0}, [Lcn/nubia/camera/d/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/d/b;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 74
    iget v0, p0, Lcn/nubia/camera/d/b;->i:I

    return v0
.end method

.method protected a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/d/e;",
            "Lcn/nubia/camera/d/b;",
            "Lcn/nubia/camera/d/c;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 82
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/camera/d/b;->a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 85
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcn/nubia/camera/d/b;->i:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p2, 0x1

    :cond_2
    return p2
.end method
