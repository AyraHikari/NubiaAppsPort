.class Lcn/nubia/camera/r/e$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/r/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/r/e;


# direct methods
.method constructor <init>(Lcn/nubia/camera/r/e;)V
    .locals 0

    .line 439
    iput-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onExtractFinish"

    .line 463
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    monitor-enter v0

    .line 466
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {v1}, Lcn/nubia/camera/r/e;->e(Lcn/nubia/camera/r/e;)Z

    move-result v1

    .line 469
    iget-object v2, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {v2, p1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 470
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 472
    iget-object v0, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0, p1}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;Ljava/util/HashMap;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 470
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 443
    iget-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne p1, v0, :cond_0

    .line 444
    iget-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Z)Z

    .line 445
    iget-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    .line 446
    iget-object p1, p0, Lcn/nubia/camera/r/e$3;->a:Lcn/nubia/camera/r/e;

    invoke-static {p1}, Lcn/nubia/camera/r/e;->d(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcn/nubia/camera/r/e$3$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$3$1;-><init>(Lcn/nubia/camera/r/e$3;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
