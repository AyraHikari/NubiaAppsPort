.class Lcn/nubia/camera/hitchcock/a$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/hitchcock/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/hitchcock/a;


# direct methods
.method constructor <init>(Lcn/nubia/camera/hitchcock/a;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const-string v0, "AsyncTracker"

    .line 76
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/a$1;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    :cond_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->b(Lcn/nubia/camera/hitchcock/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    goto :goto_1

    .line 131
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->b()V

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/hitchcock/a$a;->a()V

    :cond_2
    const-string v0, "AsyncTracker"

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TrackThread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/a$1;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    monitor-enter v0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/a;->b(Lcn/nubia/camera/hitchcock/a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/a;->c(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/a;->d(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_4

    goto/16 :goto_3

    .line 90
    :cond_4
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v1}, Lcn/nubia/camera/hitchcock/a;->b(Lcn/nubia/camera/hitchcock/a;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/hitchcock/a$b;

    .line 91
    iget-boolean v2, v1, Lcn/nubia/camera/hitchcock/a$b;->c:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 92
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v2, v3}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    goto :goto_2

    .line 95
    :cond_5
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/a;->c(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 96
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/a;->c(Lcn/nubia/camera/hitchcock/a;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-static {v2, v4}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 97
    iget-object v4, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v4, v3}, Lcn/nubia/camera/hitchcock/a;->b(Lcn/nubia/camera/hitchcock/a;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v3, v2

    .line 101
    :cond_6
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    iget-boolean v0, v1, Lcn/nubia/camera/hitchcock/a$b;->c:Z

    if-eqz v0, :cond_7

    .line 103
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->b()V

    .line 105
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/camera/hitchcock/a$a;->a()V

    goto/16 :goto_0

    .line 110
    :cond_7
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->a()Z

    move-result v0

    const/high16 v2, 0x3f000000    # 0.5f

    if-nez v0, :cond_8

    .line 111
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/camera/hitchcock/a$b;->b:Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcn/nubia/camera/hitchcock/a;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/nubia/algorithm/camera/Tracker;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 112
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-wide v3, v1, Lcn/nubia/camera/hitchcock/a$b;->a:J

    invoke-interface {v0, v2, v3, v4}, Lcn/nubia/camera/hitchcock/a$a;->a(Landroid/graphics/Rect;J)V

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    .line 117
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/Tracker;->b()V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    iget-object v4, v1, Lcn/nubia/camera/hitchcock/a$b;->b:Landroid/graphics/Bitmap;

    invoke-static {v3, v2}, Lcn/nubia/camera/hitchcock/a;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcn/nubia/algorithm/camera/Tracker;->a(Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v0

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-wide v3, v1, Lcn/nubia/camera/hitchcock/a$b;->a:J

    invoke-interface {v0, v2, v3, v4}, Lcn/nubia/camera/hitchcock/a$a;->a(Landroid/graphics/Rect;J)V

    goto/16 :goto_0

    .line 124
    :cond_9
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v0}, Lcn/nubia/camera/hitchcock/a;->e(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/algorithm/camera/Tracker;

    move-result-object v0

    iget-object v2, v1, Lcn/nubia/camera/hitchcock/a$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Lcn/nubia/algorithm/camera/Tracker;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Rect;

    move-result-object v0

    const/high16 v2, 0x40000000    # 2.0f

    .line 125
    invoke-static {v0, v2}, Lcn/nubia/camera/hitchcock/a;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object v0

    .line 126
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 127
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-static {v2}, Lcn/nubia/camera/hitchcock/a;->f(Lcn/nubia/camera/hitchcock/a;)Lcn/nubia/camera/hitchcock/a$a;

    move-result-object v2

    iget-wide v3, v1, Lcn/nubia/camera/hitchcock/a$b;->a:J

    invoke-interface {v2, v0, v3, v4}, Lcn/nubia/camera/hitchcock/a$a;->a(Landroid/graphics/Rect;J)V

    goto/16 :goto_0

    .line 84
    :cond_a
    :goto_3
    :try_start_1
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/a$1;->a:Lcn/nubia/camera/hitchcock/a;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v1

    .line 86
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 88
    :goto_4
    monitor-exit v0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 101
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
