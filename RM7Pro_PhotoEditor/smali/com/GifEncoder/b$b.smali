.class Lcom/GifEncoder/b$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/b;


# direct methods
.method private constructor <init>(Lcom/GifEncoder/b;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/GifEncoder/b;Lcom/GifEncoder/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/GifEncoder/b$b;-><init>(Lcom/GifEncoder/b;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-static {v0}, Lcom/GifEncoder/b;->c(Lcom/GifEncoder/b;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-static {v0}, Lcom/GifEncoder/b;->d(Lcom/GifEncoder/b;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/GifEncoder/b;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-static {v1}, Lcom/GifEncoder/b;->d(Lcom/GifEncoder/b;)Ljava/util/LinkedList;

    move-result-object v1

    iget-object v2, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-virtual {v2}, Lcom/GifEncoder/b;->f()Lcom/GifEncoder/c;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/GifEncoder/b$b;->a:Lcom/GifEncoder/b;

    invoke-static {v1}, Lcom/GifEncoder/b;->d(Lcom/GifEncoder/b;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    return-void
.end method
