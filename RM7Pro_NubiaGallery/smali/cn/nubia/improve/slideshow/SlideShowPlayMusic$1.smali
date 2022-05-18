.class Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;
.super Ljava/lang/Object;
.source "SlideShowPlayMusic.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/improve/slideshow/SlideShowPlayMusic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;


# direct methods
.method constructor <init>(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-virtual {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->Start()V

    goto :goto_0

    .line 29
    :cond_1
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->access$000(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 30
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->access$000(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;->onPlayMusicPause()V

    goto :goto_0

    .line 34
    :cond_2
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->access$000(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$1;->this$0:Lcn/nubia/improve/slideshow/SlideShowPlayMusic;

    invoke-static {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic;->access$000(Lcn/nubia/improve/slideshow/SlideShowPlayMusic;)Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;

    move-result-object p1

    invoke-interface {p1}, Lcn/nubia/improve/slideshow/SlideShowPlayMusic$MusicPlayerListener;->onPlayMusicPause()V

    :cond_3
    :goto_0
    return-void
.end method
