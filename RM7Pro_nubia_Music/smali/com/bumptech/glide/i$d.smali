.class Lcom/bumptech/glide/i$d;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/bumptech/glide/manager/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/manager/l;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/manager/l;)V
    .locals 0

    .prologue
    .line 792
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 793
    iput-object p1, p0, Lcom/bumptech/glide/i$d;->a:Lcom/bumptech/glide/manager/l;

    .line 794
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1

    .prologue
    .line 798
    if-eqz p1, :cond_0

    .line 799
    iget-object v0, p0, Lcom/bumptech/glide/i$d;->a:Lcom/bumptech/glide/manager/l;

    invoke-virtual {v0}, Lcom/bumptech/glide/manager/l;->d()V

    .line 801
    :cond_0
    return-void
.end method
