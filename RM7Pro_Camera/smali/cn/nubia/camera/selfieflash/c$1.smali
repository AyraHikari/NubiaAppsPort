.class Lcn/nubia/camera/selfieflash/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/selfieflash/c;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/selfieflash/c;


# direct methods
.method constructor <init>(Lcn/nubia/camera/selfieflash/c;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->a(Lcn/nubia/camera/selfieflash/c;)V

    .line 54
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->b(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 55
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcn/nubia/camera/selfieflash/c;->a(Lcn/nubia/camera/selfieflash/c;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->c(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Thread;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0}, Lcn/nubia/camera/selfieflash/c;->c(Lcn/nubia/camera/selfieflash/c;)Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/selfieflash/c$1;->a:Lcn/nubia/camera/selfieflash/c;

    invoke-static {v0, v2}, Lcn/nubia/camera/selfieflash/c;->a(Lcn/nubia/camera/selfieflash/c;Ljava/lang/Thread;)Ljava/lang/Thread;

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 56
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
