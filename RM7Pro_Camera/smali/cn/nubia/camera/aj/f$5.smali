.class Lcn/nubia/camera/aj/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aj/f;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aj/f;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aj/f;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcn/nubia/camera/aj/f$5;->a:Lcn/nubia/camera/aj/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 397
    iget-object v0, p0, Lcn/nubia/camera/aj/f$5;->a:Lcn/nubia/camera/aj/f;

    monitor-enter v0

    .line 398
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aj/f$5;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->k(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 399
    iget-object v1, p0, Lcn/nubia/camera/aj/f$5;->a:Lcn/nubia/camera/aj/f;

    invoke-static {v1}, Lcn/nubia/camera/aj/f;->k(Lcn/nubia/camera/aj/f;)Lcn/nubia/camera/v/d;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/aj/f;->a(Lcn/nubia/camera/aj/f;Lcom/android/common/a;)V

    .line 401
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
