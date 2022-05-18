.class Lcn/nubia/camera/r/e$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/r/m;


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

    .line 686
    iput-object p1, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onRegistrationFinish"

    .line 720
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v1}, Lcn/nubia/camera/r/e;->k(Lcn/nubia/camera/r/e;)Ljava/util/HashMap;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 726
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v3, v2}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;Z)Z

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->k(Lcn/nubia/camera/r/e;)Ljava/util/HashMap;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;Ljava/util/HashMap;)V

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 727
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public a(Lcn/nubia/camera/r/n$b;)V
    .locals 4

    .line 689
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    iget-object v0, v0, Lcn/nubia/camera/r/e;->a:Ljava/util/HashMap;

    iget v1, p1, Lcn/nubia/camera/r/n$b;->e:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7b2c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcn/nubia/camera/r/n$b;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5e27\u914d\u51c6\u77e9\u9635\uff1a\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcn/nubia/camera/r/n$b;->d:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/r/a;->c(Ljava/lang/String;)V

    .line 691
    iget v0, p1, Lcn/nubia/camera/r/n$b;->e:I

    if-nez v0, :cond_0

    .line 692
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u7279\u5f81\u70b9\u6570\uff1a"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcn/nubia/camera/r/n$b;->f:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    .line 694
    :cond_0
    iget v0, p1, Lcn/nubia/camera/r/n$b;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const-string v2, "FreezeVideoFragment"

    if-lez v0, :cond_2

    .line 695
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->i(Lcn/nubia/camera/r/e;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->i(Lcn/nubia/camera/r/e;)I

    move-result v0

    iget v3, p1, Lcn/nubia/camera/r/n$b;->e:I

    if-le v0, v3, :cond_2

    .line 696
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    iget v3, p1, Lcn/nubia/camera/r/n$b;->e:I

    invoke-static {v0, v3}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;I)I

    .line 697
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registration fail in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v3}, Lcn/nubia/camera/r/e;->i(Lcn/nubia/camera/r/e;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 700
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->b(Lcn/nubia/camera/r/e;)Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p1, Lcn/nubia/camera/r/n$b;->c:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_3

    .line 701
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFrameRegistration fail. offset:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcn/nubia/camera/r/n$b;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/nubia/camera/r/e;->a(Lcn/nubia/camera/r/e;Z)Z

    .line 703
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    .line 704
    iget-object v0, p0, Lcn/nubia/camera/r/e$6;->a:Lcn/nubia/camera/r/e;

    invoke-static {v0}, Lcn/nubia/camera/r/e;->j(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/r/e$6$1;

    invoke-direct {v1, p0, p1}, Lcn/nubia/camera/r/e$6$1;-><init>(Lcn/nubia/camera/r/e$6;Lcn/nubia/camera/r/n$b;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
