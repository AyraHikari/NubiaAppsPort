.class public Lcom/bumptech/glide/load/resource/b;
.super Ljava/lang/Object;
.source "NullResourceEncoder.java"

# interfaces
.implements Lcom/bumptech/glide/load/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/e",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final a:Lcom/bumptech/glide/load/resource/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/resource/b",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    new-instance v0, Lcom/bumptech/glide/load/resource/b;

    invoke-direct {v0}, Lcom/bumptech/glide/load/resource/b;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/resource/b;->a:Lcom/bumptech/glide/load/resource/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/bumptech/glide/load/resource/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/bumptech/glide/load/resource/b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 23
    sget-object v0, Lcom/bumptech/glide/load/resource/b;->a:Lcom/bumptech/glide/load/resource/b;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, ""

    return-object v0
.end method

.method public a(Lcom/bumptech/glide/load/engine/i;Ljava/io/OutputStream;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/engine/i",
            "<TT;>;",
            "Ljava/io/OutputStream;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/OutputStream;)Z
    .locals 1

    .prologue
    .line 13
    check-cast p1, Lcom/bumptech/glide/load/engine/i;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/load/resource/b;->a(Lcom/bumptech/glide/load/engine/i;Ljava/io/OutputStream;)Z

    move-result v0

    return v0
.end method
