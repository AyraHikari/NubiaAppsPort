.class Lcn/nubia/gallery3d/app/PhotoPage$3;
.super Ljava/lang/Object;
.source "PhotoPage.java"

# interfaces
.implements Lcn/nubia/gallery3d/video/ui/HeicSeekBarView$HeicSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/nubia/gallery3d/app/PhotoPage;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/nubia/gallery3d/app/PhotoPage;


# direct methods
.method constructor <init>(Lcn/nubia/gallery3d/app/PhotoPage;)V
    .locals 0

    .line 470
    iput-object p1, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBebinScale()V
    .locals 1

    .line 541
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScaleBegin()V

    return-void
.end method

.method public onEndScale()V
    .locals 1

    .line 546
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScaleEnd()V

    return-void
.end method

.method public onProgressChanged(I)V
    .locals 7

    const/16 v0, 0x1f

    const v1, 0x3f8147ae    # 1.01f

    const/high16 v2, 0x3f800000    # 1.0f

    if-ltz p1, :cond_6

    if-ge p1, v0, :cond_6

    .line 474
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    const/16 v3, 0x1d

    const/4 v4, 0x3

    if-nez v0, :cond_2

    if-lt p1, v4, :cond_2

    if-le p1, v3, :cond_0

    goto :goto_0

    .line 488
    :cond_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-le p1, v0, :cond_1

    .line 489
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x3f839581    # 1.028f

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 490
    :cond_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-ge p1, v0, :cond_14

    .line 491
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x3f7ae148    # 0.98f

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 475
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    if-eqz v0, :cond_3

    .line 476
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    const/4 v5, 0x0

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1500(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    :cond_3
    if-ge p1, v4, :cond_4

    .line 479
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    :cond_4
    if-gt p1, v3, :cond_5

    .line 481
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 483
    :cond_5
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-ge p1, v0, :cond_14

    .line 484
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x4000a3d7    # 2.01f

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    :cond_6
    const v3, 0x3f7851ec    # 0.97f

    const/high16 v4, 0x40800000    # 4.0f

    const/16 v5, 0x40

    if-lt p1, v0, :cond_d

    const/16 v0, 0x42

    if-ge p1, v0, :cond_d

    .line 495
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_9

    const/16 v0, 0x22

    if-lt p1, v0, :cond_9

    if-le p1, v5, :cond_7

    goto :goto_1

    .line 509
    :cond_7
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-le p1, v0, :cond_8

    .line 510
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x3f856042    # 1.042f

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 511
    :cond_8
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-ge p1, v0, :cond_14

    .line 512
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 496
    :cond_9
    :goto_1
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    if-eq v0, v6, :cond_a

    .line 497
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0, v6}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1500(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    :cond_a
    const/16 v0, 0x20

    if-gt p1, v0, :cond_b

    .line 500
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    :cond_b
    if-gt p1, v5, :cond_c

    .line 502
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    .line 504
    :cond_c
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-ge p1, v0, :cond_14

    .line 505
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto/16 :goto_3

    :cond_d
    if-lt p1, v5, :cond_14

    const/16 v0, 0x64

    if-ge p1, v0, :cond_14

    .line 516
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_10

    const/16 v0, 0x60

    if-gt p1, v0, :cond_10

    const/16 v0, 0x44

    if-ge p1, v0, :cond_e

    goto :goto_2

    .line 530
    :cond_e
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-le p1, v0, :cond_f

    .line 531
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    const v1, 0x3f851eb8    # 1.04f

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto :goto_3

    .line 532
    :cond_f
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-ge p1, v0, :cond_14

    .line 533
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto :goto_3

    .line 517
    :cond_10
    :goto_2
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget-object v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->pda:Lcn/nubia/gallery3d/app/PhotoDataAdapter;

    invoke-virtual {v0}, Lcn/nubia/gallery3d/app/PhotoDataAdapter;->getHeic_index()I

    move-result v0

    if-eq v0, v5, :cond_11

    .line 518
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0, v5}, Lcn/nubia/gallery3d/app/PhotoPage;->access$1500(Lcn/nubia/gallery3d/app/PhotoPage;I)V

    :cond_11
    const/16 v0, 0x43

    if-ge p1, v0, :cond_12

    .line 521
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto :goto_3

    :cond_12
    const/16 v0, 0x61

    if-ge p1, v0, :cond_13

    .line 523
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    goto :goto_3

    .line 525
    :cond_13
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iget v0, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    if-le p1, v0, :cond_14

    .line 526
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    invoke-static {v0}, Lcn/nubia/gallery3d/app/PhotoPage;->access$300(Lcn/nubia/gallery3d/app/PhotoPage;)Lcn/nubia/gallery3d/ui/PhotoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcn/nubia/gallery3d/ui/PhotoView;->heicScale(F)V

    .line 537
    :cond_14
    :goto_3
    iget-object v0, p0, Lcn/nubia/gallery3d/app/PhotoPage$3;->this$0:Lcn/nubia/gallery3d/app/PhotoPage;

    iput p1, v0, Lcn/nubia/gallery3d/app/PhotoPage;->mOldProgress:I

    return-void
.end method
