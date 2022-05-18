.class public final Lcom/loc/f;
.super Ljava/lang/Object;
.source "ApsServiceCore.java"


# instance fields
.field a:Lcom/loc/e;

.field b:Landroid/content/Context;

.field c:Landroid/os/Messenger;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    iput-object v0, p0, Lcom/loc/f;->b:Landroid/content/Context;

    iput-object v0, p0, Lcom/loc/f;->c:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/f;->b:Landroid/content/Context;

    new-instance v0, Lcom/loc/e;

    iget-object v1, p0, Lcom/loc/f;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/loc/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    const-string v1, "a"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/loc/l;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const-string v1, "b"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/loc/e;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/loc/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/loc/k;->a(Ljava/lang/String;)V

    const-string v0, "d"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {v0}, Lcom/loc/n;->a(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    const-string v1, "true"

    const-string v2, "as"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/loc/e;->d:Lcom/loc/e$a;

    if-eqz v1, :cond_2

    iget-object v0, v0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/16 v1, 0x9

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/loc/e$a;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/loc/f;->a:Lcom/loc/e;

    iget-object v1, v1, Lcom/loc/e;->d:Lcom/loc/e$a;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/loc/f;->c:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/f;->c:Landroid/os/Messenger;

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public final a()V
    .locals 4

    :try_start_0
    invoke-static {}, Lcom/loc/e;->d()V

    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    invoke-static {}, Lcom/loc/ep;->b()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/e;->j:J

    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    invoke-static {}, Lcom/loc/ep;->a()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/loc/e;->k:J

    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    invoke-virtual {v0}, Lcom/loc/e;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "onCreate"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/f;->a:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->d:Lcom/loc/e$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ApsServiceCore"

    const-string v2, "onDestroy"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
