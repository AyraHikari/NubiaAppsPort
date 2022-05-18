.class Lcn/nubia/camera/aj/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aj/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;

.field private final b:I

.field private final c:I

.field private d:I

.field private e:B

.field private f:I


# direct methods
.method private constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x1770

    .line 82
    iput p1, p0, Lcn/nubia/camera/aj/f$a;->b:I

    const/4 p1, 0x5

    .line 83
    iput p1, p0, Lcn/nubia/camera/aj/f$a;->c:I

    const/4 p1, -0x1

    .line 85
    iput-byte p1, p0, Lcn/nubia/camera/aj/f$a;->e:B

    const/4 p1, 0x0

    .line 86
    iput p1, p0, Lcn/nubia/camera/aj/f$a;->f:I

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/aj/f;Lcn/nubia/camera/aj/f$1;)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcn/nubia/camera/aj/f$a;-><init>(Lcn/nubia/camera/aj/f;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 4

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 94
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->b(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/ba/b;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 95
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    div-int/lit8 v2, v2, 0x64

    mul-int/2addr v0, v2

    const/16 v2, 0x1770

    if-lt v0, v2, :cond_1

    .line 96
    iget v3, p0, Lcn/nubia/camera/aj/f$a;->d:I

    if-lt v3, v2, :cond_1

    .line 98
    iget v2, p0, Lcn/nubia/camera/aj/f$a;->f:I

    const/4 v3, 0x5

    if-ge v2, v3, :cond_2

    add-int/2addr v2, v1

    .line 99
    iput v2, p0, Lcn/nubia/camera/aj/f$a;->f:I

    goto :goto_0

    :cond_1
    if-ge v0, v2, :cond_2

    .line 102
    iget v2, p0, Lcn/nubia/camera/aj/f$a;->f:I

    if-lez v2, :cond_2

    sub-int/2addr v2, v1

    .line 103
    iput v2, p0, Lcn/nubia/camera/aj/f$a;->f:I

    .line 106
    :cond_2
    :goto_0
    iput v0, p0, Lcn/nubia/camera/aj/f$a;->d:I

    goto :goto_1

    .line 107
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->c(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 108
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    sget-object v2, Lcn/nubia/camera/k/a/a$c;->h:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;Z)Z

    .line 111
    :cond_4
    :goto_1
    invoke-static {}, Lcn/nubia/camera/ak/a;->a()Lcn/nubia/camera/ak/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ak/a;->aP()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    .line 112
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->j:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    if-eqz p1, :cond_6

    .line 114
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcn/nubia/camera/aj/f$a;->e:B

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->d(Lcn/nubia/camera/aj/f;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 115
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->e(Lcn/nubia/camera/aj/f;)V

    .line 116
    iget-object v0, p0, Lcn/nubia/camera/aj/f$a;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v0}, Lcn/nubia/camera/aj/f;->f(Lcn/nubia/camera/aj/f;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 118
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    iput-byte p1, p0, Lcn/nubia/camera/aj/f$a;->e:B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    :goto_2
    return-void
.end method

.method public a()Z
    .locals 2

    .line 127
    iget v0, p0, Lcn/nubia/camera/aj/f$a;->f:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
