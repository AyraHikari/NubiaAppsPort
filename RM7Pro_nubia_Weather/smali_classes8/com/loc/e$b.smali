.class final Lcom/loc/e$b;
.super Landroid/os/HandlerThread;
.source "ApsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/e;


# direct methods
.method public constructor <init>(Lcom/loc/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    invoke-direct {p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    new-instance v1, Lcom/loc/i;

    iget-object v2, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    iget-object v2, v2, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/loc/i;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/loc/e;->a(Lcom/loc/e;Lcom/loc/i;)Lcom/loc/i;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ei;->b(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    iget-object v0, v0, Lcom/loc/e;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/loc/ei;->a(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/loc/e$b;->a:Lcom/loc/e;

    new-instance v1, Lcom/loc/dn;

    invoke-direct {v1}, Lcom/loc/dn;-><init>()V

    iput-object v1, v0, Lcom/loc/e;->f:Lcom/loc/dn;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    :goto_2
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSManager$ActionThread"

    const-string v2, "init 2"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "APSManager$ActionThread"

    const-string v2, "onLooperPrepared"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_3
    const-string v1, "APSManager$ActionThread"

    const-string v2, "init 3"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method public final run()V
    .locals 3

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "APSManager$ActionThread"

    const-string v2, "run"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
