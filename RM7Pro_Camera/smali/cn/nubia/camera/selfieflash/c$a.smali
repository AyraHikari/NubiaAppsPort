.class Lcn/nubia/camera/selfieflash/c$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/selfieflash/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/selfieflash/c;


# direct methods
.method private constructor <init>(Lcn/nubia/camera/selfieflash/c;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/camera/selfieflash/c;Lcn/nubia/camera/selfieflash/c$1;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcn/nubia/camera/selfieflash/c$a;-><init>(Lcn/nubia/camera/selfieflash/c;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 86
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->d(Lcn/nubia/camera/selfieflash/c;)Lcn/nubia/camera/selfieflash/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/selfieflash/a;->a()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 87
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->b(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v1}, Lcn/nubia/camera/selfieflash/c;->e(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Runnable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 89
    iget-object v1, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v1}, Lcn/nubia/camera/selfieflash/c;->f(Lcn/nubia/camera/selfieflash/c;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/selfieflash/c$a$1;

    invoke-direct {v2, p0}, Lcn/nubia/camera/selfieflash/c$a$1;-><init>(Lcn/nubia/camera/selfieflash/c$a;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 99
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    const-string v0, "SelfieFlashCapture"

    const-string v1, "Selfie Flash interrupted"

    .line 101
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$a;->a:Lcn/nubia/camera/selfieflash/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/camera/selfieflash/c;->a(Lcn/nubia/camera/selfieflash/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    return-void
.end method
