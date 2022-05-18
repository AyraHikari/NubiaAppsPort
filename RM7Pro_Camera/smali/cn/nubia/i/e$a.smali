.class Lcn/nubia/i/e$a;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/i/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/i/e;

.field private b:Z


# direct methods
.method private constructor <init>(Lcn/nubia/i/e;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p1, 0x0

    .line 61
    iput-boolean p1, p0, Lcn/nubia/i/e$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/i/e;Lcn/nubia/i/e$1;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcn/nubia/i/e$a;-><init>(Lcn/nubia/i/e;)V

    return-void
.end method

.method private a(Lcn/nubia/i/i;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 116
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->a(Lcn/nubia/i/e;)Lcn/nubia/i/j;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 118
    sget-object v1, Lcn/nubia/i/l;->k:Ljava/lang/String;

    invoke-virtual {p1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcn/nubia/i/l;->m:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 120
    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->a(Lcn/nubia/i/e;)Lcn/nubia/i/j;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcn/nubia/i/j;->a(Landroid/content/ContentValues;Lcn/nubia/i/i;)V

    :cond_0
    return-void
.end method

.method private b(Lcn/nubia/i/i;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 126
    invoke-virtual {p1}, Lcn/nubia/i/i;->b()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 127
    invoke-virtual {p1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 128
    invoke-virtual {p1}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/i/i;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .line 105
    iget-boolean v0, p0, Lcn/nubia/i/e$a;->b:Z

    if-eqz v0, :cond_0

    const-string v0, "DownloadIcon"

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/e$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has stopped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    .line 110
    :try_start_0
    iput-boolean v1, p0, Lcn/nubia/i/e$a;->b:Z

    .line 111
    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 112
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public run()V
    .locals 4

    .line 65
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    const-string v0, "DownloadIcon"

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PrismaLeak] thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/e$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " start"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->a(Lcn/nubia/i/e;)Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/j;->c()V

    .line 69
    :goto_0
    iget-boolean v0, p0, Lcn/nubia/i/e$a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    :cond_0
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v0

    monitor-enter v0

    .line 71
    :try_start_0
    iget-boolean v1, p0, Lcn/nubia/i/e$a;->b:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->a(Lcn/nubia/i/e;)Lcn/nubia/i/j;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/i/j;->d()V

    const-string v0, "DownloadIcon"

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[PrismaLeak] thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/i/e$a;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exit"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 75
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 77
    :try_start_2
    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 79
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 81
    :goto_1
    monitor-exit v0

    goto :goto_0

    .line 83
    :cond_3
    iget-object v1, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v1}, Lcn/nubia/i/e;->b(Lcn/nubia/i/e;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/i/c;

    .line 85
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v0, "DownloadIcon"

    .line 86
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iconState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/i/i;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 89
    invoke-virtual {v1}, Lcn/nubia/i/c;->a()Lcn/nubia/i/i;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcn/nubia/i/i;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 91
    invoke-direct {p0, v0}, Lcn/nubia/i/e$a;->b(Lcn/nubia/i/i;)V

    goto :goto_2

    :cond_4
    const/4 v2, 0x2

    .line 93
    invoke-virtual {v0, v2}, Lcn/nubia/i/i;->a(I)V

    .line 94
    iget-object v2, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v2}, Lcn/nubia/i/e;->c(Lcn/nubia/i/e;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcn/nubia/i/p;->a(Ljava/lang/String;Lcn/nubia/i/i;)V

    .line 95
    invoke-direct {p0, v0}, Lcn/nubia/i/e$a;->a(Lcn/nubia/i/i;)V

    .line 98
    :cond_5
    :goto_2
    iget-object v0, p0, Lcn/nubia/i/e$a;->a:Lcn/nubia/i/e;

    invoke-static {v0}, Lcn/nubia/i/e;->d(Lcn/nubia/i/e;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 85
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
