.class Lcn/nubia/gallery3d/video/VideoPlayer$10;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/video/VideoPlayer;->setDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/VideoPlayer;)V
    .locals 0

    .line 484
    iput-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "index: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "VideoPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1200(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p1

    if-eq p1, p2, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$000(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$100(Lcn/nubia/gallery3d/video/VideoPlayer;)I

    move-result v0

    mul-int/2addr p1, v0

    const v0, 0x7e9000

    if-gt p1, v0, :cond_0

    .line 489
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1302(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 490
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1202(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 491
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$802(Lcn/nubia/gallery3d/video/VideoPlayer;I)I

    .line 492
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1400(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 493
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1500(Lcn/nubia/gallery3d/video/VideoPlayer;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1400(Lcn/nubia/gallery3d/video/VideoPlayer;)Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcn/nubia/gallery3d/video/VideoPlayer;->openVideo(Landroid/net/Uri;Lcn/nubia/gallery3d/ui/SurfaceTextureScreenNail;)I

    .line 496
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/VideoPlayer$10;->this$0:Lcn/nubia/gallery3d/video/VideoPlayer;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/VideoPlayer;->access$1000(Lcn/nubia/gallery3d/video/VideoPlayer;)V

    return-void
.end method
