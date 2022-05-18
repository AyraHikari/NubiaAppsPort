.class Lcom/GifEncoder/GifMakeActivity$f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lb/a/e/b/c;


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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$f;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$f;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->E(Lcom/GifEncoder/GifMakeActivity;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x64

    iput v1, v0, Landroid/os/Message;->what:I

    long-to-int p1, p1

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$f;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->E(Lcom/GifEncoder/GifMakeActivity;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
