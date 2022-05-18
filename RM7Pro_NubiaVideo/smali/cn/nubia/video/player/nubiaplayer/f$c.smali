.class Lcn/nubia/video/player/nubiaplayer/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/f;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/nubiaplayer/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    new-instance v1, Lcn/nubia/video/commonui/app/f;

    iget-object v2, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v2}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f100118

    invoke-direct {v1, v2, v3}, Lcn/nubia/video/commonui/app/f;-><init>(Landroid/content/Context;I)V

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/f;->f(Lcn/nubia/video/player/nubiaplayer/f;Lcn/nubia/video/commonui/app/f;)Lcn/nubia/video/commonui/app/f;

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/f;->j(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/d;->setCanceledOnTouchOutside(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b;->show()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$c;->a:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    const v1, 0x7f060085

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b;->g(I)V

    return-void
.end method
