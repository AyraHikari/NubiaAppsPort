.class Lcom/bumptech/glide/e$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/e;->d(II)Lcom/bumptech/glide/request/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/d;

.field final synthetic b:Lcom/bumptech/glide/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/request/d;)V
    .locals 0

    .prologue
    .line 725
    iput-object p1, p0, Lcom/bumptech/glide/e$1;->b:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/request/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 728
    iget-object v0, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0}, Lcom/bumptech/glide/request/d;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/bumptech/glide/e$1;->b:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/request/d;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/request/b/i;)Lcom/bumptech/glide/request/b/i;

    .line 731
    :cond_0
    return-void
.end method
