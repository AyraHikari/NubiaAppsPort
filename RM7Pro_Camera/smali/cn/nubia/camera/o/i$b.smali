.class Lcn/nubia/camera/o/i$b;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/camera/o/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/camera/o/i;

.field private b:Landroid/graphics/Bitmap;

.field private c:[I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Lcn/nubia/camera/o/i;IIIIIZI)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v9, p8

    .line 166
    iput-object v1, v0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    const-string v4, "EletronicObject"

    .line 167
    invoke-direct {p0, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 163
    iput-object v4, v0, Lcn/nubia/camera/o/i$b;->c:[I

    const/16 v4, 0x5a

    if-eq v9, v4, :cond_0

    const/16 v4, 0x10e

    if-eq v9, v4, :cond_0

    .line 176
    iput v3, v0, Lcn/nubia/camera/o/i$b;->e:I

    iput v2, v0, Lcn/nubia/camera/o/i$b;->d:I

    goto :goto_0

    .line 172
    :cond_0
    iput v3, v0, Lcn/nubia/camera/o/i$b;->d:I

    iput v2, v0, Lcn/nubia/camera/o/i$b;->e:I

    .line 179
    :goto_0
    iget v4, v0, Lcn/nubia/camera/o/i$b;->d:I

    div-int/lit8 v4, v4, 0x4

    iget v5, v0, Lcn/nubia/camera/o/i$b;->e:I

    div-int/lit8 v5, v5, 0x4

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    .line 180
    new-instance v4, Lcn/nubia/camera/o/b;

    invoke-direct {v4}, Lcn/nubia/camera/o/b;-><init>()V

    invoke-static {p1, v4}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;

    .line 181
    invoke-static {p1}, Lcn/nubia/camera/o/i;->b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;

    move-result-object v1

    const/4 v8, 0x4

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lcn/nubia/camera/o/b;->a(IIIIIZII)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 184
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;I)I

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b()V
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;I)I

    .line 189
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    .line 193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ele proces thread enter, id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/o/i$b;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ElectronicOjbect"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;I)I

    .line 196
    :catch_0
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->d(Lcn/nubia/camera/o/i;)I

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-ne v0, v2, :cond_2

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;

    move-result-object v0

    iget-object v5, p0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    iget-object v6, p0, Lcn/nubia/camera/o/i$b;->c:[I

    invoke-virtual {v0, v5, v6}, Lcn/nubia/camera/o/b;->a(Landroid/graphics/Bitmap;[I)V

    .line 198
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 199
    iget-object v5, p0, Lcn/nubia/camera/o/i$b;->c:[I

    aget v3, v5, v3

    iget-object v5, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v5}, Lcn/nubia/camera/o/i;->e(Lcn/nubia/camera/o/i;)I

    move-result v5

    if-lt v3, v5, :cond_1

    iget-object v3, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v3}, Lcn/nubia/camera/o/i;->f(Lcn/nubia/camera/o/i;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0, v4}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;I)I

    goto :goto_2

    .line 200
    :cond_1
    :goto_1
    iget-object v3, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v3}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 201
    iget-object v3, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v3}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_2
    const-wide/16 v3, 0x28

    .line 206
    :try_start_0
    invoke-static {v3, v4}, Lcn/nubia/camera/o/i$b;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->d(Lcn/nubia/camera/o/i;)I

    move-result v0

    if-ne v0, v4, :cond_3

    .line 212
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 213
    iget v0, p0, Lcn/nubia/camera/o/i$b;->d:I

    iget v2, p0, Lcn/nubia/camera/o/i$b;->e:I

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 214
    iget-object v2, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v2}, Lcn/nubia/camera/o/i;->b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/camera/o/b;->a(Landroid/graphics/Bitmap;)V

    .line 215
    iget-object v2, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v2}, Lcn/nubia/camera/o/i;->g(Lcn/nubia/camera/o/i;)I

    move-result v2

    invoke-static {v0, v2}, Lcn/nubia/l/c/a;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 216
    iget-object v2, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v2}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x5

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 217
    iget-object v2, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v2}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_3

    .line 219
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/o/b;->a()V

    .line 220
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 222
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 223
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_4

    .line 224
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 226
    :cond_4
    iput-object v2, p0, Lcn/nubia/camera/o/i$b;->b:Landroid/graphics/Bitmap;

    .line 228
    :cond_5
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->b(Lcn/nubia/camera/o/i;)Lcn/nubia/camera/o/b;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/o/b;->b()V

    .line 229
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0}, Lcn/nubia/camera/o/i;->c(Lcn/nubia/camera/o/i;)Landroid/os/Handler;

    move-result-object v0

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ele proces thread exit, id = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/o/i$b;->getId()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0, v2}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;Lcn/nubia/camera/o/b;)Lcn/nubia/camera/o/b;

    .line 232
    iget-object v0, p0, Lcn/nubia/camera/o/i$b;->a:Lcn/nubia/camera/o/i;

    invoke-static {v0, v3}, Lcn/nubia/camera/o/i;->a(Lcn/nubia/camera/o/i;I)I

    return-void
.end method
