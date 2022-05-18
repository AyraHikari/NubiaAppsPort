.class public Lcom/zte/camera/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/zte/camera/a/a/b$a;
.implements Lcom/zte/camera/a/a/i$a;
.implements Lcom/zte/camera/c/a;
.implements Lcom/zte/camera/ui/common/VlogCountDownButton$a;
.implements Lcom/zte/camera/ui/common/VlogProgressBar$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/camera/b/b$b;,
        Lcom/zte/camera/b/b$a;
    }
.end annotation


# instance fields
.field private A:Lcom/zte/camera/ui/b/c/b;

.field private B:Lcom/zte/camera/b/a;

.field private C:Lcom/zte/camera/b/b$a;

.field private D:Landroid/app/Activity;

.field private E:Landroid/view/View;

.field private F:Lcom/zte/camera/a/c;

.field private G:Landroid/opengl/GLSurfaceView;

.field private H:Lcom/zte/camera/a/c$a;

.field private I:Lcom/android/preference/IconListPreference;

.field private J:Lcom/zte/camera/b/b$b;

.field private K:Landroid/graphics/Bitmap;

.field private L:Z

.field private a:Landroid/widget/TextView;

.field private b:Lcom/zte/camera/ui/common/StopButton;

.field private c:Lcom/zte/camera/ui/common/RotateImageView;

.field private d:Lcom/zte/camera/ui/common/RotateImageView;

.field private e:Lcom/zte/camera/ui/common/RotateImageView;

.field private f:Landroid/widget/ProgressBar;

.field private g:Lcom/zte/camera/ui/common/RotateImageView;

.field private h:Lcom/zte/camera/ui/common/RotateImageView;

.field private i:Lcom/zte/camera/ui/common/RotateImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Lcom/zte/camera/ui/common/VlogCountDownButton;

.field private l:Landroid/view/View;

.field private m:Lcom/zte/camera/ui/common/VlogProgressBar;

.field private n:Lcom/zte/camera/ui/common/RotateViewGroup;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/TextureView;

.field private q:Lcom/zte/camera/ui/common/RotateViewGroup;

.field private r:Ljava/lang/String;

.field private s:[F

.field private t:Landroid/net/Uri;

.field private u:Lcom/zte/camera/ui/common/a/a;

.field private v:Lcom/zte/camera/a/a/i;

.field private w:Landroid/media/MediaPlayer;

.field private x:Lcom/zte/camera/a/a/b;

.field private y:Lcom/zte/camera/a/a/b;

.field private z:Lcom/zte/camera/ui/common/VlogDrawer;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/zte/camera/a/c;Landroid/opengl/GLSurfaceView;)V
    .locals 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 86
    iput-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    .line 88
    iput-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    .line 89
    iput-object v0, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    .line 90
    iput-object v0, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    .line 92
    iput-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    .line 98
    sget-object v1, Lcom/zte/camera/b/b$a;->a:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 103
    iput-object v0, p0, Lcom/zte/camera/b/b;->H:Lcom/zte/camera/a/c$a;

    .line 105
    iput-object v0, p0, Lcom/zte/camera/b/b;->I:Lcom/android/preference/IconListPreference;

    .line 106
    iput-object v0, p0, Lcom/zte/camera/b/b;->J:Lcom/zte/camera/b/b$b;

    .line 782
    iput-object v0, p0, Lcom/zte/camera/b/b;->K:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 952
    iput-boolean v0, p0, Lcom/zte/camera/b/b;->L:Z

    .line 123
    iput-object p1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    .line 124
    iput-object p2, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    .line 125
    iput-object p3, p0, Lcom/zte/camera/b/b;->F:Lcom/zte/camera/a/c;

    .line 126
    iput-object p4, p0, Lcom/zte/camera/b/b;->G:Landroid/opengl/GLSurfaceView;

    .line 127
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;)V

    .line 128
    invoke-direct {p0}, Lcom/zte/camera/b/b;->p()V

    .line 129
    invoke-direct {p0}, Lcom/zte/camera/b/b;->o()V

    .line 130
    invoke-direct {p0}, Lcom/zte/camera/b/b;->r()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/zte/camera/b/b$b;)V
    .locals 1

    const/4 v0, 0x0

    .line 135
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/zte/camera/b/b;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/zte/camera/a/c;Landroid/opengl/GLSurfaceView;)V

    .line 136
    iput-object p3, p0, Lcom/zte/camera/b/b;->J:Lcom/zte/camera/b/b$b;

    return-void
.end method

.method private A()V
    .locals 1

    .line 676
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private B()V
    .locals 3

    .line 680
    iget-object v0, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 681
    iget-object v0, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 683
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 684
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 685
    iget-object v0, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {v0, v2}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setVisibility(I)V

    .line 686
    invoke-direct {p0, v1}, Lcom/zte/camera/b/b;->b(Z)V

    return-void
.end method

.method private C()V
    .locals 2

    .line 702
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->a()V

    const/4 v0, 0x1

    .line 703
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->b(Z)V

    .line 704
    sget v0, Lcom/nubia/a/a$h;->p:I

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(I)V

    .line 705
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    sget v1, Lcom/nubia/a/a$d;->a:I

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setImageResource(I)V

    .line 706
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 707
    iget-object v0, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 708
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 710
    iget-object v0, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setVisibility(I)V

    .line 711
    iget-object v0, p0, Lcom/zte/camera/b/b;->d:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 713
    iget-object v0, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    .line 714
    iget-object v0, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    iget-object v0, p0, Lcom/zte/camera/b/b;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 717
    iget-object v0, p0, Lcom/zte/camera/b/b;->J:Lcom/zte/camera/b/b$b;

    if-eqz v0, :cond_0

    .line 718
    invoke-interface {v0}, Lcom/zte/camera/b/b$b;->a()V

    :cond_0
    return-void
.end method

.method private D()V
    .locals 3

    .line 723
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nubia/a/a$c;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 724
    iget-object v1, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 725
    iget-object v2, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v2}, Lcom/zte/camera/ui/common/VlogProgressBar;->getFocusSegmentX()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 726
    iget-object v0, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 728
    iget-object v0, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private E()V
    .locals 5

    .line 859
    iget-object v0, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget v1, Lcom/nubia/a/a$e;->o:I

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 864
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget v1, Lcom/nubia/a/a$e;->p:I

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "VlogModuleView"

    if-nez v0, :cond_1

    const-string v0, "ThumbnailView onClick uri == null"

    .line 866
    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 870
    :cond_1
    iget-object v2, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    .line 871
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "play uri="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 873
    check-cast v0, Landroid/net/Uri;

    invoke-static {v2, v0}, Lcom/zte/camera/d/f;->a(Landroid/app/Activity;Landroid/net/Uri;)V

    return-void
