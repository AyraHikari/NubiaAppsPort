.class public Lcn/nubia/camera/videomaker/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcn/nubia/camera/videomaker/ThumbImageListView$a;
.implements Lcn/nubia/camera/videomaker/b$c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/videomaker/k$b;,
        Lcn/nubia/camera/videomaker/k$a;
    }
.end annotation


# instance fields
.field private A:Ljava/io/File;

.field private B:Z

.field private C:Ljava/lang/String;

.field private D:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private E:Landroid/net/Uri;

.field private F:Landroid/net/Uri;

.field private G:Ljava/lang/String;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:I

.field private K:I

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:Landroid/widget/RelativeLayout;

.field private T:Landroid/widget/ProgressBar;

.field private U:Landroid/widget/TextView;

.field private V:Ljava/lang/String;

.field private W:I

.field private X:Landroid/media/MediaPlayer;

.field private Y:Z

.field private Z:Landroid/app/ProgressDialog;

.field private final a:[Ljava/lang/String;

.field private final aa:Lcn/nubia/camera/videomaker/k$b;

.field private ab:Lcn/nubia/camera/videomaker/k$a;

.field private ac:Z

.field private final ad:Lcn/nubia/camera/ad/a;

.field private ae:Landroid/media/AudioManager;

.field private af:Landroid/os/Handler;

.field private ag:Landroid/media/AudioManager$OnAudioFocusChangeListener;

.field private b:Landroid/app/Activity;

.field private c:Landroid/content/Context;

.field private final d:Landroid/view/LayoutInflater;

.field private e:Landroid/view/View;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/ImageView;

.field private h:Lcn/nubia/camera/videomaker/LooperShowView;

.field private i:I

.field private j:Landroid/widget/ImageButton;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/HorizontalScrollView;

.field private n:Lcn/nubia/camera/videomaker/ThumbImageListView;

.field private o:Landroid/widget/Button;

.field private p:Landroid/widget/Button;

.field private q:Landroid/widget/Button;

.field private r:Landroid/widget/Button;

.field private s:Landroid/widget/ProgressBar;

.field private t:Landroid/widget/ImageButton;

.field private u:Landroid/widget/ImageButton;

.field private v:Landroid/view/animation/Animation;

.field private w:Landroid/view/animation/Animation;

.field private x:Z

.field private y:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcn/nubia/camera/ad/a;Ljava/util/ArrayList;Ljava/lang/String;Landroid/app/Activity;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/nubia/camera/ad/a;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/app/Activity;",
            "Landroid/view/ViewGroup;",
            ")V"
        }
    .end annotation

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "title"

    const-string v1, "mime_type"

    .line 112
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->a:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 118
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    .line 120
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    .line 121
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->f:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 125
    iput v1, p0, Lcn/nubia/camera/videomaker/k;->i:I

    .line 140
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    .line 141
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    .line 142
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->z:Ljava/lang/String;

    .line 143
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->A:Ljava/io/File;

    .line 144
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->B:Z

    .line 146
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->C:Ljava/lang/String;

    .line 147
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    .line 150
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    .line 151
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    .line 152
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->H:Ljava/lang/String;

    const/4 v2, -0x1

    .line 155
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->I:I

    .line 156
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->J:I

    .line 157
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->K:I

    const/4 v2, 0x3

    .line 162
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->P:I

    .line 174
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    .line 175
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->Y:Z

    .line 177
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    .line 178
    new-instance v2, Lcn/nubia/camera/videomaker/k$b;

    invoke-direct {v2, p0, v0}, Lcn/nubia/camera/videomaker/k$b;-><init>(Lcn/nubia/camera/videomaker/k;Lcn/nubia/camera/videomaker/k$1;)V

    iput-object v2, p0, Lcn/nubia/camera/videomaker/k;->aa:Lcn/nubia/camera/videomaker/k$b;

    .line 180
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->ac:Z

    .line 365
    new-instance v0, Lcn/nubia/camera/videomaker/k$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/k$1;-><init>(Lcn/nubia/camera/videomaker/k;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    .line 1323
    new-instance v0, Lcn/nubia/camera/videomaker/k$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/videomaker/k$4;-><init>(Lcn/nubia/camera/videomaker/k;)V

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->ag:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    .line 186
    iput-object p5, p0, Lcn/nubia/camera/videomaker/k;->f:Landroid/view/ViewGroup;

    .line 187
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->ad:Lcn/nubia/camera/ad/a;

    .line 188
    iput-object p4, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 189
    iput-object p4, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    .line 190
    invoke-virtual {p4}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->d:Landroid/view/LayoutInflater;

    .line 191
    iput-object p2, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    .line 192
    iput-object p3, p0, Lcn/nubia/camera/videomaker/k;->z:Ljava/lang/String;

    return-void
.end method

.method private A()Z
    .locals 2

    .line 707
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_1

    const/4 v1, 0x3

    if-eq v1, v0, :cond_1

    .line 709
    invoke-static {}, Lcn/nubia/camera/videomaker/service/MakerService;->a()I

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private B()V
    .locals 6

    .line 716
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->C()V

    .line 717
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    iget v1, p0, Lcn/nubia/camera/videomaker/k;->M:I

    iget v2, p0, Lcn/nubia/camera/videomaker/k;->O:I

    int-to-long v2, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v4, v2

    invoke-virtual {v0, v1, v4, v5}, Lcn/nubia/camera/videomaker/LooperShowView;->a(IJ)V

    .line 718
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->g:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 719
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcn/nubia/camera/videomaker/LooperShowView;->setVisibility(I)V

    .line 720
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 721
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->O()Z

    .line 722
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->D()V

    .line 723
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->K:I

    return-void
.end method

.method private C()V
    .locals 3

    .line 744
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->z()Ljava/util/ArrayList;

    move-result-object v1

    iget v2, p0, Lcn/nubia/camera/videomaker/k;->i:I

    invoke-virtual {v0, v1, v2, v2}, Lcn/nubia/camera/videomaker/LooperShowView;->a(Ljava/util/ArrayList;II)V

    .line 745
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/LooperShowView;->getModel()Lcn/nubia/camera/videomaker/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/LooperShowView;->getModel()Lcn/nubia/camera/videomaker/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/nubia/camera/videomaker/b;->a(Lcn/nubia/camera/videomaker/b$c;)V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 5

    const-string v0, "VideoMakerPage"

    .line 751
    iget v1, p0, Lcn/nubia/camera/videomaker/k;->L:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    return-void

    .line 752
    :cond_0
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    .line 756
    :try_start_0
    iget v3, p0, Lcn/nubia/camera/videomaker/k;->L:I

    if-nez v3, :cond_3

    .line 757
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    if-nez v1, :cond_1

    return-void

    .line 758
    :cond_1
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 759
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    return-void

    .line 760
    :cond_2
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->E()V

    goto :goto_0

    :cond_3
    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 761
    iget-boolean v3, p0, Lcn/nubia/camera/videomaker/k;->Y:Z

    if-eqz v3, :cond_4

    .line 762
    iget-object v3, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    iget-object v4, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    invoke-virtual {v1, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 763
    invoke-direct {p0, v2}, Lcn/nubia/camera/videomaker/k;->a(Z)V

    goto :goto_0

    :cond_4
    const-string v1, "wrong audio state!"

    .line 765
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v1

    .line 769
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 770
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private E()V
    .locals 1

    .line 775
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/k;->b(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 776
    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/k;->d(I)V

    :cond_0
    return-void
.end method

.method private F()V
    .locals 1

    .line 820
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 821
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 822
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method private G()V
    .locals 5

    .line 827
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    const v1, 0x7f090143

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->T:Landroid/widget/ProgressBar;

    .line 828
    iget v1, p0, Lcn/nubia/camera/videomaker/k;->W:I

    add-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 829
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->T:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 830
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    const v2, 0x7f090144

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->U:Landroid/widget/TextView;

    .line 831
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const v4, 0x7f0f03de

    invoke-virtual {v2, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 832
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    const v2, 0x7f090142

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 833
    new-instance v2, Lcn/nubia/camera/videomaker/k$3;

    invoke-direct {v2, p0}, Lcn/nubia/camera/videomaker/k$3;-><init>(Lcn/nubia/camera/videomaker/k;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 839
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method private H()V
    .locals 3

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelExport, mIsStartEncoding = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->ac:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 861
    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Z)V

    .line 862
    iget-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->ac:Z

    if-eqz v1, :cond_0

    .line 864
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->V:Ljava/lang/String;

    invoke-static {v1, v2}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x0

    .line 869
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->V:Ljava/lang/String;

    .line 870
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 871
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 873
    :cond_1
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    return-void
.end method

.method private I()V
    .locals 4

    .line 1006
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->L:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 1007
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1008
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 1009
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0311

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x8

    .line 1008
    invoke-direct {p0, v2, v0, v1}, Lcn/nubia/camera/videomaker/k;->a(ILjava/lang/String;I)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x0

    .line 1015
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->Y:Z

    .line 1016
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 1017
    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0157

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1016
    invoke-direct {p0, v3, v1, v0}, Lcn/nubia/camera/videomaker/k;->a(ILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    if-ne v0, v3, :cond_2

    .line 1021
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    invoke-static {v0, v2}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1022
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    .line 1023
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->J()V

    :cond_2
    :goto_0
    return-void
.end method

.method private J()V
    .locals 3

    .line 1028
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/k;->c(Ljava/util/ArrayList;)V

    .line 1029
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 1030
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f01a4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 1029
    invoke-direct {p0, v1, v0, v2}, Lcn/nubia/camera/videomaker/k;->a(ILjava/lang/String;I)V

    return-void
.end method

.method private K()V
    .locals 3

    .line 1042
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->M:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    .line 1043
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->M:I

    .line 1044
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03e4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1046
    :cond_0
    iput v1, p0, Lcn/nubia/camera/videomaker/k;->M:I

    .line 1047
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->q:Landroid/widget/Button;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private L()V
    .locals 6

    .line 1053
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->N:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 1054
    iput v1, p0, Lcn/nubia/camera/videomaker/k;->N:I

    const/16 v0, 0xf

    .line 1055
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->O:I

    .line 1056
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f010d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-ne v0, v1, :cond_1

    const/4 v0, 0x3

    .line 1058
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->N:I

    .line 1059
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->O:I

    .line 1060
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f010f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1062
    :cond_1
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->N:I

    const/4 v0, 0x6

    .line 1063
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->O:I

    .line 1064
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f010e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1066
    :goto_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->r:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1068
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f03da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1069
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f011d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1070
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->l:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcn/nubia/camera/videomaker/k;->O:I

    iget-object v5, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    .line 1071
    invoke-virtual {v5}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getHighLightNumber()I

    move-result v5

    .line 1070
    invoke-direct {p0, v4, v5}, Lcn/nubia/camera/videomaker/k;->a(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private M()Z
    .locals 4

    .line 1086
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    if-eqz v0, :cond_0

    .line 1087
    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getHighLightNumber()I

    move-result v0

    .line 1088
    iget v1, p0, Lcn/nubia/camera/videomaker/k;->O:I

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/videomaker/k;->b(II)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private N()I
    .locals 2

    .line 1099
    sget-object v0, Lcn/nubia/camera/videomaker/a/a;->b:[Landroid/util/Pair;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private O()Z
    .locals 4

    .line 1317
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->ae:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    .line 1318
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->ae:Landroid/media/AudioManager;

    .line 1320
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->ae:Landroid/media/AudioManager;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->ag:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v3, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method private P()V
    .locals 2

    .line 1340
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->ae:Landroid/media/AudioManager;

    if-eqz v0, :cond_0

    .line 1341
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->ag:Landroid/media/AudioManager$OnAudioFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    const/4 v0, 0x0

    .line 1342
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->ae:Landroid/media/AudioManager;

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;)Landroid/content/Context;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    return-object p0
.end method

.method private a(IIZ)Landroid/graphics/Bitmap;
    .locals 3

    .line 537
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 539
    iget-object p3, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    const/16 v0, 0x258

    invoke-static {p3, p2, v0}, Lcn/nubia/camera/videomaker/e;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p3

    if-nez p3, :cond_2

    if-nez p1, :cond_2

    .line 541
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_2

    .line 542
    iget-object p3, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    add-int/2addr p1, v2

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p2, v0}, Lcn/nubia/camera/videomaker/e;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    .line 546
    :cond_0
    iget-object p3, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {p3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/16 p3, 0xc8

    invoke-static {p1, p2, p3}, Lcn/nubia/camera/videomaker/e;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object p3

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :cond_2
    :goto_0
    return-object p3
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    return-object p1
.end method

.method private a(II)Ljava/lang/String;
    .locals 1

    .line 1075
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/videomaker/k;->b(II)J

    move-result-wide p1

    .line 1076
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcn/nubia/camera/videomaker/b/d;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    return-object p1
.end method

.method private a(ILjava/lang/String;I)V
    .locals 1

    .line 1035
    iput p1, p0, Lcn/nubia/camera/videomaker/k;->L:I

    .line 1036
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->o:Landroid/widget/Button;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    iget-object p2, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0302

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 1038
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Ljava/util/ArrayList;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->c(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-static {p0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;I)V
    .locals 1

    .line 781
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 782
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    new-instance v0, Lcn/nubia/camera/videomaker/k$2;

    invoke-direct {v0, p0, p2}, Lcn/nubia/camera/videomaker/k$2;-><init>(Lcn/nubia/camera/videomaker/k;I)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    const/4 p1, 0x0

    .line 794
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2

    const-string v0, "updateThumbnail"

    .line 1304
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1305
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    if-nez p1, :cond_0

    goto :goto_0

    .line 1308
    :cond_0
    new-instance p1, Lcn/nubia/l/b/g;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->ad:Lcn/nubia/camera/ad/a;

    .line 1309
    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p1, v0, p2, v1, v1}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 1313
    iget-object p2, p0, Lcn/nubia/camera/videomaker/k;->ad:Lcn/nubia/camera/ad/a;

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private a(Z)V
    .locals 1

    .line 814
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 815
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 816
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/videomaker/k;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/k;->Y:Z

    return p1
.end method

.method private b(II)J
    .locals 4

    int-to-long v0, p2

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    int-to-long p1, p1

    .line 1080
    div-long/2addr v0, p1

    return-wide v0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/k;)Landroid/app/Activity;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/k;Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->c(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/k;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->V:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/k;I)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->c(I)V

    return-void
.end method

.method private b(Landroid/net/Uri;)Z
    .locals 5

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSupportMusicUri, uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    .line 879
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->d(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/mpeg"

    .line 880
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string v1, "audio/mp4"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/amr"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "audio/aac"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 881
    :cond_0
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 885
    :try_start_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 886
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x1

    move v2, p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "VideoMakerPage"

    .line 888
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 892
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_1
    :goto_0
    return v2

    :goto_1
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 894
    throw p1
.end method

.method static synthetic b(Lcn/nubia/camera/videomaker/k;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/videomaker/k;->ac:Z

    return p1
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, ".m4a"

    .line 903
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".aac"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".mp3"

    .line 904
    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ".amr"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private b(Ljava/util/ArrayList;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 810
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private c(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    .line 933
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 934
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 935
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x2e

    .line 936
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 937
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    .line 939
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 942
    :try_start_0
    iget-object v4, p0, Lcn/nubia/camera/videomaker/k;->a:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    .line 943
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "title"

    .line 944
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 950
    :goto_1
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object p1, v1

    .line 947
    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    :goto_3
    return-object v1

    :catchall_1
    move-exception v0

    move-object v1, p1

    :goto_4
    if-eqz v1, :cond_3

    .line 950
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 952
    :cond_3
    throw v0
.end method

.method private c(I)V
    .locals 1

    .line 798
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcn/nubia/camera/videomaker/k;->b(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 799
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 800
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->d(I)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->s()V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 6

    .line 979
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addAudioTrackNoUri, filename = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 983
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->b(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 984
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 985
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file.length() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    .line 987
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    const-string v0, "file exists, addAudioTrackNoUri"

    .line 988
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    .line 989
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Ljava/lang/String;Z)V

    goto :goto_0

    .line 992
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    const v0, 0x7f0f009f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 993
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 994
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 995
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    .line 996
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private c(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1002
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private d(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8

    const-string v0, "getMusicType"

    .line 958
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    .line 960
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v0, 0x0

    .line 963
    :try_start_0
    iget-object v3, p0, Lcn/nubia/camera/videomaker/k;->a:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p1, :cond_0

    .line 964
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "mime_type"

    .line 965
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 966
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_1

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    .line 972
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_1
    move-exception p1

    move-object v7, v0

    move-object v0, p1

    move-object p1, v7

    goto :goto_3

    :catch_1
    move-exception v1

    move-object p1, v0

    .line 969
    :goto_1
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 972
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, p1

    :cond_2
    :goto_2
    return-object v0

    :goto_3
    if-eqz p1, :cond_3

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 974
    :cond_3
    throw v0
.end method

.method private d(I)V
    .locals 1

    .line 805
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 806
    invoke-direct {p0, v0, p1}, Lcn/nubia/camera/videomaker/k;->a(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->t()V

    return-void
.end method

.method private static d(Ljava/lang/String;)V
    .locals 2

    const-string v0, "VideoMakerPage"

    const/4 v1, 0x3

    .line 1123
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static e(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const p0, 0x1e8480

    return p0

    :cond_0
    const p0, 0x7a1200

    return p0

    :cond_1
    const p0, 0x7d000

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/videomaker/k;)Landroid/app/ProgressDialog;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 11

    .line 1264
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0302

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1265
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_CONTENT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "audio/*"

    .line 1266
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1267
    iget-object v4, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 1268
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1269
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1270
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 1271
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1272
    invoke-virtual {v7, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v8, "android.intent.extra.durationLimit"

    const-wide/16 v9, 0x1e

    .line 1273
    invoke-virtual {v7, v8, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1274
    iget-object v6, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1276
    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1277
    invoke-virtual {v8, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 1281
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1284
    :cond_2
    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    invoke-static {p1, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    :try_start_0
    const-string v0, "android.intent.extra.INITIAL_INTENTS"

    new-array v1, v5, [Landroid/os/Parcelable;

    .line 1291
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    .line 1290
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v0, 0x4000000

    .line 1292
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1294
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    const/16 v1, 0x3e9

    invoke-virtual {v0, p1, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1297
    :catch_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    const/4 v0, 0x1

    const-string v1, "Can\'t find component to select music"

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 1298
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/videomaker/k;)Landroid/os/Handler;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->C()V

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/videomaker/k;)Lcn/nubia/camera/videomaker/k$a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->ab:Lcn/nubia/camera/videomaker/k$a;

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->V:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/videomaker/k;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/videomaker/k;->Q:I

    return p0
.end method

.method static synthetic k(Lcn/nubia/camera/videomaker/k;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/videomaker/k;->R:I

    return p0
.end method

.method static synthetic l(Lcn/nubia/camera/videomaker/k;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/videomaker/k;->O:I

    return p0
.end method

.method static synthetic m(Lcn/nubia/camera/videomaker/k;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->H()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/videomaker/k;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 255
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/videomaker/k;)Landroid/net/Uri;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    return-object p0
.end method

.method private o()V
    .locals 2

    .line 259
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->v:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/videomaker/k;)Ljava/lang/String;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->H:Ljava/lang/String;

    return-object p0
.end method

.method private p()V
    .locals 3

    const/4 v0, 0x1

    .line 264
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    const/4 v1, 0x0

    .line 265
    iput v1, p0, Lcn/nubia/camera/videomaker/k;->L:I

    .line 266
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->M:I

    const/4 v2, 0x2

    .line 267
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->N:I

    const/4 v2, 0x6

    .line 268
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->O:I

    const/4 v2, 0x3

    .line 269
    iput v2, p0, Lcn/nubia/camera/videomaker/k;->P:I

    .line 270
    iput-boolean v1, p0, Lcn/nubia/camera/videomaker/k;->Y:Z

    .line 271
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->z:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->A:Ljava/io/File;

    .line 273
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->N()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/videomaker/k;->Q:I

    .line 274
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->e(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/videomaker/k;->R:I

    .line 277
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/b;->a(Landroid/content/Context;)V

    const/16 v0, 0x12c

    .line 278
    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/b;->a(I)I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/videomaker/k;->i:I

    const-wide/16 v0, 0x6

    .line 283
    invoke-static {v0, v1}, Lcn/nubia/camera/videomaker/b/c;->a(J)V

    .line 284
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->aa:Lcn/nubia/camera/videomaker/k$b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Lcn/nubia/camera/videomaker/service/a;)V

    .line 285
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->ad:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/location/Location;)V

    .line 286
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->x()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/videomaker/k;)Landroid/net/Uri;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    return-object p0
.end method

.method private q()V
    .locals 6

    .line 290
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->d:Landroid/view/LayoutInflater;

    const v1, 0x7f0c00da

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->f:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090141

    .line 293
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    const v1, 0x7f0903ab

    .line 295
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    const v1, 0x7f0901b8

    .line 297
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->g:Landroid/widget/ImageView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 298
    invoke-direct {p0, v2, v2, v3}, Lcn/nubia/camera/videomaker/k;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const v1, 0x7f0901ea

    .line 300
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/videomaker/LooperShowView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    const v1, 0x7f090252

    .line 302
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->j:Landroid/widget/ImageButton;

    .line 303
    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090369

    .line 305
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->m:Landroid/widget/HorizontalScrollView;

    const v1, 0x7f090328

    .line 306
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcn/nubia/camera/videomaker/ThumbImageListView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    .line 307
    invoke-virtual {v1, p0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->setOnThumbImageClickListener(Lcn/nubia/camera/videomaker/ThumbImageListView$a;)V

    .line 308
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->r()V

    const v1, 0x7f0902b7

    .line 310
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->k:Landroid/widget/TextView;

    .line 311
    iget-object v4, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 312
    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0f03df

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v2

    .line 311
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f09032d

    .line 313
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->l:Landroid/widget/TextView;

    const v1, 0x7f090051

    .line 315
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->o:Landroid/widget/Button;

    const v1, 0x7f0902b4

    .line 316
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    const v1, 0x7f09023f

    .line 317
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->q:Landroid/widget/Button;

    const v1, 0x7f0902e3

    .line 318
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->r:Landroid/widget/Button;

    const v1, 0x7f09009c

    .line 319
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->t:Landroid/widget/ImageButton;

    const v1, 0x7f090100

    .line 320
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->u:Landroid/widget/ImageButton;

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->f()V

    .line 324
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->o:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->q:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->r:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->t:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->u:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f090050

    .line 331
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->s:Landroid/widget/ProgressBar;

    .line 333
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    const/high16 v1, 0x10a0000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->v:Landroid/view/animation/Animation;

    .line 334
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    const v1, 0x10a0001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->w:Landroid/view/animation/Animation;

    .line 335
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->v:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/videomaker/k;)Landroid/widget/Button;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    return-object p0
.end method

.method private r()V
    .locals 3

    .line 340
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/b;->a(Landroid/content/Context;)V

    const/16 v0, 0x3c

    .line 341
    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/b;->a(I)I

    move-result v0

    .line 342
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(I)V

    const/4 v0, 0x0

    .line 344
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->I:I

    .line 345
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->J:I

    .line 346
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x102

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 347
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v2, 0x103

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 348
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/videomaker/k;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/videomaker/k;->W:I

    return p0
.end method

.method private s()V
    .locals 5

    .line 418
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->I:I

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    .line 421
    :cond_0
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->I:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1}, Lcn/nubia/camera/videomaker/k;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "VideoMakerPage"

    const-string v1, "onAddItem, bitmap == null"

    .line 423
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 426
    :cond_1
    new-instance v1, Lcn/nubia/camera/videomaker/d;

    iget v2, p0, Lcn/nubia/camera/videomaker/k;->J:I

    iget-object v3, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    iget v4, p0, Lcn/nubia/camera/videomaker/k;->I:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Lcn/nubia/camera/videomaker/d;-><init>(ILjava/lang/String;Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    iget v2, p0, Lcn/nubia/camera/videomaker/k;->J:I

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a(Lcn/nubia/camera/videomaker/d;I)V

    .line 429
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->J:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/videomaker/k;->J:I

    .line 431
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->h()V

    return-void
.end method

.method private t()V
    .locals 2

    .line 437
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->I:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/nubia/camera/videomaker/k;->I:I

    .line 439
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_0
    const-string v0, "VideoMakerPage"

    const-string v1, "0716, onAddItemFinished"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->u()V

    :goto_0
    return-void
.end method

.method private u()V
    .locals 2

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private v()V
    .locals 1

    .line 512
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    :cond_0
    return-void
.end method

.method private w()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 524
    :goto_0
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 525
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(I)Lcn/nubia/camera/videomaker/d;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 526
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/d;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private x()V
    .locals 1

    .line 574
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;)V

    return-void
.end method

.method private y()V
    .locals 4

    .line 578
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->z()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    .line 582
    iget v1, p0, Lcn/nubia/camera/videomaker/k;->W:I

    if-nez v1, :cond_0

    return-void

    .line 583
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {}, Lcn/nubia/camera/videomaker/b/c;->a()J

    move-result-wide v2

    invoke-static {v1, v0, v2, v3}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;[Ljava/lang/String;J)V

    return-void
.end method

.method private z()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 587
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 589
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getCount()I

    move-result v1

    .line 590
    iget v2, p0, Lcn/nubia/camera/videomaker/k;->M:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 592
    iget-object v3, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v3, v2}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(I)Lcn/nubia/camera/videomaker/d;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 593
    invoke-virtual {v3}, Lcn/nubia/camera/videomaker/d;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 594
    invoke-virtual {v3}, Lcn/nubia/camera/videomaker/d;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_3

    .line 599
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v2, v1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(I)Lcn/nubia/camera/videomaker/d;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 600
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/d;->c()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 601
    invoke-virtual {v2}, Lcn/nubia/camera/videomaker/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 605
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcn/nubia/camera/videomaker/k;->W:I

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 1259
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 555
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/videomaker/ThumbImageListView;->b(I)Lcn/nubia/camera/videomaker/d;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 558
    :cond_0
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_1

    .line 559
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 562
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v0, 0x101

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    .line 911
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    .line 913
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 914
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->b(Landroid/net/Uri;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 915
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    .line 919
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    goto :goto_0

    .line 921
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    const v0, 0x7f0f009f

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 922
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 923
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    if-eqz p1, :cond_2

    .line 926
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/net/Uri;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcn/nubia/camera/videomaker/k$a;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->ab:Lcn/nubia/camera/videomaker/k$a;

    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 196
    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->D:Ljava/util/ArrayList;

    return-void
.end method

.method public b()V
    .locals 1

    .line 208
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->Z:Landroid/app/ProgressDialog;

    const/4 v0, -0x1

    .line 211
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    :cond_0
    return-void
.end method

.method b(I)V
    .locals 5

    .line 843
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->T:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->U:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/16 v0, 0x64

    mul-int/2addr p1, v0

    .line 846
    iget v1, p0, Lcn/nubia/camera/videomaker/k;->W:I

    add-int/2addr v1, v0

    div-int/2addr p1, v1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 848
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->U:Landroid/widget/TextView;

    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03de

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public c()V
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 219
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    .line 222
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->p()V

    .line 223
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->q()V

    .line 224
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->o()V

    :cond_1
    :goto_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 228
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->b()V

    .line 231
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    .line 232
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->n()V

    const/4 v0, 0x0

    .line 233
    iput-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    const/4 v0, 0x0

    .line 234
    iput-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    .line 239
    :cond_1
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 240
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->H()V

    .line 242
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x104

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    const/16 v1, 0x105

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->af:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 246
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->i()V

    return-void
.end method

.method public e()Landroid/view/View;
    .locals 1

    .line 250
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->e:Landroid/view/View;

    return-object v0
.end method

.method public f()V
    .locals 3

    .line 353
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->o:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 354
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 355
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->p:Landroid/widget/Button;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 357
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->q:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 358
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->r:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 361
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f010e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public g()V
    .locals 4

    .line 454
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->g:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->w()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/videomaker/k;->a(IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->h()V

    return-void
.end method

.method public h()V
    .locals 6

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->getHighLightNumber()I

    move-result v0

    .line 462
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 463
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    .line 464
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f03df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 465
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 463
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->l:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f03da

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 469
    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f011d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 470
    iget-object v3, p0, Lcn/nubia/camera/videomaker/k;->l:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, p0, Lcn/nubia/camera/videomaker/k;->O:I

    invoke-direct {p0, v5, v0}, Lcn/nubia/camera/videomaker/k;->a(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public i()V
    .locals 4

    const-string v0, "clearData"

    .line 485
    invoke-static {v0}, Lcn/nubia/camera/videomaker/k;->d(Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Landroid/content/Context;)V

    .line 487
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->aa:Lcn/nubia/camera/videomaker/k$b;

    invoke-static {v0}, Lcn/nubia/camera/videomaker/service/MakerService;->b(Lcn/nubia/camera/videomaker/service/a;)V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->y:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 491
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->n:Lcn/nubia/camera/videomaker/ThumbImageListView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/ThumbImageListView;->a()V

    .line 493
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->A:Ljava/io/File;

    if-eqz v0, :cond_2

    .line 494
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/nubia/camera/videomaker/k;->A:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 495
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 496
    iget-object v1, p0, Lcn/nubia/camera/videomaker/k;->A:Ljava/io/File;

    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 497
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 498
    invoke-static {v0}, Lcn/nubia/camera/videomaker/b/a;->a(Ljava/io/File;)Z

    .line 502
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 503
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 504
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->X:Landroid/media/MediaPlayer;

    .line 506
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->v()V

    .line 507
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    .line 508
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->E:Landroid/net/Uri;

    .line 509
    iput-object v1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .locals 1

    .line 518
    iget-boolean v0, p0, Lcn/nubia/camera/videomaker/k;->x:Z

    return v0
.end method

.method public k()V
    .locals 2

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    invoke-virtual {v0}, Lcn/nubia/camera/videomaker/LooperShowView;->a()V

    .line 728
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->h:Lcn/nubia/camera/videomaker/LooperShowView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/videomaker/LooperShowView;->setVisibility(I)V

    .line 729
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->j:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 732
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->P()V

    .line 733
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->F()V

    const/4 v0, 0x1

    .line 734
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    .line 736
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->C()V

    return-void
.end method

.method public l()I
    .locals 1

    .line 740
    iget v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    return v0
.end method

.method m()V
    .locals 2

    .line 853
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->S:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 854
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    const/4 v0, 0x1

    .line 855
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 613
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v0, 0x2

    const-string v1, "VideoMakerPage"

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    .line 659
    :sswitch_0
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_0

    .line 660
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 662
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->L()V

    goto/16 :goto_0

    .line 635
    :sswitch_1
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 638
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->G:Ljava/lang/String;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->F:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :cond_2
    const-string p1, "documentsui"

    .line 644
    invoke-direct {p0, p1}, Lcn/nubia/camera/videomaker/k;->e(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 615
    :sswitch_2
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_3

    .line 616
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    goto/16 :goto_0

    .line 618
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->B()V

    goto/16 :goto_0

    .line 649
    :sswitch_3
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->K()V

    .line 650
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_4

    .line 651
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    goto/16 :goto_0

    .line 653
    :cond_4
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->C()V

    goto :goto_0

    .line 676
    :sswitch_4
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->A()Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "wlb  invalid State busy...."

    .line 677
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-string p1, "done VideoMakerPage"

    .line 680
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_6

    .line 682
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 684
    :cond_6
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->M()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_7

    .line 685
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->c:Landroid/content/Context;

    const v2, 0x7f0f011f

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 689
    :cond_7
    iput v0, p0, Lcn/nubia/camera/videomaker/k;->K:I

    .line 690
    invoke-static {v1}, Lcn/nubia/camera/videomaker/service/MakerService;->a(Z)V

    .line 691
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->y()V

    .line 692
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->W:I

    if-nez p1, :cond_8

    goto :goto_0

    .line 693
    :cond_8
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->G()V

    const/4 p1, 0x1

    .line 694
    iget-object v0, p0, Lcn/nubia/camera/videomaker/k;->b:Landroid/app/Activity;

    invoke-static {p1, v0}, Lcn/nubia/camera/videomaker/b/a;->a(ILandroid/app/Activity;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/videomaker/k;->V:Ljava/lang/String;

    goto :goto_0

    :sswitch_5
    const-string p1, "cancel VideoMakerPage"

    .line 667
    invoke-static {v1, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-nez p1, :cond_9

    .line 669
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 671
    :cond_9
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->d()V

    goto :goto_0

    .line 624
    :sswitch_6
    iget p1, p0, Lcn/nubia/camera/videomaker/k;->K:I

    if-ne p1, v0, :cond_a

    goto :goto_0

    :cond_a
    if-nez p1, :cond_b

    .line 627
    invoke-virtual {p0}, Lcn/nubia/camera/videomaker/k;->k()V

    .line 629
    :cond_b
    invoke-direct {p0}, Lcn/nubia/camera/videomaker/k;->I()V

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090051 -> :sswitch_6
        0x7f09009c -> :sswitch_5
        0x7f090100 -> :sswitch_4
        0x7f09023f -> :sswitch_3
        0x7f090252 -> :sswitch_2
        0x7f0902b4 -> :sswitch_1
        0x7f0902e3 -> :sswitch_0
    .end sparse-switch
.end method
