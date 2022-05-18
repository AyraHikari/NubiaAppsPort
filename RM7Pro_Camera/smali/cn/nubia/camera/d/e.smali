.class public enum Lcn/nubia/camera/d/e;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/d/e;",
        ">;",
        "Lcn/nubia/camera/d/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/d/e;

.field public static final enum b:Lcn/nubia/camera/d/e;

.field public static final enum c:Lcn/nubia/camera/d/e;

.field public static final enum d:Lcn/nubia/camera/d/e;

.field public static final enum e:Lcn/nubia/camera/d/e;

.field public static final enum f:Lcn/nubia/camera/d/e;

.field public static final enum g:Lcn/nubia/camera/d/e;

.field public static final enum h:Lcn/nubia/camera/d/e;

.field private static final synthetic j:[Lcn/nubia/camera/d/e;


# instance fields
.field private i:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcn/nubia/camera/d/e;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/16 v3, 0x64

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/d/e;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    .line 13
    new-instance v1, Lcn/nubia/camera/d/e$1;

    const-string v3, "HIGH_SETTING_POPUP"

    const/4 v4, 0x1

    const/16 v5, 0x65

    invoke-direct {v1, v3, v4, v5}, Lcn/nubia/camera/d/e$1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/d/e;->b:Lcn/nubia/camera/d/e;

    .line 25
    new-instance v3, Lcn/nubia/camera/d/e$2;

    const-string v5, "SETTING"

    const/4 v6, 0x2

    const/16 v7, 0x66

    invoke-direct {v3, v5, v6, v7}, Lcn/nubia/camera/d/e$2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/d/e;->c:Lcn/nubia/camera/d/e;

    .line 37
    new-instance v5, Lcn/nubia/camera/d/e$3;

    const-string v7, "TOPBAR_SETTING_POPUP"

    const/4 v8, 0x3

    const/16 v9, 0x67

    invoke-direct {v5, v7, v8, v9}, Lcn/nubia/camera/d/e$3;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/camera/d/e;->d:Lcn/nubia/camera/d/e;

    .line 49
    new-instance v7, Lcn/nubia/camera/d/e$4;

    const-string v9, "GRID_EFFECT"

    const/4 v10, 0x4

    const/16 v11, 0x68

    invoke-direct {v7, v9, v10, v11}, Lcn/nubia/camera/d/e$4;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/camera/d/e;->e:Lcn/nubia/camera/d/e;

    .line 61
    new-instance v9, Lcn/nubia/camera/d/e$5;

    const-string v11, "CAMERA_FAMILY"

    const/4 v12, 0x5

    const/16 v13, 0x69

    invoke-direct {v9, v11, v12, v13}, Lcn/nubia/camera/d/e$5;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/nubia/camera/d/e;->f:Lcn/nubia/camera/d/e;

    .line 73
    new-instance v11, Lcn/nubia/camera/d/e;

    const-string v13, "THIRD_RECORD_END"

    const/4 v14, 0x6

    const/16 v15, 0x6a

    invoke-direct {v11, v13, v14, v15}, Lcn/nubia/camera/d/e;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/nubia/camera/d/e;->g:Lcn/nubia/camera/d/e;

    .line 74
    new-instance v13, Lcn/nubia/camera/d/e$6;

    const-string v15, "PRISMPA_PAGE"

    const/4 v14, 0x7

    const/16 v12, 0x6b

    invoke-direct {v13, v15, v14, v12}, Lcn/nubia/camera/d/e$6;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/nubia/camera/d/e;->h:Lcn/nubia/camera/d/e;

    const/16 v12, 0x8

    new-array v12, v12, [Lcn/nubia/camera/d/e;

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
    sput-object v12, Lcn/nubia/camera/d/e;->j:[Lcn/nubia/camera/d/e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 88
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, -0x1

    .line 87
    iput p1, p0, Lcn/nubia/camera/d/e;->i:I

    .line 89
    iput p3, p0, Lcn/nubia/camera/d/e;->i:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcn/nubia/camera/d/e$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/d/e;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/d/e;
    .locals 1

    .line 11
    const-class v0, Lcn/nubia/camera/d/e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/d/e;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/d/e;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/camera/d/e;->j:[Lcn/nubia/camera/d/e;

    invoke-virtual {v0}, [Lcn/nubia/camera/d/e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/d/e;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 94
    iget v0, p0, Lcn/nubia/camera/d/e;->i:I

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

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/camera/d/e;->a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 105
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcn/nubia/camera/d/e;->i:I

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
