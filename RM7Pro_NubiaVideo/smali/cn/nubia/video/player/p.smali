.class public Lcn/nubia/video/player/p;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/Toast;

.field private b:Landroid/content/Context;

.field private c:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/nubia/video/player/p$a;

    .line 3
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/nubia/video/player/p$a;-><init>(Lcn/nubia/video/player/p;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/nubia/video/player/p;->c:Landroid/os/Handler;

    .line 4
    new-instance v0, Lcn/nubia/video/player/p$b;

    invoke-direct {v0, p0}, Lcn/nubia/video/player/p$b;-><init>(Lcn/nubia/video/player/p;)V

    iput-object v0, p0, Lcn/nubia/video/player/p;->d:Ljava/lang/Runnable;

    .line 5
    iput-object p1, p0, Lcn/nubia/video/player/p;->b:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/p;)Landroid/widget/Toast;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/p;->a:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/p;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/p;->a:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic c(Lcn/nubia/video/player/p;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/p;->b:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/video/player/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/p;->f()V

    return-void
.end method

.method private f()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/p;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/p;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/p;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/p;->d:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/p;->a:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/player/p;->c:Landroid/os/Handler;

    iget-object v1, p0, Lcn/nubia/video/player/p;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/p;->a:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    return-void
.end method

.method public g(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/p;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/nubia/video/player/p;->h(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public h(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "show"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p1

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    const v0, 0x53484f57

    .line 5
    iput v0, p1, Landroid/os/Message;->what:I

    .line 6
    iget-object v0, p0, Lcn/nubia/video/player/p;->c:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
