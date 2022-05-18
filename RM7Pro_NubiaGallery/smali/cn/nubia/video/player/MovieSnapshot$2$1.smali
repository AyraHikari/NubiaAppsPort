.class Lcn/nubia/video/player/MovieSnapshot$2$1;
.super Ljava/lang/Object;
.source "MovieSnapshot.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/MovieSnapshot$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/nubia/video/player/MovieSnapshot$2;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/MovieSnapshot$2;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$2$1;->this$1:Lcn/nubia/video/player/MovieSnapshot$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 273
    iget-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$2$1;->this$1:Lcn/nubia/video/player/MovieSnapshot$2;

    iget-object p1, p1, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {p1}, Lcn/nubia/video/player/MovieSnapshot;->access$600(Lcn/nubia/video/player/MovieSnapshot;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/gallery3d/util/GalleryUtils;->isInternationalPoject(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 274
    iget-object p1, p0, Lcn/nubia/video/player/MovieSnapshot$2$1;->this$1:Lcn/nubia/video/player/MovieSnapshot$2;

    iget-object p1, p1, Lcn/nubia/video/player/MovieSnapshot$2;->this$0:Lcn/nubia/video/player/MovieSnapshot;

    invoke-static {p1}, Lcn/nubia/video/player/MovieSnapshot;->access$700(Lcn/nubia/video/player/MovieSnapshot;)Lcn/nubia/gallery3d/app/FlotingWindowView;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcn/nubia/gallery3d/app/FlotingWindowView;->showFloadingWindow(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method
