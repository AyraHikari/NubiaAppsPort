.class public Lcn/nubia/camera/pretty/c/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/hardware/camera2/CaptureRequest$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "[I>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 26
    new-instance v0, Landroid/hardware/camera2/CaptureRequest$Key;

    const-class v1, [I

    const-string v2, "org.codeaurora.qcamera3.sessionParameters.availableStreamMap"

    invoke-direct {v0, v2, v1}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    sput-object v0, Lcn/nubia/camera/pretty/c/a;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    return-void
.end method

.method public static a(IIII)[I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    move p0, v3

    move v4, p0

    goto :goto_2

    :cond_0
    const/16 p0, 0x23

    goto :goto_1

    :cond_1
    const p0, 0x20203859

    goto :goto_0

    :cond_2
    const/16 p0, 0x21

    :goto_0
    move v4, v1

    goto :goto_2

    :cond_3
    const/16 p0, 0x22

    :goto_1
    move v4, v2

    :goto_2
    const/16 v5, 0xa

    new-array v5, v5, [I

    aput p1, v5, v3

    aput p2, v5, v2

    aput p0, v5, v1

    aput p3, v5, v0

    const/4 p0, 0x4

    aput v4, v5, p0

    const/4 p0, 0x5

    aput v3, v5, p0

    const/4 p0, 0x6

    aput v3, v5, p0

    const/4 p0, 0x7

    aput v3, v5, p0

    const/16 p0, 0x8

    aput v3, v5, p0

    const/16 p0, 0x9

    aput v3, v5, p0

    return-object v5
.end method
