.class Lcn/nubia/music/activity/AudioPreviewActivity$a;
.super Landroid/media/MediaPlayer;
.source "AudioPreviewActivity.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:Lcn/nubia/music/activity/AudioPreviewActivity;

.field b:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 695
    invoke-direct {p0}, Landroid/media/MediaPlayer;-><init>()V

    .line 697
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->b:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity$1;)V
    .locals 0

    .prologue
    .line 695
    invoke-direct {p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/net/Uri;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {p0, v0, p1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 709
    invoke-virtual {p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->prepareAsync()V

    .line 710
    return-void
.end method

.method public a(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 1

    .prologue
    .line 700
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    .line 701
    invoke-virtual {p0, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 702
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 703
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {p0, v0}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 704
    return-void
.end method

.method a()Z
    .locals 1

    .prologue
    .line 723
    iget-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->b:Z

    return v0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    .prologue
    .line 718
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->b:Z

    .line 719
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$a;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {v0, p1}, Lcn/nubia/music/activity/AudioPreviewActivity;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 720
    return-void
.end method
