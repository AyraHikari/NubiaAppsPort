.class public abstract Lc/b/a/n/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/b/a/n/h/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lc/b/a/n/h/c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/content/res/AssetManager;

.field private c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lc/b/a/n/h/a;->b:Landroid/content/res/AssetManager;

    .line 3
    iput-object p2, p0, Lc/b/a/n/h/a;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lc/b/a/n/h/a;->c:Ljava/lang/Object;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {p0, v0}, Lc/b/a/n/h/a;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    const-string v2, "AssetUriFetcher"

    .line 3
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Failed to close data"

    .line 4
    invoke-static {v2, v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Lc/b/a/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/i;",
            ")TT;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lc/b/a/n/h/a;->b:Landroid/content/res/AssetManager;

    iget-object v0, p0, Lc/b/a/n/h/a;->a:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lc/b/a/n/h/a;->d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lc/b/a/n/h/a;->c:Ljava/lang/Object;

    return-object p1
.end method

.method protected abstract c(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method public cancel()V
    .locals 0

    return-void
.end method

.method protected abstract d(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/AssetManager;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lc/b/a/n/h/a;->a:Ljava/lang/String;

    return-object v0
.end method
