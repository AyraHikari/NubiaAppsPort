.class Lcn/nubia/camera/aa/a$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/videogenerator/b/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/aa/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/aa/a;


# virtual methods
.method public a([B)V
    .locals 5

    .line 66
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 67
    new-instance v2, Lcn/nubia/camera/aa/a$a;

    invoke-direct {v2, p1, v0, v1}, Lcn/nubia/camera/aa/a$a;-><init>([BJ)V

    .line 68
    iget-object p1, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    monitor-enter p1

    .line 69
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-static {v3}, Lcn/nubia/camera/aa/a;->a(Lcn/nubia/camera/aa/a;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 70
    monitor-exit p1

    return-void

    .line 72
    :cond_0
    iget-object v3, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-static {v3}, Lcn/nubia/camera/aa/a;->b(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v3, v4, v0, v1}, Lcn/nubia/camera/aa/a;->a(Lcn/nubia/camera/aa/a;Ljava/util/ArrayList;J)V

    .line 73
    iget-object v3, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-static {v3}, Lcn/nubia/camera/aa/a;->b(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v3, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-static {v3}, Lcn/nubia/camera/aa/a;->c(Lcn/nubia/camera/aa/a;)J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v3, 0x5dc

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 75
    iget-object v0, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-static {v0}, Lcn/nubia/camera/aa/a;->d(Lcn/nubia/camera/aa/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 76
    iget-object v0, p0, Lcn/nubia/camera/aa/a$1;->a:Lcn/nubia/camera/aa/a;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 78
    :cond_1
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
