.class final Lcom/loc/d$1;
.super Ljava/lang/Object;
.source "AmapLocationManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/d;


# direct methods
.method constructor <init>(Lcom/loc/d;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    new-instance v1, Landroid/os/Messenger;

    invoke-direct {v1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object v1, v0, Lcom/loc/d;->i:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/loc/d;->a(Lcom/loc/d;Z)Z

    iget-object v0, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/loc/d;->r:Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "ALManager"

    const-string v2, "onServiceConnected"

    invoke-static {v0, v1, v2}, Lcom/loc/ej;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/loc/d;->i:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/loc/d$1;->a:Lcom/loc/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/loc/d;->a(Lcom/loc/d;Z)Z

    return-void
.end method
