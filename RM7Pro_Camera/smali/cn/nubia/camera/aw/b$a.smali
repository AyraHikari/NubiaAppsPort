.class Lcn/nubia/camera/aw/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/k/ab$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aw/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aw/b;

.field private b:I

.field private c:Ljava/lang/Object;

.field private d:Lcn/nubia/camera/k/ah;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>(Lcn/nubia/camera/aw/b;Lcn/nubia/camera/k/ah;II)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 377
    iput p1, p0, Lcn/nubia/camera/aw/b$a;->b:I

    .line 378
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/nubia/camera/aw/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 380
    iput p1, p0, Lcn/nubia/camera/aw/b$a;->e:I

    .line 387
    iput-object p2, p0, Lcn/nubia/camera/aw/b$a;->d:Lcn/nubia/camera/k/ah;

    .line 388
    iput p3, p0, Lcn/nubia/camera/aw/b$a;->e:I

    .line 389
    iput p4, p0, Lcn/nubia/camera/aw/b$a;->f:I

    return-void
.end method


# virtual methods
.method public o_()V
    .locals 13

    .line 395
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->c:Ljava/lang/Object;

    monitor-enter v0

    .line 396
    :try_start_0
    iget v1, p0, Lcn/nubia/camera/aw/b$a;->b:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcn/nubia/camera/aw/b$a;->b:I

    .line 398
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    iget v0, p0, Lcn/nubia/camera/aw/b$a;->e:I

    if-ne v1, v0, :cond_3

    .line 405
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->d:Lcn/nubia/camera/k/ah;

    invoke-virtual {v0, p0}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 406
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 407
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->d(Lcn/nubia/camera/aw/b;)J

    move-result-wide v5

    sub-long v5, v3, v5

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    const-wide/16 v5, 0x0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->d(Lcn/nubia/camera/aw/b;)J

    move-result-wide v9

    sub-long v9, v3, v9

    sub-long v9, v7, v9

    goto :goto_0

    :cond_0
    move-wide v9, v5

    :goto_0
    const-string v0, "MemberSwitcherHelper"

    .line 408
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "stopDelay: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget v0, p0, Lcn/nubia/camera/aw/b$a;->f:I

    if-ne v0, v2, :cond_1

    .line 410
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->b(Lcn/nubia/camera/aw/b;)Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->e()V

    goto :goto_1

    .line 412
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ae/a;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Lcn/nubia/camera/ae/a;->a(J)V

    .line 414
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->d(Lcn/nubia/camera/aw/b;)J

    move-result-wide v9

    sub-long v9, v3, v9

    const-wide/16 v11, 0x1f4

    cmp-long v0, v9, v11

    if-gez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->d(Lcn/nubia/camera/aw/b;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sub-long v5, v7, v3

    :cond_2
    add-long/2addr v5, v7

    .line 415
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/m/a;->a(Z)V

    .line 416
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->M()Lcn/nubia/camera/m/a;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Lcn/nubia/camera/m/a;->a(J)V

    .line 417
    iget-object v0, p0, Lcn/nubia/camera/aw/b$a;->a:Lcn/nubia/camera/aw/b;

    invoke-static {v0}, Lcn/nubia/camera/aw/b;->c(Lcn/nubia/camera/aw/b;)Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    :cond_3
    const-string v0, "MemberSwitcherHelper"

    .line 419
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "receiveFrame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v1

    .line 398
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
