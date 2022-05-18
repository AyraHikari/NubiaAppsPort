.class public enum Lcn/nubia/camera/d/c;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/d/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/d/c;",
        ">;",
        "Lcn/nubia/camera/d/d;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/d/c;

.field public static final enum b:Lcn/nubia/camera/d/c;

.field public static final enum c:Lcn/nubia/camera/d/c;

.field public static final enum d:Lcn/nubia/camera/d/c;

.field public static final enum e:Lcn/nubia/camera/d/c;

.field public static final enum f:Lcn/nubia/camera/d/c;

.field public static final enum g:Lcn/nubia/camera/d/c;

.field public static final enum h:Lcn/nubia/camera/d/c;

.field public static final enum i:Lcn/nubia/camera/d/c;

.field public static final enum j:Lcn/nubia/camera/d/c;

.field public static final enum k:Lcn/nubia/camera/d/c;

.field private static final synthetic m:[Lcn/nubia/camera/d/c;


# instance fields
.field private l:I


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 12
    new-instance v0, Lcn/nubia/camera/d/c;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    const/16 v3, 0x12d

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/d/c;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    .line 13
    new-instance v1, Lcn/nubia/camera/d/c$1;

    const-string v3, "CONTINUOUS_SHOOTING"

    const/4 v4, 0x1

    const/16 v5, 0x12e

    invoke-direct {v1, v3, v4, v5}, Lcn/nubia/camera/d/c$1;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/d/c;->b:Lcn/nubia/camera/d/c;

    .line 25
    new-instance v3, Lcn/nubia/camera/d/c$2;

    const-string v5, "INTERVAL"

    const/4 v6, 0x2

    const/16 v7, 0x12f

    invoke-direct {v3, v5, v6, v7}, Lcn/nubia/camera/d/c$2;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/d/c;->c:Lcn/nubia/camera/d/c;

    .line 38
    new-instance v5, Lcn/nubia/camera/d/c$3;

    const-string v7, "DELAY_SHOOT"

    const/4 v8, 0x3

    const/16 v9, 0x130

    invoke-direct {v5, v7, v8, v9}, Lcn/nubia/camera/d/c$3;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/camera/d/c;->d:Lcn/nubia/camera/d/c;

    .line 51
    new-instance v7, Lcn/nubia/camera/d/c$4;

    const-string v9, "SWITCHING_CAMERA"

    const/4 v10, 0x4

    const/16 v11, 0x131

    invoke-direct {v7, v9, v10, v11}, Lcn/nubia/camera/d/c$4;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    .line 65
    new-instance v9, Lcn/nubia/camera/d/c$5;

    const-string v11, "SWITCHING_CAMERA_MODE_SWITCH"

    const/4 v12, 0x5

    const/16 v13, 0x132

    invoke-direct {v9, v11, v12, v13}, Lcn/nubia/camera/d/c$5;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/nubia/camera/d/c;->f:Lcn/nubia/camera/d/c;

    .line 79
    new-instance v11, Lcn/nubia/camera/d/c$6;

    const-string v13, "SWITCHING_CAMERA_OPTIACAL_ZOOM"

    const/4 v14, 0x6

    const/16 v15, 0x133

    invoke-direct {v11, v13, v14, v15}, Lcn/nubia/camera/d/c$6;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcn/nubia/camera/d/c;->g:Lcn/nubia/camera/d/c;

    .line 94
    new-instance v13, Lcn/nubia/camera/d/c;

    const-string v15, "LIVE_PHOTO_INITIALIZING"

    const/4 v14, 0x7

    const/16 v12, 0x134

    invoke-direct {v13, v15, v14, v12}, Lcn/nubia/camera/d/c;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    .line 96
    new-instance v12, Lcn/nubia/camera/d/c;

    const-string v15, "LIVE_PHOTO"

    const/16 v14, 0x8

    const/16 v10, 0x135

    invoke-direct {v12, v15, v14, v10}, Lcn/nubia/camera/d/c;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcn/nubia/camera/d/c;->i:Lcn/nubia/camera/d/c;

    .line 97
    new-instance v10, Lcn/nubia/camera/d/c;

    const-string v15, "ADVANCED_TO_GALLERY_PROCESSING"

    const/16 v14, 0x9

    const/16 v8, 0x136

    invoke-direct {v10, v15, v14, v8}, Lcn/nubia/camera/d/c;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcn/nubia/camera/d/c;->j:Lcn/nubia/camera/d/c;

    .line 98
    new-instance v8, Lcn/nubia/camera/d/c$7;

    const-string v15, "ADVANCED_TO_GALLERY"

    const/16 v14, 0xa

    const/16 v6, 0x137

    invoke-direct {v8, v15, v14, v6}, Lcn/nubia/camera/d/c$7;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcn/nubia/camera/d/c;->k:Lcn/nubia/camera/d/c;

    const/16 v6, 0xb

    new-array v6, v6, [Lcn/nubia/camera/d/c;

    aput-object v0, v6, v2

    aput-object v1, v6, v4

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v12, v6, v0

    const/16 v0, 0x9

    aput-object v10, v6, v0

    aput-object v8, v6, v14

    .line 11
    sput-object v6, Lcn/nubia/camera/d/c;->m:[Lcn/nubia/camera/d/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcn/nubia/camera/d/c;->l:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IILcn/nubia/camera/d/c$1;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcn/nubia/camera/d/c;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/d/c;
    .locals 1

    .line 11
    const-class v0, Lcn/nubia/camera/d/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/d/c;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/d/c;
    .locals 1

    .line 11
    sget-object v0, Lcn/nubia/camera/d/c;->m:[Lcn/nubia/camera/d/c;

    invoke-virtual {v0}, [Lcn/nubia/camera/d/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/d/c;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 116
    iget v0, p0, Lcn/nubia/camera/d/c;->l:I

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

    .line 124
    invoke-virtual {p0, p1, p2, p3}, Lcn/nubia/camera/d/c;->a(Lcn/nubia/camera/d/e;Lcn/nubia/camera/d/b;Lcn/nubia/camera/d/c;)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 127
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcn/nubia/camera/d/c;->l:I

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
