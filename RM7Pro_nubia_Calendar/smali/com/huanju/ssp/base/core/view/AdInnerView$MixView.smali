.class public Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;
.super Landroid/widget/RelativeLayout;
.source "AdInnerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huanju/ssp/base/core/view/AdInnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MixView"
.end annotation


# instance fields
.field private ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

.field private icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

.field private subtitle:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/huanju/ssp/base/core/view/AdInnerView;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/huanju/ssp/base/core/view/AdInnerView;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 655
    iput-object p1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    .line 656
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 657
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->init()V

    .line 658
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 674
    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->setBackgroundColor(I)V

    .line 676
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->initIcon()V

    .line 677
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->initAcIcon()V

    .line 678
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->initTitle()V

    .line 679
    invoke-direct {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->initSubTitle()V

    .line 680
    return-void
.end method

.method private initAcIcon()V
    .locals 8

    .prologue
    const-wide v6, 0x3fe147ae147ae148L    # 0.54

    .line 695
    new-instance v1, Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 696
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setId(I)V

    .line 697
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 698
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fdc28f5c28f5c29L    # 0.44

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 699
    .local v0, "rl_Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 700
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 701
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 702
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 703
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {p0, v1, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 704
    return-void
.end method

.method private initIcon()V
    .locals 6

    .prologue
    const-wide v4, 0x3fe7ae147ae147aeL    # 0.74

    .line 683
    new-instance v1, Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 684
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setId(I)V

    .line 685
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 686
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    .line 687
    invoke-static {v1, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 688
    .local v0, "rl_Params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v2, 0x3fc999999999999aL    # 0.2

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 689
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 690
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v1, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 691
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {p0, v1, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    return-void
.end method

.method private initSubTitle()V
    .locals 8

    .prologue
    const-wide v6, 0x3fd999999999999aL    # 0.4

    const/4 v3, 0x0

    .line 725
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    .line 726
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 727
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 728
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    const/16 v2, 0x10

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 729
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 730
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    const-string v2, "\u526f\u6807\u9898"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fc47ae147ae147bL    # 0.16

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 732
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    const-string v2, "#80FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 733
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 734
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v2, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 735
    .local v0, "rl_Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 736
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 737
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 738
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v2, 0x3fb999999999999aL    # 0.1

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 739
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v2, 0x3fc70a3d70a3d70aL    # 0.18

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 740
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    invoke-static {v1, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 741
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 743
    return-void
.end method

.method private initTitle()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 707
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    .line 708
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    .line 709
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 710
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->setSingleLine()V

    .line 711
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    const-string v2, "#ffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 712
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fceb851eb851eb8L    # 0.24

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 713
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fd1eb851eb851ecL    # 0.28

    .line 714
    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 715
    .local v0, "rl_Params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 716
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 717
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v1}, Lcom/huanju/ssp/base/core/view/gif/GifView;->getId()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 718
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v2, 0x3fc70a3d70a3d70aL    # 0.18

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 719
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v2, 0x3fd999999999999aL    # 0.4

    invoke-static {v1, v2, v3}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 720
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 721
    iget-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v0}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 722
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 794
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 795
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 796
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    .line 797
    return-void
.end method

.method public recycle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 661
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v0, :cond_0

    .line 662
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->free()V

    .line 663
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 666
    :cond_0
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->free()V

    .line 668
    iput-object v1, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    .line 671
    :cond_1
    return-void
.end method

.method public showMix(Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;)Z
    .locals 8
    .param p1, "mix"    # Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;

    .prologue
    .line 747
    :try_start_0
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 748
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->sub_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 751
    :try_start_1
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->title:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->text_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 752
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->subtitle:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#80"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->text_color:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 753
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->bg_color:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->setBackgroundColor(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 758
    :goto_0
    :try_start_2
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    array-length v2, v2

    if-eqz v2, :cond_0

    .line 759
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 760
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_2

    .line 761
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fb47ae147ae147bL    # 0.08

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 762
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 770
    :goto_1
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    .line 773
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_0
    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B

    array-length v2, v2

    if-eqz v2, :cond_1

    .line 774
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B

    invoke-static {v2, v3}, Lcom/huanju/ssp/base/core/view/imageloader/ImageLoader;->adapterData(Landroid/view/View;[B)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 775
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 776
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fa47ae147ae147bL    # 0.04

    invoke-static {v2, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v2}, Lcom/huanju/ssp/base/utils/DrawableUtils;->getRoundedCornerBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 777
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2, v0}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 783
    :goto_2
    const/4 v2, 0x0

    iput-object v2, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B

    .line 785
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    const/4 v2, 0x1

    .line 789
    :goto_3
    return v2

    .line 754
    :catch_0
    move-exception v1

    .line 755
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "\u670d\u52a1\u5668\u7ed9\u7684\u56fe\u6587\u4e2d\uff0c\u989c\u8272\u5b57\u6bb5\u683c\u5f0f\u4e0d\u5bf9"

    invoke-static {v2}, Lcom/huanju/ssp/base/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 787
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 789
    const/4 v2, 0x0

    goto :goto_3

    .line 764
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :try_start_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v3, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->COVER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImageType(Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;)V

    .line 765
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fe7ae147ae147aeL    # 0.74

    invoke-static {v3, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v6, 0x3fe7ae147ae147aeL    # 0.74

    invoke-static {v4, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setShowDimension(II)V

    .line 766
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->showCover()V

    .line 767
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->icon:[B

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImage([B)V

    .line 768
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    invoke-virtual {v2}, Lcom/huanju/ssp/base/core/view/gif/GifView;->showAnimation()V

    goto :goto_1

    .line 779
    :cond_3
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    sget-object v3, Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;->COVER:Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImageType(Lcom/huanju/ssp/base/core/view/gif/GifView$GifImageType;)V

    .line 780
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v4, 0x3fe147ae147ae148L    # 0.54

    invoke-static {v3, v4, v5}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v3

    iget-object v4, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->this$0:Lcom/huanju/ssp/base/core/view/AdInnerView;

    const-wide v6, 0x3fdc28f5c28f5c29L    # 0.44

    invoke-static {v4, v6, v7}, Lcom/huanju/ssp/base/core/view/AdInnerView;->access$200(Lcom/huanju/ssp/base/core/view/AdInnerView;D)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setShowDimension(II)V

    .line 781
    iget-object v2, p0, Lcom/huanju/ssp/base/core/view/AdInnerView$MixView;->ac_icon:Lcom/huanju/ssp/base/core/view/gif/GifView;

    iget-object v3, p1, Lcom/huanju/ssp/base/core/request/ad/bean/Ad$Mix;->acicon:[B

    invoke-virtual {v2, v3}, Lcom/huanju/ssp/base/core/view/gif/GifView;->setGifImage([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2
.end method
