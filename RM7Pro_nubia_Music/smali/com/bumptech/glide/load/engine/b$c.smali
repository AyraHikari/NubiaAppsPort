.class public Lcom/bumptech/glide/load/engine/b$c;
.super Ljava/lang/Object;
.source "Engine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/engine/c;

.field private final b:Lcom/bumptech/glide/request/f;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/f;Lcom/bumptech/glide/load/engine/c;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/b$c;->b:Lcom/bumptech/glide/request/f;

    .line 53
    iput-object p2, p0, Lcom/bumptech/glide/load/engine/b$c;->a:Lcom/bumptech/glide/load/engine/c;

    .line 54
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/b$c;->a:Lcom/bumptech/glide/load/engine/c;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/b$c;->b:Lcom/bumptech/glide/request/f;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/c;->b(Lcom/bumptech/glide/request/f;)V

    .line 58
    return-void
.end method
