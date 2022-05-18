.class public Lcom/bumptech/glide/request/a/i;
.super Ljava/lang/Object;
.source "ViewAnimationFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/f",
        "<TR;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/request/a/h$a;

.field private b:Lcom/bumptech/glide/request/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/e",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/bumptech/glide/request/a/h$a;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/bumptech/glide/request/a/i;->a:Lcom/bumptech/glide/request/a/h$a;

    .line 27
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/bumptech/glide/request/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/bumptech/glide/request/a/e",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 40
    if-nez p1, :cond_0

    if-nez p2, :cond_1

    .line 41
    :cond_0
    invoke-static {}, Lcom/bumptech/glide/request/a/g;->b()Lcom/bumptech/glide/request/a/e;

    move-result-object v0

    .line 48
    :goto_0
    return-object v0

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Lcom/bumptech/glide/request/a/e;

    if-nez v0, :cond_2

    .line 45
    new-instance v0, Lcom/bumptech/glide/request/a/h;

    iget-object v1, p0, Lcom/bumptech/glide/request/a/i;->a:Lcom/bumptech/glide/request/a/h$a;

    invoke-direct {v0, v1}, Lcom/bumptech/glide/request/a/h;-><init>(Lcom/bumptech/glide/request/a/h$a;)V

    iput-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Lcom/bumptech/glide/request/a/e;

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/bumptech/glide/request/a/i;->b:Lcom/bumptech/glide/request/a/e;

    goto :goto_0
.end method
