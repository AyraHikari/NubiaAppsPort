.class final Lcom/loc/ab$1;
.super Ljava/lang/Object;
.source "SDKLogHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/ab;->a(Lcom/loc/t;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/t;

.field final synthetic b:Z

.field final synthetic c:Lcom/loc/ab;


# direct methods
.method constructor <init>(Lcom/loc/ab;Lcom/loc/t;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ab$1;->c:Lcom/loc/ab;

    iput-object p2, p0, Lcom/loc/ab$1;->a:Lcom/loc/t;

    iput-boolean p3, p0, Lcom/loc/ab$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/loc/ab$1;->a:Lcom/loc/t;

    invoke-static {v0}, Lcom/loc/z;->a(Lcom/loc/t;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/loc/ab$1;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/loc/ab$1;->c:Lcom/loc/ab;

    invoke-static {v0}, Lcom/loc/ab;->a(Lcom/loc/ab;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/ac;->a(Landroid/content/Context;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
