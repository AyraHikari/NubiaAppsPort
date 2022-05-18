.class Lcn/nubia/modules/videoRender/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/modules/videoRender/c$b;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/modules/videoRender/c$b;


# direct methods
.method constructor <init>(Lcn/nubia/modules/videoRender/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/modules/videoRender/c$b$a;->a:Lcn/nubia/modules/videoRender/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFrameAvailable(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcn/nubia/modules/videoRender/c$b$a;->a:Lcn/nubia/modules/videoRender/c$b;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/c;->e(Lcn/nubia/modules/videoRender/c;)Lc/c/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/modules/videoRender/c$b$a;->a:Lcn/nubia/modules/videoRender/c$b;

    iget-object p1, p1, Lcn/nubia/modules/videoRender/c$b;->a:Lcn/nubia/modules/videoRender/c;

    invoke-static {p1}, Lcn/nubia/modules/videoRender/c;->e(Lcn/nubia/modules/videoRender/c;)Lc/c/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lc/c/a/c;->m()V

    :cond_0
    return-void
.end method
