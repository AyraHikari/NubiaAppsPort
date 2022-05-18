.class Lcom/android/gallery3d/filtershow/materials/u/c$b;
.super Ljava/lang/Thread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/gallery3d/filtershow/materials/u/c;->f(Lcom/android/gallery3d/filtershow/materials/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/gallery3d/filtershow/materials/c;

.field final synthetic b:Lcom/android/gallery3d/filtershow/materials/u/c;


# direct methods
.method constructor <init>(Lcom/android/gallery3d/filtershow/materials/u/c;Lcom/android/gallery3d/filtershow/materials/c;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/c;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/filtershow/materials/u/c;->g(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->b(Lcom/android/gallery3d/filtershow/materials/u/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->c(Lcom/android/gallery3d/filtershow/materials/u/c;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/materials/u/c;->d(Lcom/android/gallery3d/filtershow/materials/u/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->f(Lcom/android/gallery3d/filtershow/materials/c;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->e(Lcom/android/gallery3d/filtershow/materials/u/c;)Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->a:Lcom/android/gallery3d/filtershow/materials/c;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/materials/c;->r(Ljava/lang/String;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->a:Lcom/android/gallery3d/filtershow/materials/c;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/materials/u/c$b;->b:Lcom/android/gallery3d/filtershow/materials/u/c;

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/materials/u/c;->e(Lcom/android/gallery3d/filtershow/materials/u/c;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
