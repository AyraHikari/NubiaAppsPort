.class Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->a(Landroid/graphics/SurfaceTexture;Lc/c/a/e/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;


# direct methods
.method constructor <init>(Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->G(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->J(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/d;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    iget-object v0, v0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-static {v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->I(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)Lcn/nubia/modules/videoRender/b$a;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/nubia/modules/videoRender/d;->g(Lcn/nubia/modules/videoRender/b$a;)V

    .line 3
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->b:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->H(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;Z)Z

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a$a;->a:Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp$a;->a:Lc/c/a/f/a/e;

    invoke-virtual {p1}, Lc/c/a/f/a/c;->m()V

    return-void
.end method
