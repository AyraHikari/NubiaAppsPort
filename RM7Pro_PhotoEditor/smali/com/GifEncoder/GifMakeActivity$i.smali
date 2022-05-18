.class Lcom/GifEncoder/GifMakeActivity$i;
.super Ljava/util/TimerTask;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/GifEncoder/GifMakeActivity;->Q()V
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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$i;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$i;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->A(Lcom/GifEncoder/GifMakeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/GifEncoder/GifMakeActivity;->B(Lcom/GifEncoder/GifMakeActivity;Ljava/lang/String;)V

    return-void
.end method
