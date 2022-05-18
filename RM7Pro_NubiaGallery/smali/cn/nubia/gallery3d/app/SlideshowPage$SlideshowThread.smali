.class Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;
.super Ljava/lang/Thread;
.source "SlideshowPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlideshowThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/SlideshowPage;


# direct methods
.method private constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideshowPage$1;)V
    .locals 0

    .line 559
    invoke-direct {p0, p1}, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;-><init>(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 562
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 563
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 564
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2100(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/VideoParams;

    move-result-object v0

    if-nez v0, :cond_0

    .line 565
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v1, Lcn/nubia/videogenerator/codec/VideoParams;

    invoke-direct {v1}, Lcn/nubia/videogenerator/codec/VideoParams;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2102(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/VideoParams;)Lcn/nubia/videogenerator/codec/VideoParams;

    .line 566
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2100(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/VideoParams;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/VideoParams;->setBitRate(I)V

    .line 568
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/ImageRender;

    move-result-object v0

    if-nez v0, :cond_1

    .line 569
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v1, Lcn/nubia/videogenerator/codec/ImageRender;

    invoke-direct {v1}, Lcn/nubia/videogenerator/codec/ImageRender;-><init>()V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2002(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/ImageRender;)Lcn/nubia/videogenerator/codec/ImageRender;

    .line 570
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/ImageRender;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2600(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/videogenerator/codec/ImageRender;->addImage(Ljava/util/ArrayList;)V

    .line 572
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 573
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v2, Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    invoke-direct {v2}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;-><init>()V

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1802(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/gallery3d/app/SlideVideoGenerator;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    .line 574
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2700(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    iget-object v3, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v3}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1200(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v3

    div-int/2addr v2, v3

    sub-int/2addr v2, v1

    int-to-long v2, v2

    const-wide/32 v4, 0xf4240

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setMaxDuration(J)V

    .line 576
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/improve/slideshow/SlideShowSetting;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getPlayMusicFilePath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 578
    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setAudioPath(Ljava/lang/String;)V

    .line 579
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v2, Lcn/nubia/videogenerator/codec/AudioParams;

    invoke-direct {v2}, Lcn/nubia/videogenerator/codec/AudioParams;-><init>()V

    invoke-static {v0, v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2902(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/codec/AudioParams;)Lcn/nubia/videogenerator/codec/AudioParams;

    .line 580
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->setAudioParams()V

    .line 583
    :cond_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/slidemake/VideoMake;

    move-result-object v0

    if-nez v0, :cond_3

    .line 584
    invoke-static {v1}, Lcn/nubia/gallery3d/data/MediaItem;->getTargetSize(I)I

    move-result v7

    .line 585
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    new-instance v1, Lcn/nubia/videogenerator/slidemake/VideoMake;

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2000(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/codec/ImageRender;

    move-result-object v3

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1200(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v4

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3000(Lcn/nubia/gallery3d/app/SlideshowPage;)Ljava/util/ArrayList;

    move-result-object v5

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/improve/slideshow/SlideShowSetting;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/improve/slideshow/SlideShowSetting;->getEffectName()Ljava/lang/String;

    move-result-object v6

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcn/nubia/videogenerator/slidemake/VideoMake;-><init>(Lcn/nubia/videogenerator/codec/ImageRender;ILjava/util/ArrayList;Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2202(Lcn/nubia/gallery3d/app/SlideshowPage;Lcn/nubia/videogenerator/slidemake/VideoMake;)Lcn/nubia/videogenerator/slidemake/VideoMake;

    .line 587
    :cond_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3100(Lcn/nubia/gallery3d/app/SlideshowPage;)V

    .line 588
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$2200(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/videogenerator/slidemake/VideoMake;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v1}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3200(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v1

    iget-object v2, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v2}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$3300(Lcn/nubia/gallery3d/app/SlideshowPage;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcn/nubia/videogenerator/slidemake/VideoMake;->setVideoSize(II)V

    .line 590
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 591
    iget-object v0, p0, Lcn/nubia/gallery3d/app/SlideshowPage$SlideshowThread;->this$0:Lcn/nubia/gallery3d/app/SlideshowPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/SlideshowPage;->access$1800(Lcn/nubia/gallery3d/app/SlideshowPage;)Lcn/nubia/gallery3d/app/SlideVideoGenerator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/SlideVideoGenerator;->export()V

    .line 593
    :cond_4
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
