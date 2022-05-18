.class Lcn/nubia/camera/k/b/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/k/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/k/b/b;

.field private final b:Lcn/nubia/camera/k/b/a;

.field private c:Lcn/nubia/camera/k/b/c;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/k/b/b;Lcn/nubia/camera/k/b/a;Lcn/nubia/camera/k/b/c;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcn/nubia/camera/k/b/b$a;->a:Lcn/nubia/camera/k/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p2, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    .line 28
    iput-object p3, p0, Lcn/nubia/camera/k/b/b$a;->c:Lcn/nubia/camera/k/b/c;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "[DEBUG] Executing command: "

    const-string v1, "[DEBUG] command run finally"

    const-string v2, "CameraCommandExecutor"

    .line 33
    iget-object v3, p0, Lcn/nubia/camera/k/b/b$a;->c:Lcn/nubia/camera/k/b/c;

    invoke-virtual {v3}, Lcn/nubia/camera/k/b/c;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    .line 37
    :cond_0
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " START"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v3, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    invoke-interface {v3}, Lcn/nubia/camera/k/b/a;->a()V

    .line 39
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " END"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/a;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v3, "caught exception"

    .line 48
    invoke-static {v2, v3, v0}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :goto_0
    invoke-static {v2, v1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 46
    :catch_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to connect to camera while executing command: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 43
    :catch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted while executing command: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/k/b/b$a;->b:Lcn/nubia/camera/k/b/a;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    .line 50
    :goto_2
    invoke-static {v2, v1}, Lcn/nubia/camera/c/a;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    throw v0
.end method
