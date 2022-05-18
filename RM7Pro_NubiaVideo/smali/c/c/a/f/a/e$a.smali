.class Lc/c/a/f/a/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc/c/a/f/a/e;->setOnSurfaceTextureSet(Lc/c/a/f/a/e$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/f/a/e$b;

.field final synthetic b:Lc/c/a/f/a/e;


# direct methods
.method constructor <init>(Lc/c/a/f/a/e;Lc/c/a/f/a/e$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lc/c/a/f/a/e$a;->b:Lc/c/a/f/a/e;

    iput-object p2, p0, Lc/c/a/f/a/e$a;->a:Lc/c/a/f/a/e$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lc/c/a/f/a/f;

    .line 2
    iget-object v0, p0, Lc/c/a/f/a/e$a;->a:Lc/c/a/f/a/e$b;

    invoke-virtual {p1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {p1}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lc/c/a/f/a/e$b;->a(Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V

    return-void
.end method
