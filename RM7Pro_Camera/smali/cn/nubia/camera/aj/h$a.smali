.class Lcn/nubia/camera/aj/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/h;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>(Lcn/nubia/camera/aj/h;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcn/nubia/camera/aj/h$a;->a:Lcn/nubia/camera/aj/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1770

    .line 190
    iput p1, p0, Lcn/nubia/camera/aj/h$a;->b:I

    const/16 p1, 0xf

    .line 191
    iput p1, p0, Lcn/nubia/camera/aj/h$a;->c:I

    const/4 p1, 0x0

    .line 193
    iput p1, p0, Lcn/nubia/camera/aj/h$a;->e:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/aj/h;Lcn/nubia/camera/aj/h$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/h$a;-><init>(Lcn/nubia/camera/aj/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 197
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    div-int/lit8 p1, p1, 0x64

    mul-int/2addr v0, p1

    const/16 p1, 0x1770

    if-lt v0, p1, :cond_0

    .line 198
    iget v1, p0, Lcn/nubia/camera/aj/h$a;->d:I

    if-lt v1, p1, :cond_0

    .line 200
    iget p1, p0, Lcn/nubia/camera/aj/h$a;->e:I

    const/16 v1, 0xf

    if-ge p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 201
    iput p1, p0, Lcn/nubia/camera/aj/h$a;->e:I

    goto :goto_0

    :cond_0
    if-ge v0, p1, :cond_1

    .line 204
    iget p1, p0, Lcn/nubia/camera/aj/h$a;->e:I

    if-lez p1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 205
    iput p1, p0, Lcn/nubia/camera/aj/h$a;->e:I

    .line 208
    :cond_1
    :goto_0
    iput v0, p0, Lcn/nubia/camera/aj/h$a;->d:I

    return-void
.end method

.method public a()Z
    .locals 2

    .line 214
    iget v0, p0, Lcn/nubia/camera/aj/h$a;->e:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lcn/nubia/camera/aj/h$a;->e:I

    .line 219
    iput v0, p0, Lcn/nubia/camera/aj/h$a;->d:I

    return-void
.end method