.end method

.method private F()V
    .locals 3

    .line 877
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 878
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pauseReviewPlayer mCurStatus : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VlogModuleView"

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 881
    iget-object v0, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v0, :cond_0

    .line 882
    invoke-virtual {v0}, Lcom/zte/camera/a/a/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "pause failed:"

    .line 885
    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 886
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private G()V
    .locals 3

    const-string v0, "VlogModuleView"

    .line 892
    iget-object v1, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_1

    .line 894
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeReviewPlayer mCurStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    iget-object v1, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 896
    iget-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v2, Lcom/zte/camera/b/b$a;->e:Lcom/zte/camera/b/b$a;

    if-eq v1, v2, :cond_0

    .line 897
    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    invoke-virtual {v1}, Lcom/zte/camera/a/a/b;->b()V

    .line 898
    sget-object v1, Lcom/zte/camera/b/b$a;->d:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    goto :goto_0

    .line 900
    :cond_0
    sget-object v1, Lcom/zte/camera/b/b$a;->e:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 902
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resumeReviewPlayer after mCurStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "resumeReviewPlayer failed:"

    .line 904
    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private H()V
    .locals 3

    const-string v0, "VlogModuleView"

    .line 911
    iget-object v1, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_1

    .line 913
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReviewPlayer mCurStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 914
    iget-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v2, Lcom/zte/camera/b/b$a;->f:Lcom/zte/camera/b/b$a;

    if-ne v1, v2, :cond_0

    .line 915
    sget-object v1, Lcom/zte/camera/b/b$a;->e:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 916
    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    invoke-virtual {v1}, Lcom/zte/camera/a/a/b;->d()V

    .line 917
    iget-object v1, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    goto :goto_0

    .line 919
    :cond_0
    sget-object v1, Lcom/zte/camera/b/b$a;->d:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 920
    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/zte/camera/a/a/b;->b(I)V

    .line 922
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startReviewPlayer after mCurStatus : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "start failed:"

    .line 924
    invoke-static {v0, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 925
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private I()V
    .locals 3

    .line 931
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    const-string v1, "VlogModuleView"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 933
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopReviewPlayer mCurStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "stopReviewPlayer failed:"

    .line 936
    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 941
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v0, :cond_1

    .line 943
    :try_start_1
    invoke-virtual {v0}, Lcom/zte/camera/a/a/b;->d()V

    .line 944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mReviewAudioMediaPlayer mCurStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "stop reviewAudioMediaPlayer failed:"

    .line 946
    invoke-static {v1, v2}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 947
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private J()V
    .locals 8

    .line 993
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getRecordedNum()I

    move-result v0

    if-nez v0, :cond_0

    .line 994
    invoke-direct {p0}, Lcom/zte/camera/b/b;->K()V

    return-void

    .line 997
    :cond_0
    sget v2, Lcom/nubia/a/a$h;->r:I

    sget v3, Lcom/nubia/a/a$h;->q:I

    sget v4, Lcom/nubia/a/a$h;->j:I

    new-instance v5, Lcom/zte/camera/b/-$$Lambda$b$8fduypVbUWVgdN0oLWCLJiTDnbg;

    invoke-direct {v5, p0}, Lcom/zte/camera/b/-$$Lambda$b$8fduypVbUWVgdN0oLWCLJiTDnbg;-><init>(Lcom/zte/camera/b/b;)V

    sget v6, Lcom/nubia/a/a$h;->g:I

    const/4 v7, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/zte/camera/b/b;->a(IIILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return-void
.end method

.method private K()V
    .locals 2

    const-string v0, "VlogModuleView"

    const-string v1, "backToModuleSelectMode"

    .line 1003
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1004
    invoke-direct {p0}, Lcom/zte/camera/b/b;->I()V

    .line 1005
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v0, :cond_0

    .line 1006
    invoke-virtual {v0}, Lcom/zte/camera/a/a/i;->b()V

    .line 1009
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->C()V

    const/4 v0, 0x0

    .line 1010
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->e(Z)V

    .line 1012
    sget-object v0, Lcom/zte/camera/b/b$a;->a:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 1013
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 1014
    invoke-virtual {v0, v1}, Lcom/zte/camera/b/a;->b(Z)V

    .line 1017
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    if-eqz v0, :cond_2

    .line 1018
    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->d()V

    :cond_2
    return-void
.end method

.method private L()V
    .locals 2

    .line 1058
    invoke-direct {p0}, Lcom/zte/camera/b/b;->O()Ljava/lang/String;

    move-result-object v0

    .line 1059
    iget-object v1, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 1063
    :cond_0
    iput-object v0, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    .line 1064
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->b(Ljava/lang/String;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/b/b;->s:[F

    .line 1065
    iget-object v1, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v1, v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->setProgressBarsArray([F)V

    return-void
.end method

.method private M()I
    .locals 1

    .line 1083
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->getFocusSegment()I

    move-result v0

    return v0
.end method

.method private N()V
    .locals 3

    .line 1087
    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result v0

    .line 1088
    invoke-direct {p0}, Lcom/zte/camera/b/b;->F()V

    .line 1089
    sget-object v1, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    iput-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 1090
    iget-object v1, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v1}, Lcom/zte/camera/ui/common/VlogProgressBar;->c()V

    const/4 v1, 0x0

    .line 1091
    invoke-direct {p0, v1}, Lcom/zte/camera/b/b;->c(Z)V

    .line 1093
    iget-object v1, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v1, :cond_0

    .line 1094
    iget-object v2, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/zte/camera/a/a/i;->a(Ljava/lang/String;I)V

    .line 1097
    :cond_0
    sget-object v0, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    return-void
.end method

.method private O()Ljava/lang/String;
    .locals 1

    .line 1101
    invoke-direct {p0}, Lcom/zte/camera/b/b;->n()Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private P()V
    .locals 1

    .line 1117
    iget-object v0, p0, Lcom/zte/camera/b/b;->u:Lcom/zte/camera/ui/common/a/a;

    if-eqz v0, :cond_0

    .line 1118
    invoke-virtual {v0}, Lcom/zte/camera/ui/common/a/a;->b()V

    :cond_0
    return-void
.end method

.method private synthetic Q()V
    .locals 1

    .line 659
    sget v0, Lcom/nubia/a/a$h;->s:I

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(I)V

    return-void
.end method

.method private synthetic R()V
    .locals 2

    .line 648
    iget-object v0, p0, Lcom/zte/camera/b/b;->f:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 649
    invoke-direct {p0}, Lcom/zte/camera/b/b;->B()V

    return-void
.end method

.method private synthetic S()V
    .locals 1

    .line 636
    sget v0, Lcom/nubia/a/a$h;->s:I

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(I)V

    return-void
.end method

.method private synthetic T()V
    .locals 3

    .line 630
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    iget-object v1, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/camera/a/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic U()V
    .locals 0

    return-void
.end method

.method private synthetic V()V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/zte/camera/b/b;->y()V

    return-void
.end method

.method private static a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
    .locals 2

    .line 786
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/4 v1, 0x0

    .line 788
    :try_start_0
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const-wide/16 p0, -0x1

    .line 789
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaMetadataRetriever;->getFrameAtTime(J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 800
    :catch_0
    throw p0

    .line 796
    :catch_1
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2

    :catch_2
    move-object p0, v1

    :catch_3
    :goto_0
    if-nez p0, :cond_0

    return-object v1

    .line 805
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    .line 806
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-le p1, p2, :cond_1

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    mul-float/2addr p1, p2

    .line 809
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    .line 810
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    const/4 v0, 0x1

    .line 811
    invoke-static {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method static synthetic a(Lcom/zte/camera/b/b;)Lcom/zte/camera/a/a/i;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    return-object p0
.end method

.method private a(I)V
    .locals 7

    .line 736
    iget-object v0, p0, Lcom/zte/camera/b/b;->u:Lcom/zte/camera/ui/common/a/a;

    if-eqz v0, :cond_0

    .line 737
    invoke-virtual {v0}, Lcom/zte/camera/ui/common/a/a;->b()V

    .line 740
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 741
    invoke-virtual {v0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 742
    new-instance p1, Lcom/zte/camera/ui/common/a/a;

    iget-object v2, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/16 v4, 0x10e

    const/4 v5, 0x0

    const/16 v6, 0xbb8

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/zte/camera/ui/common/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;IZI)V

    iput-object p1, p0, Lcom/zte/camera/b/b;->u:Lcom/zte/camera/ui/common/a/a;

    .line 743
    sget v0, Lcom/nubia/a/a$d;->c:I

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/a/a;->b(I)V

    .line 744
    iget-object p1, p0, Lcom/zte/camera/b/b;->u:Lcom/zte/camera/ui/common/a/a;

    invoke-static {}, Lcom/zte/camera/d/e;->a()I

    move-result v0

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lcom/zte/camera/d/e;->a(F)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/a/a;->a(I)V

    .line 745
    iget-object p1, p0, Lcom/zte/camera/b/b;->u:Lcom/zte/camera/ui/common/a/a;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/a/a;->a()V

    :cond_1
    return-void
.end method

.method private a(IIILjava/lang/Runnable;ILjava/lang/Runnable;)V
    .locals 9

    .line 1123
    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    .line 1124
    invoke-static {}, Lcom/zte/camera/ui/a/b;->a()Lcom/zte/camera/ui/a/b;

    move-result-object v0

    .line 1125
    invoke-virtual {v1, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 1126
    invoke-virtual {v1, p2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1127
    invoke-virtual {v1, p5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v2, 0x0

    move-object v6, p4

    move-object v8, p6

    .line 1124
    invoke-virtual/range {v0 .. v8}, Lcom/zte/camera/ui/a/b;->a(Landroid/app/Activity;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    const-string v0, "VlogModuleView"

    const-string v1, "init vlog effect controller"

    .line 315
    invoke-static {v0, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/zte/camera/ui/b/c/b;->a()Lcom/zte/camera/ui/b/c/b;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/b/b;->A:Lcom/zte/camera/ui/b/c/b;

    .line 317
    new-instance v0, Lcom/zte/camera/b/a;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/zte/camera/b/a;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    .line 318
    invoke-virtual {v0}, Lcom/zte/camera/b/a;->a()Z

    .line 319
    iget-object p1, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/camera/b/a;->b(I)Z

    return-void
.end method

.method private a(Landroid/net/Uri;I)V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;Landroid/net/Uri;I)Landroid/graphics/Bitmap;

    move-result-object p2

    iput-object p2, p0, Lcom/zte/camera/b/b;->K:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 820
    :cond_1
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "buildVideoThumbnail err, videoFrame= "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/zte/camera/b/b;->K:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", uri:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mBuildThumbnail:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/zte/camera/b/b;->K:Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VlogModuleView"

    invoke-static {p2, p1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic a(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 408
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 410
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 412
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 415
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reviewVlogSegment failed: path="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VlogModuleView"

    invoke-static {v1, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    :goto_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 422
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    .line 423
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    sget v1, Lcom/nubia/a/a$b;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 690
    invoke-direct {p0}, Lcom/zte/camera/b/b;->P()V

    .line 691
    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->b(Z)V

    .line 692
    iget-object p1, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 693
    iget-object p1, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 694
    iget-object p1, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 695
    iget-object p1, p0, Lcom/zte/camera/b/b;->d:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 696
    iget-object p1, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 697
    iget-object p1, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setVisibility(I)V

    .line 698
    invoke-direct {p0}, Lcom/zte/camera/b/b;->D()V

    return-void
.end method

.method private static b(Landroid/content/Context;)Landroid/view/Display;
    .locals 1

    .line 1136
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 1137
    check-cast p0, Landroid/app/Activity;

    .line 1138
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v0, "window"

    .line 1140
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    :goto_0
    if-eqz p0, :cond_1

    .line 1143
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic b(Lcom/zte/camera/b/b;)Lcom/zte/camera/b/a;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    return-object p0
.end method

.method private b(Landroid/net/Uri;)V
    .locals 3

    .line 427
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 428
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 430
    :try_start_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v0, v1, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 432
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 435
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reviewVlogSegment failed: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "VlogModuleView"

    invoke-static {v1, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 441
    :goto_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 442
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    .line 443
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    sget v1, Lcom/nubia/a/a$b;->a:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private synthetic b(Landroid/view/View;)V
    .locals 7

    .line 542
    sget v1, Lcom/nubia/a/a$h;->f:I

    sget v2, Lcom/nubia/a/a$h;->e:I

    sget v3, Lcom/nubia/a/a$h;->h:I

    new-instance v4, Lcom/zte/camera/b/-$$Lambda$b$yn63gUGSB_mgVK1-jfKAwTfPor0;

    invoke-direct {v4, p0}, Lcom/zte/camera/b/-$$Lambda$b$yn63gUGSB_mgVK1-jfKAwTfPor0;-><init>(Lcom/zte/camera/b/b;)V

    sget v5, Lcom/nubia/a/a$h;->b:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/zte/camera/b/b;->a(IIILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return-void
.end method

.method private b(Z)V
    .locals 1

    .line 732
    iget-object v0, p0, Lcom/zte/camera/b/b;->n:Lcom/zte/camera/ui/common/RotateViewGroup;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    return-void
.end method

.method private b(Ljava/lang/String;)[F
    .locals 1

    .line 1113
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-static {p1}, Lcom/zte/camera/ui/b/c/d;->b(Ljava/lang/String;)I

    move-result p1

    invoke-static {v0, p1}, Lcom/zte/camera/d/f;->a(Landroid/content/Context;I)[F

    move-result-object p1

    return-object p1
.end method

.method private static c(Landroid/content/Context;)I
    .locals 1

    .line 1149
    invoke-static {p0}, Lcom/zte/camera/b/b;->b(Landroid/content/Context;)Landroid/view/Display;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1153
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1154
    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 1155
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method static synthetic c(Lcom/zte/camera/b/b;)Landroid/media/MediaPlayer;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private synthetic c(Landroid/net/Uri;)V
    .locals 0

    .line 654
    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->b(Landroid/net/Uri;)V

    return-void
.end method

.method private synthetic c(Landroid/view/View;)V
    .locals 0

    .line 536
    invoke-direct {p0}, Lcom/zte/camera/b/b;->w()V

    return-void
.end method

.method private c(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 751
    sget v0, Lcom/nubia/a/a$h;->a:I

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(I)V

    goto :goto_0

    .line 753
    :cond_0
    sget v0, Lcom/nubia/a/a$h;->p:I

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(I)V

    :goto_0
    xor-int/lit8 v0, p1, 0x1

    .line 756
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->b(Z)V

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 758
    iget-object p1, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 759
    iget-object p1, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 760
    iget-object p1, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 761
    iget-object p1, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setVisibility(I)V

    goto :goto_1

    .line 764
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 765
    iget-object p1, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 766
    iget-object p1, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    sget v0, Lcom/nubia/a/a$d;->f:I

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/StopButton;->setImageResource(I)V

    .line 767
    iget-object p1, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 768
    iget-object p1, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setVisibility(I)V

    .line 770
    :goto_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 771
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {p1, v1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    .line 772
    iget-object p1, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private synthetic d(Landroid/view/View;)V
    .locals 0

    .line 525
    invoke-direct {p0}, Lcom/zte/camera/b/b;->v()V

    .line 526
    sget-object p1, Lcom/zte/camera/b/b$a;->f:Lcom/zte/camera/b/b$a;

    iput-object p1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    return-void
.end method

.method static synthetic d(Lcom/zte/camera/b/b;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/zte/camera/b/b;->H()V

    return-void
.end method

.method private d(Z)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/VlogDrawer;->setVisibility(I)V

    if-nez p1, :cond_1

    .line 778
    iget-object p1, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogDrawer;->c()V

    :cond_1
    return-void
.end method

.method static synthetic e(Lcom/zte/camera/b/b;)Lcom/zte/camera/ui/common/RotateViewGroup;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    return-object p0
.end method

.method private synthetic e(Landroid/view/View;)V
    .locals 7

    .line 513
    sget v1, Lcom/nubia/a/a$h;->d:I

    sget v2, Lcom/nubia/a/a$h;->c:I

    sget v3, Lcom/nubia/a/a$h;->h:I

    new-instance v4, Lcom/zte/camera/b/-$$Lambda$b$cntPLkp4JQuL-tWoV9pxFqib-q8;

    invoke-direct {v4, p0}, Lcom/zte/camera/b/-$$Lambda$b$cntPLkp4JQuL-tWoV9pxFqib-q8;-><init>(Lcom/zte/camera/b/b;)V

    sget v5, Lcom/nubia/a/a$h;->b:I

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/zte/camera/b/b;->a(IIILjava/lang/Runnable;ILjava/lang/Runnable;)V

    return-void
.end method

.method private e(Z)V
    .locals 4

    .line 1069
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/zte/camera/ui/common/VlogDrawer;->setVisibility(I)V

    if-eqz p1, :cond_1

    .line 1071
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->c()V

    .line 1073
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    if-eqz p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1074
    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->b(Z)V

    if-eqz p1, :cond_3

    .line 1076
    sget p1, Lcom/nubia/a/a$h;->p:I

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->a(I)V

    goto :goto_1

    .line 1078
    :cond_3
    invoke-direct {p0}, Lcom/zte/camera/b/b;->P()V

    :goto_1
    return-void
.end method

.method private synthetic f(Landroid/view/View;)V
    .locals 6

    .line 478
    iget-object p1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v0, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    if-eq p1, v0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result p1

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crrentTemplateSeg ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",TYPE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VlogModuleView"

    invoke-static {v2, v0}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    invoke-virtual {p0}, Lcom/zte/camera/b/b;->l()I

    move-result v3

    invoke-virtual {v0, v3, p1}, Lcom/zte/camera/b/a;->b(II)V

    .line 487
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v0, :cond_2

    .line 488
    iget-object v3, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    const/16 v4, 0x780

    const/16 v5, 0x438

    invoke-virtual {v0, v3, p1, v4, v5}, Lcom/zte/camera/a/a/i;->a(Ljava/lang/String;III)Z

    move-result v0

    if-nez v0, :cond_1

    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start encoder failed ,because encoder hasn\'t completed previous recoring.crrentTemplateSeg ="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/zte/camera/d/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 493
    :cond_1
    sget-object v0, Lcom/zte/camera/b/b$a;->c:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 494
    iget-object v0, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    iget-object v1, p0, Lcom/zte/camera/b/b;->s:[F

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/VlogCountDownButton;->a(F)V

    const/4 v0, 0x1

    .line 495
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->c(Z)V

    .line 496
    invoke-direct {p0}, Lcom/zte/camera/b/b;->x()V

    .line 497
    iget-object v1, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    if-eqz v1, :cond_2

    .line 498
    invoke-virtual {v1, v0}, Lcom/zte/camera/b/a;->a(Z)V

    .line 501
    :cond_2
    iget-object v0, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    if-eqz v0, :cond_3

    .line 502
    invoke-virtual {v0, p1}, Lcom/zte/camera/a/a/b;->b(I)V

    :cond_3
    return-void
.end method

.method private synthetic g(Landroid/view/View;)V
    .locals 0

    .line 472
    invoke-direct {p0}, Lcom/zte/camera/b/b;->A()V

    return-void
.end method

.method private synthetic h(Landroid/view/View;)V
    .locals 0

    .line 466
    invoke-virtual {p0}, Lcom/zte/camera/b/b;->g()V

    return-void
.end method

.method private synthetic i(Landroid/view/View;)V
    .locals 0

    .line 461
    invoke-direct {p0}, Lcom/zte/camera/b/b;->E()V

    return-void
.end method

.method private synthetic j(Landroid/view/View;)V
    .locals 1

    .line 376
    iget-object p1, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 377
    invoke-direct {p0}, Lcom/zte/camera/b/b;->F()V

    .line 378
    iget-object p1, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 380
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->G()V

    .line 381
    iget-object p1, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public static synthetic lambda$-RvHNPLYEI9wS4rivvkHPG5-ZgU(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->d(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$6dMcFMGrderlUeoEsfcJPvq3rvg(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->S()V

    return-void
.end method

.method public static synthetic lambda$8Kwh3J0PKsfYiqaXz7uYw4gGykY(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->e(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$8fduypVbUWVgdN0oLWCLJiTDnbg(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->K()V

    return-void
.end method

.method public static synthetic lambda$BThwQHvwpQyajSMkAWjvDD5OYDk(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->j(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$CNSi9qWVCjMc2YjZCBeLIwQJykw(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->w()V

    return-void
.end method

.method public static synthetic lambda$MJi8cchLprFvIVnwQR7OSv15D0Q(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->R()V

    return-void
.end method

.method public static synthetic lambda$NAml4ZS5YDUmBbBjdQLcLuHOc-8(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->f(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$OVPIbMdMGMNUW89leTxDDFWA1l0(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->h(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$QlvErhSYI2XbtDv4q97C6fS805Y(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->T()V

    return-void
.end method

.method public static synthetic lambda$XcdhrqrmareiFOmvw0DWfyxtMzw(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->c(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$_NMDXBXezgifhddL1vsLK7_qvmM(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcom/zte/camera/b/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$cntPLkp4JQuL-tWoV9pxFqib-q8(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->N()V

    return-void
.end method

.method public static synthetic lambda$dd_VpaQPpF0F97hA6KrZCAiQ-d4(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->b(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$fsHGSkIU9i4MO10qIP-dHz1uGZo()V
    .locals 0

    invoke-static {}, Lcom/zte/camera/b/b;->U()V

    return-void
.end method

.method public static synthetic lambda$jNmNAQPBd2l5VIqaZfRSmXZqmOA(Lcom/zte/camera/b/b;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->c(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic lambda$m4huK_t943qxcgAZZpLQP6_MKp0(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->y()V

    return-void
.end method

.method public static synthetic lambda$sS0my_aZCRzS3G5GXvSgtRVHKfs(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->g(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$scMge_iyRV8RPJFZlbrVOWaHV04(Lcom/zte/camera/b/b;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/zte/camera/b/b;->i(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$tpaabRRcrOapikh57MiNA5nbU_U(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->Q()V

    return-void
.end method

.method public static synthetic lambda$yn63gUGSB_mgVK1-jfKAwTfPor0(Lcom/zte/camera/b/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/zte/camera/b/b;->V()V

    return-void
.end method

.method private n()Lcom/android/preference/IconListPreference;
    .locals 5

    .line 162
    iget-object v0, p0, Lcom/zte/camera/b/b;->I:Lcom/android/preference/IconListPreference;

    if-nez v0, :cond_0

    .line 163
    new-instance v0, Lcom/android/preference/e;

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/preference/e;-><init>(Landroid/content/Context;)V

    .line 164
    sget v1, Lcom/nubia/a/a$k;->a:I

    iget-object v2, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/4 v3, 0x0

    const-string v4, "vlog"

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/preference/e;->a(ILandroid/content/SharedPreferences;)Lcom/android/preference/a;

    move-result-object v0

    check-cast v0, Lcom/android/preference/PreferenceGroup;

    .line 165
    invoke-virtual {v0}, Lcom/android/preference/PreferenceGroup;->c()V

    const-string v1, "pref_camera_vlog_module_key"

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/preference/PreferenceGroup;->a(Ljava/lang/String;)Lcom/android/preference/ListPreference;

    move-result-object v0

    check-cast v0, Lcom/android/preference/IconListPreference;

    iput-object v0, p0, Lcom/zte/camera/b/b;->I:Lcom/android/preference/IconListPreference;

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->I:Lcom/android/preference/IconListPreference;

    return-object v0
.end method

.method private o()V
    .locals 4

    .line 186
    invoke-virtual {p0}, Lcom/zte/camera/b/b;->l()I

    move-result v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTemplateIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VlogModuleView"

    invoke-static {v2, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget-object v1, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_0

    .line 190
    invoke-direct {p0}, Lcom/zte/camera/b/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/camera/b/b;->b(Ljava/lang/String;)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/camera/a/a/b;->a(I[FZ)Z

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_1

    .line 193
    invoke-direct {p0}, Lcom/zte/camera/b/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/camera/b/b;->b(Ljava/lang/String;)[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/camera/a/a/b;->a(I[FZ)Z

    :cond_1
    return-void
.end method

.method private p()V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-nez v0, :cond_0

    .line 199
    new-instance v0, Lcom/zte/camera/a/a/i;

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/camera/a/a/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    .line 200
    invoke-virtual {v0, p0}, Lcom/zte/camera/a/a/i;->a(Lcom/zte/camera/a/a/i$a;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    if-nez v0, :cond_1

    .line 203
    new-instance v0, Lcom/zte/camera/a/a/b;

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/camera/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    .line 205
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-nez v0, :cond_2

    .line 206
    new-instance v0, Lcom/zte/camera/a/a/b;

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/camera/a/a/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    .line 207
    invoke-virtual {v0, p0}, Lcom/zte/camera/a/a/b;->a(Lcom/zte/camera/a/a/b$a;)V

    .line 210
    :cond_2
    new-instance v0, Lcom/zte/camera/b/b$1;

    invoke-direct {v0, p0}, Lcom/zte/camera/b/b$1;-><init>(Lcom/zte/camera/b/b;)V

    iput-object v0, p0, Lcom/zte/camera/b/b;->H:Lcom/zte/camera/a/c$a;

    .line 260
    iget-object v1, p0, Lcom/zte/camera/b/b;->F:Lcom/zte/camera/a/c;

    if-eqz v1, :cond_3

    .line 261
    invoke-virtual {v1, v0}, Lcom/zte/camera/a/c;->a(Lcom/zte/camera/a/c$a;)V

    :cond_3
    return-void
.end method

.method private q()V
    .locals 6

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/zte/camera/ui/common/b;

    .line 280
    iget-object v2, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/camera/b/b;->d:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/camera/b/b;->h:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    const/4 v4, 0x6

    aput-object v2, v1, v4

    move v2, v3

    :goto_0
    if-ge v2, v0, :cond_1

    .line 286
    aget-object v4, v1, v2

    if-eqz v4, :cond_0

    const/16 v5, 0x10e

    .line 288
    invoke-interface {v4, v5, v3}, Lcom/zte/camera/ui/common/b;->a(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private r()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nubia/a/a$f;->e:I

    iget-object v2, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 299
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->L:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateViewGroup;

    iput-object v0, p0, Lcom/zte/camera/b/b;->n:Lcom/zte/camera/ui/common/RotateViewGroup;

    .line 300
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->e:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    .line 301
    invoke-direct {p0}, Lcom/zte/camera/b/b;->t()V

    .line 302
    sget v0, Lcom/nubia/a/a$e;->e:I

    sget v1, Lcom/nubia/a/a$e;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/zte/camera/b/b;->a(II)V

    .line 303
    invoke-direct {p0}, Lcom/zte/camera/b/b;->s()V

    .line 304
    invoke-direct {p0}, Lcom/zte/camera/b/b;->z()V

    .line 305
    invoke-direct {p0}, Lcom/zte/camera/b/b;->u()V

    .line 306
    invoke-direct {p0, v3}, Lcom/zte/camera/b/b;->d(Z)V

    .line 307
    sget-object v0, Lcom/zte/camera/b/b$a;->a:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 308
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {v0, v3}, Lcom/zte/camera/b/a;->b(Z)V

    .line 311
    :cond_1
    invoke-direct {p0}, Lcom/zte/camera/b/b;->q()V

    return-void
.end method

.method private s()V
    .locals 3

    .line 323
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/nubia/a/a$f;->f:I

    iget-object v2, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 324
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->v:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/VlogDrawer;

    iput-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    .line 325
    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-direct {p0}, Lcom/zte/camera/b/b;->n()Lcom/android/preference/IconListPreference;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p0}, Lcom/zte/camera/ui/common/VlogDrawer;->a(Landroid/content/Context;Lcom/android/preference/IconListPreference;Lcom/zte/camera/c/a;)V

    return-void
.end method

.method private t()V
    .locals 4

    .line 329
    iget-object v0, p0, Lcom/zte/camera/b/b;->n:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 330
    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    invoke-static {v1}, Lcom/zte/camera/b/b;->c(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/high16 v3, 0x43dc0000    # 440.0f

    invoke-virtual {p0, v2, v3}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 331
    iget-object v1, p0, Lcom/zte/camera/b/b;->n:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {v1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private u()V
    .locals 2

    .line 335
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    .line 336
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->J:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    .line 338
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->Q:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateViewGroup;

    iput-object v0, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    .line 345
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->K:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    .line 346
    new-instance v1, Lcom/zte/camera/b/b$2;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/b$2;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 375
    iget-object v0, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$BThwQHvwpQyajSMkAWjvDD5OYDk;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$BThwQHvwpQyajSMkAWjvDD5OYDk;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private v()V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/zte/camera/b/b;->f:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 389
    invoke-direct {p0, v1}, Lcom/zte/camera/b/b;->b(Z)V

    .line 390
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    iget-object v1, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/camera/a/a/i;->a(Ljava/lang/String;)V

    return-void
.end method

.method private w()V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Lcom/zte/camera/a/a/i;->b()V

    .line 398
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->K()V

    .line 399
    iget-object v0, p0, Lcom/zte/camera/b/b;->t:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/zte/camera/b/b;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private x()V
    .locals 1

    .line 403
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->b()V

    return-void
.end method

.method private y()V
    .locals 2

    .line 447
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v0, :cond_0

    .line 448
    iget-object v1, p0, Lcom/zte/camera/b/b;->t:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/zte/camera/a/a/i;->b(Landroid/net/Uri;)V

    .line 450
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->K()V

    return-void
.end method

.method private z()V
    .locals 3

    .line 454
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->h:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 455
    iget-object v1, p0, Lcom/zte/camera/b/b;->G:Landroid/opengl/GLSurfaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x4

    .line 456
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->R:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    .line 461
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$scMge_iyRV8RPJFZlbrVOWaHV04;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$scMge_iyRV8RPJFZlbrVOWaHV04;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->O:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->a:Landroid/widget/TextView;

    .line 465
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$OVPIbMdMGMNUW89leTxDDFWA1l0;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$OVPIbMdMGMNUW89leTxDDFWA1l0;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->w:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->h:Lcom/zte/camera/ui/common/RotateImageView;

    .line 471
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$sS0my_aZCRzS3G5GXvSgtRVHKfs;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$sS0my_aZCRzS3G5GXvSgtRVHKfs;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 476
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->P:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/StopButton;

    iput-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    .line 477
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$NAml4ZS5YDUmBbBjdQLcLuHOc-8;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$NAml4ZS5YDUmBbBjdQLcLuHOc-8;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 507
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->H:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/VlogProgressBar;

    iput-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    .line 508
    invoke-virtual {v0, p0}, Lcom/zte/camera/ui/common/VlogProgressBar;->setProgressBarListener(Lcom/zte/camera/ui/common/VlogProgressBar$a;)V

    .line 511
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->I:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    .line 512
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$8Kwh3J0PKsfYiqaXz7uYw4gGykY;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$8Kwh3J0PKsfYiqaXz7uYw4gGykY;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 519
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->t:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/VlogCountDownButton;

    iput-object v0, p0, Lcom/zte/camera/b/b;->k:Lcom/zte/camera/ui/common/VlogCountDownButton;

    .line 520
    invoke-virtual {v0, p0}, Lcom/zte/camera/ui/common/VlogCountDownButton;->setCountDownListener(Lcom/zte/camera/ui/common/VlogCountDownButton$a;)V

    .line 523
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->r:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    .line 524
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$-RvHNPLYEI9wS4rivvkHPG5-ZgU;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$-RvHNPLYEI9wS4rivvkHPG5-ZgU;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 530
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->s:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/zte/camera/b/b;->f:Landroid/widget/ProgressBar;

    .line 531
    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    sget v2, Lcom/nubia/a/a$b;->b:I

    invoke-static {v1, v2}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 534
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->M:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    .line 535
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$XcdhrqrmareiFOmvw0DWfyxtMzw;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$XcdhrqrmareiFOmvw0DWfyxtMzw;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 540
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->u:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->c:Lcom/zte/camera/ui/common/RotateImageView;

    .line 541
    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$dd_VpaQPpF0F97hA6KrZCAiQ-d4;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$dd_VpaQPpF0F97hA6KrZCAiQ-d4;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 551
    iget-object v0, p0, Lcom/zte/camera/b/b;->l:Landroid/view/View;

    sget v1, Lcom/nubia/a/a$e;->N:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/camera/ui/common/RotateImageView;

    iput-object v0, p0, Lcom/zte/camera/b/b;->d:Lcom/zte/camera/ui/common/RotateImageView;

    .line 552
    sget-object v1, Lcom/zte/camera/b/-$$Lambda$b$_NMDXBXezgifhddL1vsLK7_qvmM;->INSTANCE:Lcom/zte/camera/b/-$$Lambda$b$_NMDXBXezgifhddL1vsLK7_qvmM;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;F)I
    .locals 0

    .line 1131
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p2, p1

    float-to-int p1, p2

    return p1
.end method

.method public a()V
    .locals 2

    .line 670
    iget-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v1, Lcom/zte/camera/b/b$a;->c:Lcom/zte/camera/b/b$a;

    if-eq v0, v1, :cond_0

    .line 671
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 268
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/high16 v2, 0x43170000    # 151.0f

    invoke-virtual {p0, v1, v2}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 270
    iget-object v1, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/high16 v2, 0x42400000    # 48.0f

    invoke-virtual {p0, v1, v2}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 271
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 273
    iget-object p1, p0, Lcom/zte/camera/b/b;->E:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 274
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 275
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    const/high16 v1, 0x42ce0000    # 103.0f

    invoke-virtual {p0, v0, v1}, Lcom/zte/camera/b/b;->a(Landroid/content/Context;F)I

    move-result v0

    iput v0, p2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 276
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1050
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 1051
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 1052
    iget p1, p1, Landroid/graphics/Rect;->top:I

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1053
    iget-object p1, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {p1, v0}, Lcom/zte/camera/ui/common/RotateViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/net/Uri;)V
    .locals 2

    .line 643
    iput-object p1, p0, Lcom/zte/camera/b/b;->t:Landroid/net/Uri;

    if-eqz p1, :cond_0

    const/16 v0, 0x780

    .line 645
    invoke-direct {p0, p1, v0}, Lcom/zte/camera/b/b;->a(Landroid/net/Uri;I)V

    .line 647
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$MJi8cchLprFvIVnwQR7OSv15D0Q;

    invoke-direct {v1, p0}, Lcom/zte/camera/b/-$$Lambda$b$MJi8cchLprFvIVnwQR7OSv15D0Q;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    if-eqz p1, :cond_1

    .line 652
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->e()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 653
    iget-object v0, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance v1, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;

    invoke-direct {v1, p0, p1}, Lcom/zte/camera/b/-$$Lambda$b$jNmNAQPBd2l5VIqaZfRSmXZqmOA;-><init>(Lcom/zte/camera/b/b;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 658
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance v0, Lcom/zte/camera/b/-$$Lambda$b$tpaabRRcrOapikh57MiNA5nbU_U;

    invoke-direct {v0, p0}, Lcom/zte/camera/b/-$$Lambda$b$tpaabRRcrOapikh57MiNA5nbU_U;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V
    .locals 3

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 828
    iget-object v0, p0, Lcom/zte/camera/b/b;->K:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    move-object p2, v0

    .line 831
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->J:Lcom/zte/camera/b/b$b;

    if-eqz v0, :cond_1

    .line 832
    invoke-interface {v0, p1, p2}, Lcom/zte/camera/b/b$b;->a(Landroid/net/Uri;Landroid/graphics/Bitmap;)V

    return-void

    .line 836
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_2

    .line 839
    invoke-virtual {v0, v2}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 843
    iget-object v0, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, p2, v1}, Lcom/zte/camera/ui/common/RotateImageView;->a(Landroid/graphics/Bitmap;Landroid/view/View;)V

    .line 845
    iget-object p2, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget v0, Lcom/nubia/a/a$e;->o:I

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setTag(ILjava/lang/Object;)V

    if-eqz p1, :cond_3

    .line 847
    iget-object p2, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget v0, Lcom/nubia/a/a$e;->p:I

    invoke-virtual {p2, v0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setTag(ILjava/lang/Object;)V

    goto :goto_0

    .line 850
    :cond_2
    sget p1, Lcom/nubia/a/a$d;->b:I

    invoke-virtual {v0, p1}, Lcom/zte/camera/ui/common/RotateImageView;->setImageResource(I)V

    .line 851
    iget-object p1, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {p1, v2}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 852
    iget-object p1, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget p2, Lcom/nubia/a/a$e;->o:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/zte/camera/ui/common/RotateImageView;->setTag(ILjava/lang/Object;)V

    .line 853
    iget-object p1, p0, Lcom/zte/camera/b/b;->i:Lcom/zte/camera/ui/common/RotateImageView;

    sget p2, Lcom/nubia/a/a$e;->p:I

    invoke-virtual {p1, p2, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setTag(ILjava/lang/Object;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    .line 622
    sget-object p2, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    iput-object p2, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 625
    iget-object p1, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    sget-object p2, Lcom/zte/camera/b/-$$Lambda$b$fsHGSkIU9i4MO10qIP-dHz1uGZo;->INSTANCE:Lcom/zte/camera/b/-$$Lambda$b$fsHGSkIU9i4MO10qIP-dHz1uGZo;

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    .line 628
    iget-object p1, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {p1}, Lcom/zte/camera/ui/common/VlogProgressBar;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 629
    iget-object p1, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance p2, Lcom/zte/camera/b/-$$Lambda$b$QlvErhSYI2XbtDv4q97C6fS805Y;

    invoke-direct {p2, p0}, Lcom/zte/camera/b/-$$Lambda$b$QlvErhSYI2XbtDv4q97C6fS805Y;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 634
    :cond_1
    iget-object p1, p0, Lcom/zte/camera/b/b;->p:Landroid/view/TextureView;

    new-instance p2, Lcom/zte/camera/b/-$$Lambda$b$6dMcFMGrderlUeoEsfcJPvq3rvg;

    invoke-direct {p2, p0}, Lcom/zte/camera/b/-$$Lambda$b$6dMcFMGrderlUeoEsfcJPvq3rvg;-><init>(Lcom/zte/camera/b/b;)V

    invoke-virtual {p1, p2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->a()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/zte/camera/b/b;->z:Lcom/zte/camera/ui/common/VlogDrawer;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogDrawer;->b()V

    .line 145
    iget-object v0, p0, Lcom/zte/camera/b/b;->w:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    invoke-direct {p0}, Lcom/zte/camera/b/b;->F()V

    .line 147
    iget-object v0, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v1, Lcom/zte/camera/b/b$a;->a:Lcom/zte/camera/b/b$a;

    if-eq v0, v1, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/zte/camera/b/b;->K()V

    :cond_0
    return-void
.end method

.method public e()Lcom/zte/camera/a/c$a;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/zte/camera/b/b;->H:Lcom/zte/camera/a/c$a;

    return-object v0
.end method

.method public f()V
    .locals 4

    .line 173
    invoke-virtual {p0}, Lcom/zte/camera/b/b;->l()I

    move-result v0

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentTemplateIndex ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VlogModuleView"

    invoke-static {v2, v1}, Lcom/zte/camera/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    iget-object v1, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    invoke-virtual {v1, v0}, Lcom/zte/camera/b/a;->b(I)Z

    .line 177
    iget-object v1, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_0

    .line 178
    invoke-direct {p0}, Lcom/zte/camera/b/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/camera/b/b;->b(Ljava/lang/String;)[F

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/camera/a/a/b;->a(I[FZ)Z

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/zte/camera/b/b;->x:Lcom/zte/camera/a/a/b;

    if-eqz v1, :cond_1

    .line 181
    invoke-direct {p0}, Lcom/zte/camera/b/b;->O()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/zte/camera/b/b;->b(Ljava/lang/String;)[F

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/zte/camera/a/a/b;->a(I[FZ)Z

    :cond_1
    return-void
.end method

.method public g()V
    .locals 2

    .line 559
    invoke-direct {p0}, Lcom/zte/camera/b/b;->L()V

    const/4 v0, 0x1

    .line 560
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->e(Z)V

    .line 561
    sget-object v0, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 562
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 563
    invoke-virtual {v0, v1}, Lcom/zte/camera/b/a;->b(Z)V

    .line 564
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    invoke-virtual {v0, v1}, Lcom/zte/camera/b/a;->c(I)Z

    :cond_0
    return-void
.end method

.method public h()Z
    .locals 2

    .line 569
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/StopButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    sget-object v1, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    if-ne v0, v1, :cond_0

    .line 570
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/StopButton;->performClick()Z

    move-result v0

    return v0

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 572
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateImageView;->performClick()Z

    move-result v0

    return v0

    .line 573
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2

    .line 574
    iget-object v0, p0, Lcom/zte/camera/b/b;->g:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/RotateImageView;->performClick()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 4

    .line 581
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 582
    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(Z)V

    .line 583
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    sget v3, Lcom/nubia/a/a$d;->d:I

    invoke-static {v0, v2, v3}, Lcom/zte/camera/d/e;->a(Landroid/content/Context;Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 585
    :cond_0
    invoke-direct {p0, v1}, Lcom/zte/camera/b/b;->c(Z)V

    .line 586
    iget-object v0, p0, Lcom/zte/camera/b/b;->D:Landroid/app/Activity;

    iget-object v2, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    sget v3, Lcom/nubia/a/a$d;->e:I

    invoke-static {v0, v2, v3}, Lcom/zte/camera/d/e;->a(Landroid/content/Context;Landroid/widget/ImageView;I)V

    .line 589
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    if-eqz v0, :cond_1

    .line 590
    invoke-virtual {v0}, Lcom/zte/camera/a/a/i;->a()V

    .line 591
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    if-eqz v0, :cond_1

    .line 592
    invoke-virtual {v0, v1}, Lcom/zte/camera/b/a;->a(Z)V

    .line 595
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->y:Lcom/zte/camera/a/a/b;

    if-eqz v0, :cond_2

    .line 596
    invoke-virtual {v0}, Lcom/zte/camera/a/a/b;->d()V

    :cond_2
    return-void
.end method

.method public j()V
    .locals 3

    .line 602
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->d()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 603
    iget-object v0, p0, Lcom/zte/camera/b/b;->m:Lcom/zte/camera/ui/common/VlogProgressBar;

    invoke-virtual {v0}, Lcom/zte/camera/ui/common/VlogProgressBar;->e()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 605
    iget-object v0, p0, Lcom/zte/camera/b/b;->e:Lcom/zte/camera/ui/common/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateImageView;->setVisibility(I)V

    .line 607
    :cond_0
    invoke-direct {p0}, Lcom/zte/camera/b/b;->D()V

    .line 608
    iget-object v0, p0, Lcom/zte/camera/b/b;->v:Lcom/zte/camera/a/a/i;

    iget-object v1, p0, Lcom/zte/camera/b/b;->r:Ljava/lang/String;

    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/zte/camera/a/a/i;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/camera/b/b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 610
    :cond_1
    iget-object v0, p0, Lcom/zte/camera/b/b;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 611
    invoke-direct {p0}, Lcom/zte/camera/b/b;->F()V

    .line 612
    iget-object v0, p0, Lcom/zte/camera/b/b;->q:Lcom/zte/camera/ui/common/RotateViewGroup;

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/RotateViewGroup;->setVisibility(I)V

    .line 613
    iget-object v0, p0, Lcom/zte/camera/b/b;->o:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 614
    iget-object v0, p0, Lcom/zte/camera/b/b;->b:Lcom/zte/camera/ui/common/StopButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/zte/camera/ui/common/StopButton;->setVisibility(I)V

    .line 615
    sget-object v0, Lcom/zte/camera/b/b$a;->b:Lcom/zte/camera/b/b$a;

    iput-object v0, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    .line 617
    :goto_0
    iget-object v0, p0, Lcom/zte/camera/b/b;->B:Lcom/zte/camera/b/a;

    invoke-direct {p0}, Lcom/zte/camera/b/b;->M()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/zte/camera/b/a;->c(I)Z

    return-void
.end method

.method public k()V
    .locals 9

    .line 972
    sget-object v0, Lcom/zte/camera/b/b$3;->a:[I

    iget-object v1, p0, Lcom/zte/camera/b/b;->C:Lcom/zte/camera/b/b$a;

    invoke-virtual {v1}, Lcom/zte/camera/b/b$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 984
    :cond_0
    sget v3, Lcom/nubia/a/a$h;->m:I

    sget v4, Lcom/nubia/a/a$h;->l:I

    sget v5, Lcom/nubia/a/a$h;->k:I

    new-instance v6, Lcom/zte/camera/b/-$$Lambda$b$CNSi9qWVCjMc2YjZCBeLIwQJykw;

    invoke-direct {v6, p0}, Lcom/zte/camera/b/-$$Lambda$b$CNSi9qWVCjMc2YjZCBeLIwQJykw;-><init>(Lcom/zte/camera/b/b;)V

    sget v7, Lcom/nubia/a/a$h;->i:I

    new-instance v8, Lcom/zte/camera/b/-$$Lambda$b$m4huK_t943qxcgAZZpLQP6_MKp0;

    invoke-direct {v8, p0}, Lcom/zte/camera/b/-$$Lambda$b$m4huK_t943qxcgAZZpLQP6_MKp0;-><init>(Lcom/zte/camera/b/b;)V

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/zte/camera/b/b;->a(IIILjava/lang/Runnable;ILjava/lang/Runnable;)V

    goto :goto_0

    .line 979
    :cond_1
    invoke-direct {p0}, Lcom/zte/camera/b/b;->J()V

    goto :goto_0

    .line 974
    :cond_2
    invoke-direct {p0}, Lcom/zte/camera/b/b;->A()V

    :goto_0
    return-void
.end method

.method public l()I
    .locals 1

    .line 1105
    invoke-direct {p0}, Lcom/zte/camera/b/b;->n()Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->n()I

    move-result v0

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1109
    invoke-direct {p0}, Lcom/zte/camera/b/b;->n()Lcom/android/preference/IconListPreference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/preference/IconListPreference;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
