.class Lcom/android/common/c/c$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/c/c;


# direct methods
.method public constructor <init>(Lcom/android/common/c/c;Landroid/os/Looper;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    .line 76
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_0

    goto/16 :goto_1

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {p1}, Lcom/android/common/c/c;->a(Lcom/android/common/c/c;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 85
    :try_start_0
    iget-object v0, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v0}, Lcom/android/common/c/c;->b(Lcom/android/common/c/c;)Ljava/util/ArrayList;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v1, v2}, Lcom/android/common/c/c;->a(Lcom/android/common/c/c;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 87
    iget-object v1, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v1}, Lcom/android/common/c/c;->c(Lcom/android/common/c/c;)[Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 88
    iget-object v2, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/common/c/c;->a(Lcom/android/common/c/c;[Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;

    .line 89
    iget-object v2, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v2}, Lcom/android/common/c/c;->d(Lcom/android/common/c/c;)Lcom/android/common/c/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/common/c/f;->j()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 90
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    .line 91
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 92
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/common/c/f$b;

    if-eqz v4, :cond_1

    const/4 v5, 0x0

    .line 94
    :goto_0
    iget-object v6, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v6}, Lcom/android/common/c/c;->e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;

    move-result-object v6

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 95
    aget-object v6, v1, v5

    iget-object v7, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v7}, Lcom/android/common/c/c;->e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;

    move-result-object v7

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    iget-object v8, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v8}, Lcom/android/common/c/c;->e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-interface {v4, v6, v7, v8, v2}, Lcom/android/common/c/f$b;->a(Ljava/nio/ByteBuffer;IILandroid/graphics/Matrix;)V

    const-string v6, "PreviewDataForRects"

    .line 96
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "smile width , heigth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v8}, Lcom/android/common/c/c;->e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/common/c/c$a;->a:Lcom/android/common/c/c;

    invoke-static {v8}, Lcom/android/common/c/c;->e(Lcom/android/common/c/c;)[Landroid/graphics/Rect;

    move-result-object v8

    aget-object v8, v8, v5

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    aget-object v6, v1, v5

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 106
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
