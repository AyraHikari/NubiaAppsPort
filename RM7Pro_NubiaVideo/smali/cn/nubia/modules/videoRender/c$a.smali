.class Lcn/nubia/modules/videoRender/c$a;
.super Lc/c/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/modules/videoRender/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic k:Lcn/nubia/modules/videoRender/c;


# direct methods
.method constructor <init>(Lcn/nubia/modules/videoRender/c;IILjava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c$a;->k:Lcn/nubia/modules/videoRender/c;

    invoke-direct {p0, p2, p3, p4}, Lc/c/a/c;-><init>(IILjava/lang/Object;)V

    const p1, 0x8d65

    .line 2
    invoke-virtual {p0, p1}, Lc/c/a/c;->n(I)V

    return-void
.end method


# virtual methods
.method protected g()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected i(Lc/c/a/b;Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/c/a/b;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;",
            "Ljava/util/List<",
            "Lc/c/a/f/a/f;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lc/c/a/f/a/f;

    .line 2
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lc/c/a/f/a/f;

    .line 4
    iget-object p3, p0, Lcn/nubia/modules/videoRender/c$a;->k:Lcn/nubia/modules/videoRender/c;

    invoke-virtual {p2}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p2}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object p2

    invoke-static {p3, p1, v0, p2}, Lcn/nubia/modules/videoRender/c;->b(Lcn/nubia/modules/videoRender/c;Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p3, p0, Lcn/nubia/modules/videoRender/c$a;->k:Lcn/nubia/modules/videoRender/c;

    invoke-virtual {p2}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {p2}, Lc/c/a/f/a/f;->b()Lc/c/a/e/i;

    move-result-object p2

    invoke-static {p3, p1, v0, p2}, Lcn/nubia/modules/videoRender/c;->b(Lcn/nubia/modules/videoRender/c;Lc/c/a/b;Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/nubia/modules/videoRender/c$a;->k:Lcn/nubia/modules/videoRender/c;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/c;->d(Lcn/nubia/modules/videoRender/c;)Lb/a/a/c/m;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/nubia/modules/videoRender/c$a;->k:Lcn/nubia/modules/videoRender/c;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/c;->d(Lcn/nubia/modules/videoRender/c;)Lb/a/a/c/m;

    move-result-object p1

    invoke-interface {p1}, Lb/a/a/c/m;->a()V

    :cond_1
    return-void
.end method
