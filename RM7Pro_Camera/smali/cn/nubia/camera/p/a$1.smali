.class Lcn/nubia/camera/p/a$1;
.super Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;
.source "SourceFile"


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

    .line 23
    iput-object p1, p0, Lcn/nubia/camera/p/a$1;->a:Lcn/nubia/camera/p/a;

    invoke-direct {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2

    .line 26
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationError(ILjava/lang/CharSequence;)V

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAuthenticationError] errorCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", errString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fingerprint"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    iget-object p1, p0, Lcn/nubia/camera/p/a$1;->a:Lcn/nubia/camera/p/a;

    invoke-static {p1}, Lcn/nubia/camera/p/a;->a(Lcn/nubia/camera/p/a;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 30
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    const/16 v0, 0x6f

    .line 31
    iput v0, p1, Landroid/os/Message;->what:I

    .line 32
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    iget-object p2, p0, Lcn/nubia/camera/p/a$1;->a:Lcn/nubia/camera/p/a;

    invoke-static {p2, p1}, Lcn/nubia/camera/p/a;->a(Lcn/nubia/camera/p/a;Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    .line 52
    invoke-super {p0}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationFailed()V

    const-string v0, "Fingerprint"

    const-string v1, "[onAuthenticationFailed]"

    .line 53
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 2

    .line 39
    invoke-super {p0, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationHelp(ILjava/lang/CharSequence;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAuthenticationHelp] helpCode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", helpString = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Fingerprint"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 2

    .line 46
    invoke-super {p0, p1}, Landroid/hardware/fingerprint/FingerprintManager$AuthenticationCallback;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onAuthenticationSucceeded] result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Fingerprint"

    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
