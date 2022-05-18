.class public Lcom/bumptech/glide/load/resource/c/c;
.super Ljava/lang/Object;
.source "GifDrawableLoadProvider.java"

# interfaces
.implements Lcom/bumptech/glide/e/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/e/b",
        "<",
        "Ljava/io/InputStream;",
        "Lcom/bumptech/glide/load/resource/c/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/resource/c/i;

.field private final b:Lcom/bumptech/glide/load/resource/c/j;

.field private final c:Lcom/bumptech/glide/load/b/o;

.field private final d:Lcom/bumptech/glide/load/resource/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/b/c",
            "<",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/resource/c/i;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/resource/c/i;-><init>(Landroid/content/Context;Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/i;

    .line 28
    new-instance v0, Lcom/bumptech/glide/load/resource/b/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/i;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/b/c;-><init>(Lcom/bumptech/glide/load/d;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->d:Lcom/bumptech/glide/load/resource/b/c;

    .line 29
    new-instance v0, Lcom/bumptech/glide/load/resource/c/j;

    invoke-direct {v0, p2}, Lcom/bumptech/glide/load/resource/c/j;-><init>(Lcom/bumptech/glide/load/engine/a/c;)V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/resource/c/j;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/b/o;

    invoke-direct {v0}, Lcom/bumptech/glide/load/b/o;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/b/o;

    .line 31
    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/File;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 35
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->d:Lcom/bumptech/glide/load/resource/b/c;

    return-object v0
.end method

.method public b()Lcom/bumptech/glide/load/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/d",
            "<",
            "Ljava/io/InputStream;",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->a:Lcom/bumptech/glide/load/resource/c/i;

    return-object v0
.end method

.method public c()Lcom/bumptech/glide/load/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/a",
            "<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->c:Lcom/bumptech/glide/load/b/o;

    return-object v0
.end method

.method public d()Lcom/bumptech/glide/load/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/e",
            "<",
            "Lcom/bumptech/glide/load/resource/c/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 50
    iget-object v0, p0, Lcom/bumptech/glide/load/resource/c/c;->b:Lcom/bumptech/glide/load/resource/c/j;

    return-object v0
.end method
