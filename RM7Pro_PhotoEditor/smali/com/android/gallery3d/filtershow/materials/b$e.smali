.class Lcom/android/gallery3d/filtershow/materials/b$e;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/filtershow/materials/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field private a:J

.field final synthetic b:Lcom/android/gallery3d/filtershow/materials/b;


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/filtershow/materials/b;J)V
    .locals 2

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->b:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->a:J

    iput-wide p2, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->a:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x3e8

    if-gez v0, :cond_0

    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->b:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->l(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/b$e;->b:Lcom/android/gallery3d/filtershow/materials/b;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/b;->l(Lcom/android/gallery3d/filtershow/materials/b;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    :cond_1
    return-void
.end method
