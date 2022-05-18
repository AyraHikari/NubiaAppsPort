.class Lcn/nubia/video/player/PIPPlayer$f$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/video/player/PIPPlayer$f;-><init>(Lcn/nubia/video/player/PIPPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/video/player/PIPPlayer$f;


# direct methods
.method constructor <init>(Lcn/nubia/video/player/PIPPlayer$f;Lcn/nubia/video/player/PIPPlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$d;->a:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$d;->a:Lcn/nubia/video/player/PIPPlayer$f;

    iget-object p1, p1, Lcn/nubia/video/player/PIPPlayer$f;->m:Lcn/nubia/video/player/PIPPlayer;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer;->k(Lcn/nubia/video/player/PIPPlayer;)Lcn/nubia/video/mediajni/IMediaPlayer;

    move-result-object p1

    invoke-interface {p1, p2}, Lcn/nubia/video/mediajni/IMediaPlayer;->seekTo(I)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/player/PIPPlayer$f$d;->a:Lcn/nubia/video/player/PIPPlayer$f;

    invoke-static {p1}, Lcn/nubia/video/player/PIPPlayer$f;->d(Lcn/nubia/video/player/PIPPlayer$f;)Landroid/widget/TextView;

    move-result-object p1

    int-to-long p2, p2

    invoke-static {p2, p3}, Lb/a/b/d/e;->R(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
