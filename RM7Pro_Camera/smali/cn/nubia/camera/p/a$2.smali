.class Lcn/nubia/camera/p/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/p/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/p/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/p/a;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcn/nubia/camera/p/a$2;->a:Lcn/nubia/camera/p/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 61
    iget-object v0, p0, Lcn/nubia/camera/p/a$2;->a:Lcn/nubia/camera/p/a;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/camera/p/a;->a(Lcn/nubia/camera/p/a;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;

    .line 63
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/p/a$2;->a:Lcn/nubia/camera/p/a;

    invoke-static {v0}, Lcn/nubia/camera/p/a;->d(Lcn/nubia/camera/p/a;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v0, p0, Lcn/nubia/camera/p/a$2;->a:Lcn/nubia/camera/p/a;

    invoke-static {v0}, Lcn/nubia/camera/p/a;->b(Lcn/nubia/camera/p/a;)Landroid/os/CancellationSignal;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v0, p0, Lcn/nubia/camera/p/a$2;->a:Lcn/nubia/camera/p/a;

    .line 64
    invoke-static {v0}, Lcn/nubia/camera/p/a;->c(Lcn/nubia/camera/p/a;)Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;

    move-result-object v5

    const/4 v6, 0x0

    .line 63
    invoke-virtual/range {v1 .. v6}, Landroid/hardware/fingerprint/FingerprintManager;->authenticate(Landroid/hardware/fingerprint/FingerprintManager$CryptoObject;Landroid/os/CancellationSignal;ILandroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Fingerprint"

    const-string v1, "authenticate failed.."

    .line 66
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
