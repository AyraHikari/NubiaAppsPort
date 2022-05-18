.class public Lcom/bumptech/glide/b/c;
.super Ljava/lang/Object;
.source "GifHeader.java"


# instance fields
.field a:[I

.field b:I

.field c:I

.field d:Lcom/bumptech/glide/b/b;

.field e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bumptech/glide/b/b;",
            ">;"
        }
    .end annotation
.end field

.field f:I

.field g:I

.field h:Z

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bumptech/glide/b/c;->a:[I

    .line 19
    iput v1, p0, Lcom/bumptech/glide/b/c;->b:I

    .line 20
    iput v1, p0, Lcom/bumptech/glide/b/c;->c:I

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/b/c;->e:Ljava/util/List;

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/bumptech/glide/b/c;->m:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/bumptech/glide/b/c;->c:I

    return v0
.end method

.method public b()I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/bumptech/glide/b/c;->b:I

    return v0
.end method
