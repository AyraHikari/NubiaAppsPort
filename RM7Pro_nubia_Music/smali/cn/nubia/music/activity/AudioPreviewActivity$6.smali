.class Lcn/nubia/music/activity/AudioPreviewActivity$6;
.super Landroid/os/AsyncTask;
.source "AudioPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/music/activity/AudioPreviewActivity;->showPostPrepareUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/music/activity/AudioPreviewActivity;


# direct methods
.method constructor <init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V
    .locals 0

    .prologue
    .line 405
    iput-object p1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 407
    .line 408
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "duration"

    aput-object v3, v2, v0

    const-string v3, "_data = ?"

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    .line 410
    invoke-static {v5}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$900(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x0

    .line 408
    invoke-static {v1, v2, v3, v4, v5}, Lcn/nubia/music/utils/MusicUtils;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 411
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 412
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 413
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 415
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    return-object v1
.end method

.method protected a(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 419
    if-eqz p1, :cond_1

    .line 420
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1002(Lcn/nubia/music/activity/AudioPreviewActivity;I)I

    .line 421
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1000(Lcn/nubia/music/activity/AudioPreviewActivity;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$200(Lcn/nubia/music/activity/AudioPreviewActivity;)Lcn/nubia/music/activity/AudioPreviewActivity$a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/music/activity/AudioPreviewActivity$a;->getDuration()I

    move-result v1

    invoke-static {v0, v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1002(Lcn/nubia/music/activity/AudioPreviewActivity;I)I

    .line 424
    :cond_0
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1000(Lcn/nubia/music/activity/AudioPreviewActivity;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 425
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/music/activity/AudioPreviewActivity;->onError(Landroid/media/MediaPlayer;II)Z

    .line 445
    :cond_1
    :goto_0
    return-void

    .line 429
    :cond_2
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1000(Lcn/nubia/music/activity/AudioPreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 430
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 431
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setVisibility(I)V

    .line 434
    :cond_3
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1100(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1200(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 435
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1400(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/media/AudioManager;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v1}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1300(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/media/AudioManager$OnAudioFocusChangeListener;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 437
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1500(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/AudioPreviewActivity$b;

    iget-object v2, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-direct {v1, v2}, Lcn/nubia/music/activity/AudioPreviewActivity$b;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 439
    iget-object v0, p0, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a:Lcn/nubia/music/activity/AudioPreviewActivity;

    invoke-static {v0}, Lcn/nubia/music/activity/AudioPreviewActivity;->access$1500(Lcn/nubia/music/activity/AudioPreviewActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/nubia/music/activity/AudioPreviewActivity$6$1;

    invoke-direct {v1, p0}, Lcn/nubia/music/activity/AudioPreviewActivity$6$1;-><init>(Lcn/nubia/music/activity/AudioPreviewActivity$6;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 405
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcn/nubia/music/activity/AudioPreviewActivity$6;->a(Ljava/lang/Integer;)V

    return-void
.end method
