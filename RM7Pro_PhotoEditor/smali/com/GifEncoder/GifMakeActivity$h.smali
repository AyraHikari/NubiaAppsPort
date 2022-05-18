.class Lcom/GifEncoder/GifMakeActivity$h;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->g0(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/NotificationManager;

.field final synthetic b:Lcom/GifEncoder/GifMakeActivity;


# direct methods
.method constructor <init>(Lcom/GifEncoder/GifMakeActivity;Landroid/app/NotificationManager;)V
    .locals 0

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$h;->b:Lcom/GifEncoder/GifMakeActivity;

    iput-object p2, p0, Lcom/GifEncoder/GifMakeActivity$h;->a:Landroid/app/NotificationManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$h;->a:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity$h;->b:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v1}, Lcom/GifEncoder/GifMakeActivity;->z(Lcom/GifEncoder/GifMakeActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method
