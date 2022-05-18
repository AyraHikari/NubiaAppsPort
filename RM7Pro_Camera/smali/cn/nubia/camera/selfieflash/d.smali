.class public Lcn/nubia/camera/selfieflash/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/selfieflash/a;


# instance fields
.field private a:Lcn/nubia/camera/k/ah;

.field private b:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/ah;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    .line 19
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/d;->a:Lcn/nubia/camera/k/ah;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public b()V
    .locals 4

    .line 29
    iget v0, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 32
    :cond_0
    iput v1, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    .line 33
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 34
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 35
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 36
    iget-object v1, p0, Lcn/nubia/camera/selfieflash/d;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 41
    iget v0, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    .line 45
    new-instance v1, Lcn/nubia/camera/k/ad;

    invoke-direct {v1}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 46
    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 47
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/d;->a:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 53
    iget v0, p0, Lcn/nubia/camera/selfieflash/d;->b:I

    return v0
.end method
