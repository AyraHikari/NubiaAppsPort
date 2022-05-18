.class public Lcom/bumptech/glide/load/b/b/a$a;
.super Ljava/lang/Object;
.source "HttpUrlGlideUrlLoader.java"

# interfaces
.implements Lcom/bumptech/glide/load/b/m;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/b/m",
        "<",
        "Lcom/bumptech/glide/load/b/d;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/b/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/b/k",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Lcom/bumptech/glide/load/b/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/bumptech/glide/load/b/k;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/k;-><init>(I)V

    iput-object v0, p0, Lcom/bumptech/glide/load/b/b/a$a;->a:Lcom/bumptech/glide/load/b/k;

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/bumptech/glide/load/b/c;)Lcom/bumptech/glide/load/b/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bumptech/glide/load/b/c;",
            ")",
            "Lcom/bumptech/glide/load/b/l",
            "<",
            "Lcom/bumptech/glide/load/b/d;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .prologue
    .line 31
    new-instance v0, Lcom/bumptech/glide/load/b/b/a;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/b/a$a;->a:Lcom/bumptech/glide/load/b/k;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/b/b/a;-><init>(Lcom/bumptech/glide/load/b/k;)V

    return-object v0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 37
    return-void
.end method
