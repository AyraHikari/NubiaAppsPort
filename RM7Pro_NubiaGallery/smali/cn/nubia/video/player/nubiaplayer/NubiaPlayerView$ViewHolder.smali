.class Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;
.super Ljava/lang/Object;
.source "NubiaPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field public mBottomView:Landroid/view/View;

.field public mClipTimp:Landroid/widget/TextView;

.field public mCutTitle:Landroid/view/View;

.field public mEndClip:Landroid/widget/TextView;

.field public mHeadClip:Landroid/widget/TextView;

.field public mLoading:Landroid/widget/ProgressBar;

.field public mMore:Landroid/widget/ImageView;

.field public mPlayCtrl:Landroid/view/View;

.field public mPlayPause:Landroid/widget/ImageButton;

.field public mPlayTop:Landroid/view/View;

.field public mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

.field public mSeekbarText:Landroid/widget/TextView;

.field public mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

.field public mTitle:Landroid/widget/TextView;

.field public mTop:Landroid/view/View;

.field public mTrimCancel:Landroid/widget/TextView;

.field public mTrimConfirm:Landroid/widget/TextView;

.field public mTrimCtrl:Landroid/view/View;

.field final synthetic this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;


# direct methods
.method public constructor <init>(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/view/View;)V
    .locals 2

    .line 542
    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->this$0:Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 543
    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3102(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/view/View;)Landroid/view/View;

    .line 544
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/content/Context;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/PlayerActivity;

    invoke-virtual {p2}, Lcn/nubia/video/player/PlayerActivity;->getVideoView()Lcn/nubia/video/player/VideoView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3202(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Lcn/nubia/video/player/VideoView;)Lcn/nubia/video/player/VideoView;

    .line 545
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3400(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f090126

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ProgressBar;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mLoading:Landroid/widget/ProgressBar;

    .line 547
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900ce

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3502(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 548
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3800(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901b0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3702(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 549
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4000(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0901b1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$3902(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 550
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4100(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 551
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4300(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0900a1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4202(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 552
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4500(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v1, 0x7f0900cd

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout;

    invoke-static {p1, p2}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4402(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;

    .line 553
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4600(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/widget/RelativeLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 554
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$4700(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0900cb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f09007b

    .line 555
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mCutTitle:Landroid/view/View;

    .line 556
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 557
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mCutTitle:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 559
    :cond_0
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mCutTitle:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 561
    :goto_0
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f09007a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mClipTimp:Landroid/widget/TextView;

    .line 562
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f090124

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageButton;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mPlayPause:Landroid/widget/ImageButton;

    .line 563
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f090079

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mHeadClip:Landroid/widget/TextView;

    .line 564
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f090078

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mEndClip:Landroid/widget/TextView;

    .line 565
    iget-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const v0, 0x7f090149

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    iput-object p2, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSeekbar:Lcn/nubia/video/player/nubiaplayer/SeekBarView;

    .line 566
    invoke-static {p1}, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;->access$200(Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcn/nubia/video/player/nubiaplayer/SeekBarView;->setWallpaper(Z)V

    .line 567
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const p2, 0x7f09016c

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/player/nubiaplayer/SliderBar;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mSliderBar:Lcn/nubia/video/player/nubiaplayer/SliderBar;

    .line 568
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mBottomView:Landroid/view/View;

    const p2, 0x7f0901a5

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimCtrl:Landroid/view/View;

    const p2, 0x7f0901a3

    .line 569
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimConfirm:Landroid/widget/TextView;

    .line 570
    iget-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimCtrl:Landroid/view/View;

    const p2, 0x7f0901a2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/video/player/nubiaplayer/NubiaPlayerView$ViewHolder;->mTrimCancel:Landroid/widget/TextView;

    return-void
.end method
