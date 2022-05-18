.class Lcom/GifEncoder/GifMakeActivity$g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->V(Ljava/lang/String;)V
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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$g;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$g;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->y(Lcom/GifEncoder/GifMakeActivity;)Lcn/nubia/app/b;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$g;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p1, p2}, Lcom/GifEncoder/GifMakeActivity;->g0(Landroid/net/Uri;)V

    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x1

    iput p2, p1, Landroid/os/Message;->what:I

    iget-object p2, p0, Lcom/GifEncoder/GifMakeActivity$g;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p2}, Lcom/GifEncoder/GifMakeActivity;->E(Lcom/GifEncoder/GifMakeActivity;)Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
