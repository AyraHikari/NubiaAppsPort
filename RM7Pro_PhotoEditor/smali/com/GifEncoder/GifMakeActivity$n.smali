.class Lcom/GifEncoder/GifMakeActivity$n;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/GifEncoder/GifMakeActivity;
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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$n;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    const-string p1, "GifMakeActivity"

    const-string v0, "connect GetPicture service"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$n;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p2}, Lb/a/b/a/a$a;->d(Landroid/os/IBinder;)Lb/a/b/a/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/GifEncoder/GifMakeActivity;->a0(Lb/a/b/a/a;)V

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$n;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->H(Lcom/GifEncoder/GifMakeActivity;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$n;->a:Lcom/GifEncoder/GifMakeActivity;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/GifEncoder/GifMakeActivity;->a0(Lb/a/b/a/a;)V

    return-void
.end method
