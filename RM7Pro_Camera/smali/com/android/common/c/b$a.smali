.class Lcom/android/common/c/b$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/c/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/c/b;


# direct methods
.method public constructor <init>(Lcom/android/common/c/b;Landroid/os/Looper;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    .line 101
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 107
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto :goto_1

    .line 109
    :cond_0
    iget-object p1, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    invoke-static {p1}, Lcom/android/common/c/b;->a(Lcom/android/common/c/b;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    invoke-static {v0}, Lcom/android/common/c/b;->b(Lcom/android/common/c/b;)Ljava/util/ArrayList;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/common/c/b;->a(Lcom/android/common/c/b;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 112
    iget-object v1, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    invoke-static {v1}, Lcom/android/common/c/b;->c(Lcom/android/common/c/b;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/common/c/b;->a(Lcom/android/common/c/b;Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 114
    iget-object v2, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    invoke-static {v2}, Lcom/android/common/c/b;->d(Lcom/android/common/c/b;)Lcom/android/common/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/f;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 115
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 117
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/common/c/f$b;

    if-eqz v4, :cond_1

    .line 119
    iget-object v5, p0, Lcom/android/common/c/b$a;->a:Lcom/android/common/c/b;

    invoke-static {v5}, Lcom/android/common/c/b;->d(Lcom/android/common/c/b;)Lcom/android/common/c/f;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/common/c/f;->t()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/c/b;->a(Lcom/android/common/c/b;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 120
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-interface {v4, v1, v6, v5, v2}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    .line 121
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_0

    .line 126
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 127
    monitor-exit p1

    :goto_1
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
