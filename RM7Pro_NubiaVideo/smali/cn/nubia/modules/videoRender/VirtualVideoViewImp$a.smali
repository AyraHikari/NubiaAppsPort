.class Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc/c/a/f/a/e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->R()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lc/c/a/f/a/e;

.field final synthetic b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;


# direct methods
.method constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Lc/c/a/f/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    iput-object p2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->a:Lc/c/a/f/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V
    .locals 1

    .line 1
    new-instance p2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;

    invoke-direct {p2, p0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;-><init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V

    invoke-virtual {p1, p2}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 2
    iget-object p2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->r:Landroid/view/Surface;

    .line 3
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->K(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$b;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    iget-object p2, p2, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->r:Landroid/view/Surface;

    invoke-interface {p1, p2}, Lcn/nubia/modules/videoRender/b$b;->a(Landroid/view/Surface;)V

    return-void
.end method
