.class Lcom/GifEncoder/GifMakeActivity$j;
.super Landroid/os/Handler;
.source ""


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

    iput-object p1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->C(Lcom/GifEncoder/GifMakeActivity;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    const/16 v1, 0x64

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->D(Lcom/GifEncoder/GifMakeActivity;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->y(Lcom/GifEncoder/GifMakeActivity;)Lcn/nubia/app/b;

    move-result-object v0

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {v0}, Lcom/GifEncoder/GifMakeActivity;->F(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    const v2, 0x7f0e00be

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "%)"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->G(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/GifEncoder/GifMakeActivity$j;->a:Lcom/GifEncoder/GifMakeActivity;

    invoke-static {p1}, Lcom/GifEncoder/GifMakeActivity;->G(Lcom/GifEncoder/GifMakeActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method
