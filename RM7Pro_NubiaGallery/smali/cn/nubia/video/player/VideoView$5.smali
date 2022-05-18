.class Lcn/nubia/video/player/VideoView$5;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Lcn/nubia/video/player/common/IMediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/video/player/VideoView;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/VideoView;)V
    .locals 0

    .line 271
    iput-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcn/nubia/video/player/common/IMediaPlayer;II)Z
    .locals 3

    .line 273
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$500(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    const/4 v0, 0x0

    if-lez p1, :cond_0

    return v0

    .line 276
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$600(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p3, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p3}, Lcn/nubia/video/player/VideoView;->access$500(Lcn/nubia/video/player/VideoView;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$500(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    const/4 p2, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$000(Lcn/nubia/video/player/VideoView;)I

    move-result p1

    iget-object p3, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p3}, Lcn/nubia/video/player/VideoView;->access$100(Lcn/nubia/video/player/VideoView;)I

    move-result p3

    mul-int/2addr p1, p3

    const p3, 0x1fe000

    if-gt p1, p3, :cond_1

    .line 278
    invoke-static {}, Lcn/nubia/video/player/common/PlayerManager;->getPlayerMode()I

    move-result p1

    if-nez p1, :cond_1

    .line 279
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$900(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/common/Bookmarker;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p3}, Lcn/nubia/video/player/VideoView;->access$700(Lcn/nubia/video/player/VideoView;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->access$800(Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/common/IMediaPlayer;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/video/player/common/IMediaPlayer;->getCurrentPosition()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v2}, Lcn/nubia/video/player/VideoView;->access$400(Lcn/nubia/video/player/VideoView;)I

    move-result v2

    invoke-virtual {p1, p3, v1, v2}, Lcn/nubia/video/player/common/Bookmarker;->setBookmark(Landroid/net/Uri;II)V

    .line 281
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->access$1002(Lcn/nubia/video/player/VideoView;I)I

    .line 282
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$600(Lcn/nubia/video/player/VideoView;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Try to FFmpeg"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$1000(Lcn/nubia/video/player/VideoView;)I

    move-result p2

    invoke-static {p1, p2}, Lcn/nubia/video/player/VideoView;->access$1100(Lcn/nubia/video/player/VideoView;I)V

    return v0

    .line 287
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$508(Lcn/nubia/video/player/VideoView;)I

    .line 288
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    const/4 p3, -0x1

    invoke-static {p1, p3}, Lcn/nubia/video/player/VideoView;->access$202(Lcn/nubia/video/player/VideoView;I)I

    .line 289
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 290
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$300(Lcn/nubia/video/player/VideoView;)Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;

    move-result-object p1

    iget-object p3, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p3}, Lcn/nubia/video/player/VideoView;->access$200(Lcn/nubia/video/player/VideoView;)I

    move-result p3

    invoke-interface {p1, p3}, Lcn/nubia/gallery3d/video/MediaState$OnNotifyMediaStateListener;->onNotifyMediaState(I)V

    .line 293
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-virtual {p1}, Lcn/nubia/video/player/VideoView;->getWindowToken()Landroid/os/IBinder;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 294
    iget-object p1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {p1}, Lcn/nubia/video/player/VideoView;->access$1200(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    const p1, 0x7f1001b5

    .line 297
    new-instance p3, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcn/nubia/video/player/VideoView$5;->this$0:Lcn/nubia/video/player/VideoView;

    invoke-static {v1}, Lcn/nubia/video/player/VideoView;->access$1200(Lcn/nubia/video/player/VideoView;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p3, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const p3, 0x7f100196

    new-instance v1, Lcn/nubia/video/player/VideoView$5$1;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/VideoView$5$1;-><init>(Lcn/nubia/video/player/VideoView$5;)V

    .line 298
    invoke-virtual {p1, p3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 307
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :cond_3
    return p2
.end method
