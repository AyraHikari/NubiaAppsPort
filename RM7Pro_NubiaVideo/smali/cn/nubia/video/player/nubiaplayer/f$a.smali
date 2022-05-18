.class Lcn/nubia/video/player/nubiaplayer/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/nubiaplayer/f;->b(Landroid/net/Uri;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/net/Uri;

.field final synthetic c:Lcn/nubia/video/player/nubiaplayer/f;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/nubiaplayer/f;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->b:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/net/Uri;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x4000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "video/*"

    .line 3
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "video_list_start_player"

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "android.intent.extra.finishOnCompletion"

    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 6
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object p1

    const-class v1, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 7
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/f;->g(Lcn/nubia/video/player/nubiaplayer/f;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 8
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "VideoTrimHelper"

    const-string v0, "Screen has Locked"

    .line 9
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    new-instance v0, Lcn/nubia/video/player/p;

    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/video/player/p;-><init>(Landroid/content/Context;)V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v1}, Lcn/nubia/video/player/nubiaplayer/f;->d(Lcn/nubia/video/player/nubiaplayer/f;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->a:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f0f00a5

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/player/p;->h(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    invoke-static {v0}, Lcn/nubia/video/player/nubiaplayer/f;->e(Lcn/nubia/video/player/nubiaplayer/f;)Lcn/nubia/video/commonui/app/f;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->c:Lcn/nubia/video/player/nubiaplayer/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/nubia/video/player/nubiaplayer/f;->f(Lcn/nubia/video/player/nubiaplayer/f;Lcn/nubia/video/commonui/app/f;)Lcn/nubia/video/commonui/app/f;

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/nubiaplayer/f$a;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/nubia/video/player/nubiaplayer/f$a;->a(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
