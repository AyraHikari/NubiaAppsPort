.class public final enum Lcn/nubia/camera/d$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/nubia/camera/d$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/nubia/camera/d$a;

.field public static final enum b:Lcn/nubia/camera/d$a;

.field public static final enum c:Lcn/nubia/camera/d$a;

.field private static final synthetic f:[Lcn/nubia/camera/d$a;


# instance fields
.field private final d:I

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 23
    new-instance v0, Lcn/nubia/camera/d$a;

    const-string v1, "CAMERA_HAL_FAILED"

    const/4 v2, 0x0

    const v3, 0x7f0f0035

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/nubia/camera/d$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcn/nubia/camera/d$a;->a:Lcn/nubia/camera/d$a;

    .line 26
    new-instance v1, Lcn/nubia/camera/d$a;

    const-string v5, "PREVIEW_START_FAIL"

    invoke-direct {v1, v5, v4, v3, v4}, Lcn/nubia/camera/d$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcn/nubia/camera/d$a;->b:Lcn/nubia/camera/d$a;

    .line 29
    new-instance v5, Lcn/nubia/camera/d$a;

    const-string v6, "CAMERA_EVICTED"

    const/4 v7, 0x2

    invoke-direct {v5, v6, v7, v3, v4}, Lcn/nubia/camera/d$a;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcn/nubia/camera/d$a;->c:Lcn/nubia/camera/d$a;

    const/4 v3, 0x3

    new-array v3, v3, [Lcn/nubia/camera/d$a;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    aput-object v5, v3, v7

    .line 22
    sput-object v3, Lcn/nubia/camera/d$a;->f:[Lcn/nubia/camera/d$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcn/nubia/camera/d$a;->d:I

    .line 44
    iput-boolean p4, p0, Lcn/nubia/camera/d$a;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/nubia/camera/d$a;
    .locals 1

    .line 22
    const-class v0, Lcn/nubia/camera/d$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/nubia/camera/d$a;

    return-object p0
.end method

.method public static values()[Lcn/nubia/camera/d$a;
    .locals 1

    .line 22
    sget-object v0, Lcn/nubia/camera/d$a;->f:[Lcn/nubia/camera/d$a;

    invoke-virtual {v0}, [Lcn/nubia/camera/d$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/d$a;

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/nubia/camera/d$a;->d:I

    return v0
.end method

.method public b()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcn/nubia/camera/d$a;->e:Z

    return v0
.end method
