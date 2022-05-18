.class public final enum Lcn/nubia/camera/elefnovideo/l;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/elefnovideo/l;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/elefnovideo/l;

.field public static final enum b:Lcn/nubia/camera/elefnovideo/l;

.field public static final enum c:Lcn/nubia/camera/elefnovideo/l;

.field public static final enum d:Lcn/nubia/camera/elefnovideo/l;

.field public static final enum e:Lcn/nubia/camera/elefnovideo/l;

.field public static final enum f:Lcn/nubia/camera/elefnovideo/l;

.field private static final synthetic h:[Lcn/nubia/camera/elefnovideo/l;


# instance fields
.field final g:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lcn/nubia/camera/elefnovideo/l;

    const-string v1, "STATE_IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    .line 5
    new-instance v1, Lcn/nubia/camera/elefnovideo/l;

    const-string v3, "STATE_RECORDING"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    .line 6
    new-instance v3, Lcn/nubia/camera/elefnovideo/l;

    const-string v5, "STATE_RECORDING_PAUSE"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    .line 7
    new-instance v5, Lcn/nubia/camera/elefnovideo/l;

    const-string v7, "STATE_PICTURE_TAKING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    .line 8
    new-instance v7, Lcn/nubia/camera/elefnovideo/l;

    const-string v9, "STATE_STOPPING_RECORD"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;

    .line 9
    new-instance v9, Lcn/nubia/camera/elefnovideo/l;

    const-string v11, "STATE_WAITING_RECORD"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcn/nubia/camera/elefnovideo/l;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcn/nubia/camera/elefnovideo/l;->f:Lcn/nubia/camera/elefnovideo/l;

    const/4 v11, 0x6

    new-array v11, v11, [Lcn/nubia/camera/elefnovideo/l;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 3
    sput-object v11, Lcn/nubia/camera/elefnovideo/l;->h:[Lcn/nubia/camera/elefnovideo/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 14
    iput p3, p0, Lcn/nubia/camera/elefnovideo/l;->g:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/elefnovideo/l;
    .locals 1

    .line 3
    const-class v0, Lcn/nubia/camera/elefnovideo/l;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/elefnovideo/l;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/elefnovideo/l;
    .locals 1

    .line 3
    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->h:[Lcn/nubia/camera/elefnovideo/l;

    invoke-virtual {v0}, [Lcn/nubia/camera/elefnovideo/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/elefnovideo/l;

    return-object v0
.end method
