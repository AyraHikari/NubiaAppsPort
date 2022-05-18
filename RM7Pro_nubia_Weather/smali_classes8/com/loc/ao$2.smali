.class final Lcom/loc/ao$2;
.super Ljava/lang/Object;
.source "DiskLruCache.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/loc/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/loc/ao;


# direct methods
.method constructor <init>(Lcom/loc/ao;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-static {v0}, Lcom/loc/ao;->a(Lcom/loc/ao;)Ljava/io/Writer;

    move-result-object v0

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-object v2

    :cond_0
    iget-object v0, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-static {v0}, Lcom/loc/ao;->b(Lcom/loc/ao;)V

    iget-object v0, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-static {v0}, Lcom/loc/ao;->c(Lcom/loc/ao;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-static {v0}, Lcom/loc/ao;->d(Lcom/loc/ao;)V

    iget-object v0, p0, Lcom/loc/ao$2;->a:Lcom/loc/ao;

    invoke-static {v0}, Lcom/loc/ao;->e(Lcom/loc/ao;)I

    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct {p0}, Lcom/loc/ao$2;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
