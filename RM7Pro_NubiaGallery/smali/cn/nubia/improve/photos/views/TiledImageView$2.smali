.class Lcn/nubia/improve/photos/views/TiledImageView$2;
.super Ljava/lang/Object;
.source "TiledImageView.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/improve/photos/views/TiledImageView;->invalOnVsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/photos/views/TiledImageView;


# direct methods
.method constructor <init>(Lcn/nubia/improve/photos/views/TiledImageView;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView$2;->this$0:Lcn/nubia/improve/photos/views/TiledImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 236
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView$2;->this$0:Lcn/nubia/improve/photos/views/TiledImageView;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/improve/photos/views/TiledImageView;->access$102(Lcn/nubia/improve/photos/views/TiledImageView;Z)Z

    .line 237
    iget-object p1, p0, Lcn/nubia/improve/photos/views/TiledImageView$2;->this$0:Lcn/nubia/improve/photos/views/TiledImageView;

    invoke-static {p1}, Lcn/nubia/improve/photos/views/TiledImageView;->access$200(Lcn/nubia/improve/photos/views/TiledImageView;)Landroid/opengl/GLSurfaceView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/opengl/GLSurfaceView;->requestRender()V

    return-void
.end method
