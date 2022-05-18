.class public Lcn/nubia/camera/p/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/hardware/fingerprint/FingerprintManager;

.field private c:Landroid/os/CancellationSignal;

.field private d:Landroid/os/Handler;

.field private e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/nubia/camera/p/a;->a:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcn/nubia/camera/p/a;->b:Landroid/hardware/fingerprint/FingerprintManager;

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    .line 23
    new-instance v0, Lcn/nubia/camera/p/a$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/p/a$1;-><init>(Lcn/nubia/camera/p/a;)V

    iput-object v0, p0, Lcn/nubia/camera/p/a;->e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    .line 58
    new-instance v0, Lcn/nubia/camera/p/a$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/p/a$2;-><init>(Lcn/nubia/camera/p/a;)V

    iput-object v0, p0, Lcn/nubia/camera/p/a;->f:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/p/a;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    .line 16
    iput-object p1, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/p/a;)Landroid/os/Handler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    return-object p0
.end method

.method private a(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "Fingerprint"

    const-string v0, "Handler is null.."

    .line 114
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 117
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private a(Landroid/os/Message;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string p1, "Fingerprint"

    const-string v0, "Handler is null.."

    .line 122
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/p/a;Landroid/os/Message;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcn/nubia/camera/p/a;->a(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/p/a;)Landroid/os/CancellationSignal;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method private b()V
    .locals 4

    .line 98
    iget-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "Fingerprint"

    const-string v1, "startFingerprint failed! Handler is null.."

    .line 99
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/p/a;->f:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/p/a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/p/a;->e:Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    return-object p0
.end method

.method private c()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcn/nubia/camera/p/a;->c:Landroid/os/CancellationSignal;

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/p/a;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    .line 16
    iget-object p0, p0, Lcn/nubia/camera/p/a;->b:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 91
    iget-object v1, p0, Lcn/nubia/camera/p/a;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 93
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/p/a;->c()V

    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    return-void
.end method

.method public a(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    const-string v0, "Fingerprint"

    const-string v1, "open"

    .line 75
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iput-object p1, p0, Lcn/nubia/camera/p/a;->a:Landroid/content/Context;

    .line 77
    iput-object p2, p0, Lcn/nubia/camera/p/a;->d:Landroid/os/Handler;

    .line 78
    iget-object p2, p0, Lcn/nubia/camera/p/a;->b:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p2, :cond_0

    const-string p2, "fingerprint"

    .line 79
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object p1, p0, Lcn/nubia/camera/p/a;->b:Landroid/hardware/fingerprint/FingerprintManager;

    .line 81
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/p/a;->b:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result p1

    if-nez p1, :cond_1

    const/16 p1, 0x6c

    .line 82
    invoke-direct {p0, p1}, Lcn/nubia/camera/p/a;->a(I)V

    const-string p1, "No Fingerprint Hardware Detected.."

    .line 83
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 86
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/p/a;->b()V

    return-void
.end method
