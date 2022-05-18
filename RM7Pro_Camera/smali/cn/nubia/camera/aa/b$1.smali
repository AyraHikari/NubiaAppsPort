.class Lcn/nubia/camera/aa/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/v/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/camera/aa/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:J

.field final synthetic b:Lcn/nubia/camera/aa/b;


# direct methods
.method constructor <init>(Lcn/nubia/camera/aa/b;)V
    .locals 2

    .line 114
    iput-object p1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 116
    iput-wide v0, p0, Lcn/nubia/camera/aa/b$1;->a:J

    return-void
.end method


# virtual methods
.method public a()V
    .locals 8

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    monitor-enter v0

    .line 120
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    iget-object v1, v1, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    sget-object v2, Lcn/nubia/camera/aa/b$c;->b:Lcn/nubia/camera/aa/b$c;

    if-eq v1, v2, :cond_0

    const-string v1, "LivePhoto"

    .line 121
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error state in onFrameAvailable "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    iget-object v3, v3, Lcn/nubia/camera/aa/b;->a:Lcn/nubia/camera/aa/b$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->e()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_4

    .line 125
    iget-wide v5, p0, Lcn/nubia/camera/aa/b$1;->a:J

    cmp-long v7, v1, v5

    if-gtz v7, :cond_1

    goto :goto_0

    :cond_1
    cmp-long v3, v5, v3

    if-gtz v3, :cond_2

    .line 131
    iput-wide v1, p0, Lcn/nubia/camera/aa/b$1;->a:J

    .line 132
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 133
    monitor-exit v0

    return-void

    .line 135
    :cond_2
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->A()Lcom/android/preference/c;

    move-result-object v1

    if-nez v1, :cond_3

    const-string v1, "LivePhoto"

    const-string v2, "return: mMemberInfo.getPreferences() == null"

    .line 136
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 138
    monitor-exit v0

    return-void

    .line 140
    :cond_3
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/d/c;->h:Lcn/nubia/camera/d/c;

    invoke-virtual {v1, v2}, Lcn/nubia/camera/d/a;->b(Lcn/nubia/camera/d/c;)V

    .line 141
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/v/d;->d()Lcom/android/common/a;

    move-result-object v1

    .line 142
    iget-object v2, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    iget v3, v1, Lcom/android/common/a;->c:I

    invoke-static {v2, v3}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;I)I

    .line 143
    iget-object v2, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    iget v1, v1, Lcom/android/common/a;->d:I

    invoke-static {v2, v1}, Lcn/nubia/camera/aa/b;->b(Lcn/nubia/camera/aa/b;I)I

    .line 144
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->c(Lcn/nubia/camera/aa/b;)V

    .line 147
    monitor-exit v0

    return-void

    :cond_4
    :goto_0
    const-string v1, "LivePhoto"

    const-string v2, "return: invalid frame timestamp"

    .line 126
    invoke-static {v1, v2}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v1, p0, Lcn/nubia/camera/aa/b$1;->b:Lcn/nubia/camera/aa/b;

    invoke-static {v1}, Lcn/nubia/camera/aa/b;->a(Lcn/nubia/camera/aa/b;)Lcn/nubia/camera/v/d;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcn/nubia/camera/v/d;->a(Lcn/nubia/camera/v/d$a;)V

    .line 128
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    .line 147
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
