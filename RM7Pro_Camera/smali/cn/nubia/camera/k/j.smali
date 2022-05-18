.class public Lcn/nubia/camera/k/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static a:Ljava/lang/Boolean;


# instance fields
.field private b:Landroid/hardware/camera2/params/Face;

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/hardware/camera2/CaptureResult;)[Lcn/nubia/camera/k/j;
    .locals 7

    .line 68
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/hardware/camera2/params/Face;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 69
    array-length v2, v0

    if-nez v2, :cond_0

    goto :goto_2

    .line 75
    :cond_0
    invoke-static {p0}, Lcn/nubia/camera/k/j;->b(Landroid/hardware/camera2/CaptureResult;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 76
    sget-object v1, Lcn/nubia/camera/k/a/a$c;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v1}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 77
    sget-object v2, Lcn/nubia/camera/k/a/a$c;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v2}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    goto :goto_0

    :cond_1
    move-object p0, v1

    .line 80
    :goto_0
    array-length v2, v0

    new-array v3, v2, [Lcn/nubia/camera/k/j;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_4

    .line 83
    new-instance v5, Lcn/nubia/camera/k/j;

    invoke-direct {v5}, Lcn/nubia/camera/k/j;-><init>()V

    aput-object v5, v3, v4

    .line 84
    aget-object v5, v3, v4

    aget-object v6, v0, v4

    iput-object v6, v5, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    if-eqz v1, :cond_2

    .line 85
    array-length v5, v1

    if-ge v4, v5, :cond_2

    .line 86
    aget-object v5, v3, v4

    aget-byte v6, v1, v4

    iput v6, v5, Lcn/nubia/camera/k/j;->c:I

    :cond_2
    if-eqz p0, :cond_3

    .line 88
    array-length v5, p0

    if-ge v4, v5, :cond_3

    .line 89
    aget-object v5, v3, v4

    aget-byte v6, p0, v4

    iput v6, v5, Lcn/nubia/camera/k/j;->d:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    return-object v3

    :cond_5
    :goto_2
    return-object v1
.end method

.method private static b(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    .line 98
    sget-object v0, Lcn/nubia/camera/k/j;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0

    .line 101
    :cond_0
    invoke-static {p0}, Lcn/nubia/camera/k/j;->c(Landroid/hardware/camera2/CaptureResult;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcn/nubia/camera/k/j;->a:Ljava/lang/Boolean;

    .line 102
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/hardware/camera2/CaptureResult;)Z
    .locals 1

    .line 108
    :try_start_0
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcn/nubia/camera/k/a/a$c;->b:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 28
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method public b()I
    .locals 1

    .line 32
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getId()I

    move-result v0

    return v0
.end method

.method public c()Landroid/graphics/Point;
    .locals 1

    .line 36
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getLeftEyePosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/graphics/Point;
    .locals 1

    .line 40
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getMouthPosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public e()Landroid/graphics/Point;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getRightEyePosition()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public f()I
    .locals 1

    .line 48
    iget-object v0, p0, Lcn/nubia/camera/k/j;->b:Landroid/hardware/camera2/params/Face;

    invoke-virtual {v0}, Landroid/hardware/camera2/params/Face;->getScore()I

    move-result v0

    return v0
.end method

.method public g()I
    .locals 1

    .line 52
    iget v0, p0, Lcn/nubia/camera/k/j;->d:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 56
    iget v0, p0, Lcn/nubia/camera/k/j;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->a()Landroid/graphics/Rect;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->f()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->c()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->e()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->d()Landroid/graphics/Point;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->h()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lcn/nubia/camera/k/j;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string v1, "{ bounds: %s, score: %s, id: %d, leftEyePosition: %s, rightEyePosition: %s, mouthPosition: %s, smileDegree: %s, smileConfidence: %s"

    .line 61
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
