.class Lcom/GifEncoder/GifMakeActivity$e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->f0(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$e;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$e;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$e;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->u(Lcom/GifEncoder/GifMakeActivity;)Lb/a/e/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/e/c/a;->n()V

    :cond_0
    const-string v0, "GifMakeActivity"

    const-string v1, "ProgressListener.onComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$e;->a:Lcom/GifEncoder/GifMakeActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->x(Lcom/GifEncoder/GifMakeActivity;I)I

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity$e;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v1}, Lcom/GifEncoder/GifMakeActivity;->E(Lcom/GifEncoder/GifMakeActivity;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method
