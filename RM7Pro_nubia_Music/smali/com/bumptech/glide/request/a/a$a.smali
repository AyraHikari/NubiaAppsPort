.class Lcom/bumptech/glide/request/a/a$a;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/bumptech/glide/request/a/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/request/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/request/a/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/request/a/a;

.field private final b:Lcom/bumptech/glide/request/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/request/a/e",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/a/a;Lcom/bumptech/glide/request/a/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/a/e",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 61
    iput-object p1, p0, Lcom/bumptech/glide/request/a/a$a;->a:Lcom/bumptech/glide/request/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p2, p0, Lcom/bumptech/glide/request/a/a$a;->b:Lcom/bumptech/glide/request/a/e;

    .line 63
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e$a;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/request/a/e$a;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 67
    invoke-interface {p2}, Lcom/bumptech/glide/request/a/e$a;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 68
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/bumptech/glide/request/a/a$a;->a:Lcom/bumptech/glide/request/a/a;

    invoke-virtual {v2, p1}, Lcom/bumptech/glide/request/a/a;->a(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 69
    iget-object v0, p0, Lcom/bumptech/glide/request/a/a$a;->b:Lcom/bumptech/glide/request/a/e;

    invoke-interface {v0, v1, p2}, Lcom/bumptech/glide/request/a/e;->a(Ljava/lang/Object;Lcom/bumptech/glide/request/a/e$a;)Z

    move-result v0

    return v0
.end method
