.class public Lcn/nubia/camera/selfieflash/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/selfieflash/a;


# instance fields
.field private a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

.field private b:Lcn/nubia/camera/ad/a;

.field private c:Lcn/nubia/camera/k/ah;

.field private d:F

.field private e:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    .line 27
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    .line 28
    iput-object p2, p0, Lcn/nubia/camera/selfieflash/b;->c:Lcn/nubia/camera/k/ah;

    return-void
.end method

.method private a(F)F
    .locals 3

    .line 89
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 91
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 92
    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return v2
.end method

.method private e()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0902b8

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/selfieflash/SelfieFlashView;

    iput-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 82
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00a2

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 83
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/selfieflash/SelfieFlashView;

    iput-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x3e8

    return v0
.end method

.method public b()V
    .locals 9

    .line 38
    iget v0, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    if-nez v0, :cond_1

    .line 42
    invoke-direct {p0}, Lcn/nubia/camera/selfieflash/b;->e()V

    .line 44
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    invoke-virtual {v0}, Lcn/nubia/camera/selfieflash/SelfieFlashView;->bringToFront()V

    .line 45
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    invoke-virtual {v0}, Lcn/nubia/camera/selfieflash/SelfieFlashView;->a()V

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v2

    const/16 v3, 0x8

    const-wide/16 v4, -0x1

    const-wide/16 v6, -0x1

    const-string v8, "selfieTake"

    invoke-virtual/range {v2 .. v8}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 47
    invoke-direct {p0, v0}, Lcn/nubia/camera/selfieflash/b;->a(F)F

    move-result v0

    iput v0, p0, Lcn/nubia/camera/selfieflash/b;->d:F

    .line 48
    iput v1, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    .line 49
    new-instance v0, Lcn/nubia/camera/k/ad;

    invoke-direct {v0}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 50
    sget-object v1, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 51
    iget-object v1, p0, Lcn/nubia/camera/selfieflash/b;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method public c()V
    .locals 8

    .line 56
    iget v0, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    if-nez v0, :cond_0

    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->a:Lcn/nubia/camera/selfieflash/SelfieFlashView;

    if-nez v0, :cond_1

    return-void

    .line 62
    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/selfieflash/SelfieFlashView;->b()V

    .line 63
    iget v0, p0, Lcn/nubia/camera/selfieflash/b;->d:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    .line 64
    invoke-direct {p0, v0}, Lcn/nubia/camera/selfieflash/b;->a(F)F

    .line 66
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->b:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, -0x1

    const-wide/16 v5, -0x1

    const-string v7, "selfieTake"

    invoke-virtual/range {v1 .. v7}, Lcn/nubia/camera/ae/a;->a(IJJLjava/lang/String;)V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    .line 68
    new-instance v1, Lcn/nubia/camera/k/ad;

    invoke-direct {v1}, Lcn/nubia/camera/k/ad;-><init>()V

    .line 69
    sget-object v2, Lcn/nubia/camera/k/a/a$b;->D:Landroid/hardware/camera2/CaptureRequest$Key;

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/nubia/camera/k/ad;->a(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Z

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/b;->c:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ad;)V

    return-void
.end method

.method public d()I
    .locals 1

    .line 75
    iget v0, p0, Lcn/nubia/camera/selfieflash/b;->e:I

    return v0
.end method
