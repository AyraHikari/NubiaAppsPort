.class Lcn/nubia/video/player/p$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/p;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/p;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x4341434c

    if-eq v0, v1, :cond_2

    const v1, 0x53484f57

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "show"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {v0}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {v0}, Lcn/nubia/video/player/p;->c(Lcn/nubia/video/player/p;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/nubia/video/player/p;->b(Lcn/nubia/video/player/p;Landroid/widget/Toast;)Landroid/widget/Toast;

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {v0}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {p1}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {p1}, Lcn/nubia/video/player/p;->d(Lcn/nubia/video/player/p;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {p1}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcn/nubia/video/player/p$a;->a:Lcn/nubia/video/player/p;

    invoke-static {p1}, Lcn/nubia/video/player/p;->a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->cancel()V

    :cond_3
    :goto_1
    return-void
.end method
