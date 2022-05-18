.class Lcom/bumptech/glide/i$c;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/i;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/i;)V
    .locals 0

    .prologue
    .line 779
    iput-object p1, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "X:",
            "Lcom/bumptech/glide/e",
            "<TA;***>;>(TX;)TX;"
        }
    .end annotation

    .prologue
    .line 782
    iget-object v0, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v0}, Lcom/bumptech/glide/i;->f(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/bumptech/glide/i$c;->a:Lcom/bumptech/glide/i;

    invoke-static {v0}, Lcom/bumptech/glide/i;->f(Lcom/bumptech/glide/i;)Lcom/bumptech/glide/i$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/bumptech/glide/i$a;->a(Lcom/bumptech/glide/e;)V

    .line 785
    :cond_0
    return-object p1
.end method
