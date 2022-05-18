.class Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhotoPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/PhotoPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AudioBecomingNoisyReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 2692
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;Lcn/nubia/gallery3d/app/PhotoPage$1;)V
    .locals 0

    .line 2692
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;-><init>(Lcn/nubia/gallery3d/app/PhotoPage;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 2705
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->getCurrentState()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    .line 2706
    iget-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {p1}, Lcn/nubia/gallery3d/app/PhotoPage;->access$2700(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/video/ui/PlayerController;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/gallery3d/video/ui/PlayerController;->onPause()V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 3

    .line 2695
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 2700
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$AudioBecomingNoisyReceiver;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mActivity:Lcn/nubia/gallery3d/app/GalleryActivity;

    invoke-interface {v0}, Lcn/nubia/gallery3d/app/GalleryActivity;->getAppActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
