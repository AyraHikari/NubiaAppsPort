.class Lcn/nubia/gallery3d/video/AudioFocus$1;
.super Ljava/lang/Object;
.source "AudioFocus.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/video/AudioFocus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/video/AudioFocus;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/video/AudioFocus;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 4

    const/4 v0, -0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$100(Lcn/nubia/gallery3d/video/AudioFocus;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$300(Lcn/nubia/gallery3d/video/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->access$200(Lcn/nubia/gallery3d/video/AudioFocus;)I

    move-result v0

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 61
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1, v2}, Lcn/nubia/gallery3d/video/AudioFocus;->access$102(Lcn/nubia/gallery3d/video/AudioFocus;Z)Z

    goto :goto_0

    .line 47
    :cond_1
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$000(Lcn/nubia/gallery3d/video/AudioFocus;)Lcn/nubia/gallery3d/video/AudioFocus$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/AudioFocus$Listener;->onLossFocus()V

    goto :goto_0

    .line 50
    :cond_2
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$000(Lcn/nubia/gallery3d/video/AudioFocus;)Lcn/nubia/gallery3d/video/AudioFocus$Listener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/gallery3d/video/AudioFocus$Listener;->onLossFocus()V

    goto :goto_0

    .line 53
    :cond_3
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1, v1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$102(Lcn/nubia/gallery3d/video/AudioFocus;Z)Z

    .line 54
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$300(Lcn/nubia/gallery3d/video/AudioFocus;)Landroid/media/AudioManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    invoke-static {p1, v0}, Lcn/nubia/gallery3d/video/AudioFocus;->access$202(Lcn/nubia/gallery3d/video/AudioFocus;I)I

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mCurrentVolume = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->access$200(Lcn/nubia/gallery3d/video/AudioFocus;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocus"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    iget-object p1, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {p1}, Lcn/nubia/gallery3d/video/AudioFocus;->access$300(Lcn/nubia/gallery3d/video/AudioFocus;)Landroid/media/AudioManager;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/gallery3d/video/AudioFocus$1;->this$0:Lcn/nubia/gallery3d/video/AudioFocus;

    invoke-static {v0}, Lcn/nubia/gallery3d/video/AudioFocus;->access$200(Lcn/nubia/gallery3d/video/AudioFocus;)I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    :cond_4
    :goto_0
    return-void
.end method
