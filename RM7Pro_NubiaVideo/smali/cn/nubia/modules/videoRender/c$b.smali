.class Lcn/nubia/modules/videoRender/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/d$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/modules/videoRender/c;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/modules/videoRender/c;


# direct methods
.method constructor <init>(Lcn/nubia/modules/videoRender/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

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

    invoke-virtual {p1}, Lc/c/a/f/a/f;->c()Landroid/graphics/SurfaceTexture;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v1, v0, Lcn/nubia/modules/videoRender/c;->b:Landroid/view/Surface;

    .line 3
    new-instance v0, Lcn/nubia/modules/videoRender/c$b$a;

    invoke-direct {v0, p0}, Lcn/nubia/modules/videoRender/c$b$a;-><init>(Lcn/nubia/modules/videoRender/c$b;)V

    invoke-virtual {p1, v0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/c;->g(Lcn/nubia/modules/videoRender/c;)Lcn/nubia/modules/videoRender/b$b;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

    iget-object v0, v0, Lcn/nubia/modules/videoRender/c;->b:Landroid/view/Surface;

    invoke-interface {p1, v0}, Lcn/nubia/modules/videoRender/b$b;->a(Landroid/view/Surface;)V

    return-void
.end method
