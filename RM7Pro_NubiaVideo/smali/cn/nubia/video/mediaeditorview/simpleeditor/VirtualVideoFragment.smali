.class public Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Lb/a/a/e/g;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;


# instance fields
.field private a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private b:Landroid/net/Uri;

.field private c:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;

.field private d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

.field private e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

.field private f:I

.field private g:I

.field private h:Landroid/widget/ImageView;

.field private i:Lcn/nubia/video/mediaeditorview/o/a;

.field private j:Landroid/view/View;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->k:I

    .line 4
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->l:I

    .line 5
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->m:I

    .line 6
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->n:I

    .line 7
    iput v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->o:I

    return-void
.end method

.method private A()Z
    .locals 5

    .line 1
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->n:I

    const/4 v1, 0x0

    const/16 v2, 0x7d0

    if-gt v0, v2, :cond_0

    .line 2
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v3, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 3
    sget v2, Lcn/nubia/video/mediaeditorview/i;->V:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    sget v2, Lcn/nubia/video/mediaeditorview/i;->p:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$c;

    invoke-direct {v3, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$c;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 4
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    goto :goto_0

    .line 5
    :cond_0
    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->l:I

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->k:I

    mul-int v3, v0, v2

    const v4, 0x7e9000

    if-le v3, v4, :cond_1

    .line 6
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v3, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 7
    sget v2, Lcn/nubia/video/mediaeditorview/i;->T:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    sget v2, Lcn/nubia/video/mediaeditorview/i;->p:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$d;

    invoke-direct {v3, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$d;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 8
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    goto :goto_0

    :cond_1
    mul-int v3, v0, v2

    if-lt v3, v4, :cond_2

    .line 9
    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->o:I

    const/16 v4, 0x1e

    if-gt v3, v4, :cond_3

    :cond_2
    mul-int/2addr v0, v2

    const v2, 0x1fe000

    if-lt v0, v2, :cond_4

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->o:I

    const/16 v2, 0x5a

    if-le v0, v2, :cond_4

    .line 10
    :cond_3
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v3, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 11
    sget v2, Lcn/nubia/video/mediaeditorview/i;->S:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    sget v2, Lcn/nubia/video/mediaeditorview/i;->p:I

    invoke-virtual {p0, v2}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$e;

    invoke-direct {v3, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$e;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v2, v3}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 12
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    goto :goto_0

    :cond_4
    const/4 v1, 0x1

    :goto_0
    return v1
.end method

.method private C()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->A()Z

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->Z(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    new-instance v1, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$b;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->setSurfaceAvailableListener(Lcn/nubia/modules/videoRender/b$b;)V

    return-void
.end method

.method private D(IIZ)V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    .line 2
    iget v0, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 3
    iget p3, p3, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reLayoutVideoView w = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VirtualVideoFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    move v6, v0

    move v0, p3

    move p3, v6

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/video/mediaeditorview/e;->m:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/video/mediaeditorview/e;->j:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 6
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/nubia/video/mediaeditorview/e;->a:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 7
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {v1}, Landroid/view/TextureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 8
    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v3}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    mul-int v4, p2, p3

    mul-int v5, p1, v0

    if-le v4, v5, :cond_1

    .line 9
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 10
    div-int/2addr v5, p2

    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    goto :goto_1

    .line 11
    :cond_1
    iput p3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 12
    div-int/2addr v4, p1

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 13
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "reLayout lp = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "*"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    iget p1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->f:I

    .line 16
    iget p2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->g:I

    .line 17
    iput p1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 18
    iput p2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 19
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p2, p1}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setContainerHeight(I)V

    .line 20
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iget p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->g:I

    invoke-virtual {p1, p2}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->setContainerWidth(I)V

    .line 21
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private E(Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->l:I

    if-lez p1, :cond_0

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->k:I

    if-lez v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, p1, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->D(IIZ)V

    :cond_0
    return-void
.end method

.method private G()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 2
    sget v1, Lcn/nubia/video/mediaeditorview/i;->q:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    sget v1, Lcn/nubia/video/mediaeditorview/i;->p:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$h;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$h;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    return-void
.end method

.method private H()V
    .locals 3

    .line 1
    new-instance v0, Lcn/nubia/video/commonui/app/b$a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    sget v2, Lcn/nubia/video/mediaeditorview/j;->a:I

    invoke-direct {v0, v1, v2}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;I)V

    .line 2
    sget v1, Lcn/nubia/video/mediaeditorview/i;->S:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/video/commonui/app/b$a;->c(Z)Lcn/nubia/video/commonui/app/b$a;

    sget v1, Lcn/nubia/video/mediaeditorview/i;->p:I

    invoke-virtual {p0, v1}, Landroid/support/v4/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$g;

    invoke-direct {v2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$g;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {v0, v1, v2}, Lcn/nubia/video/commonui/app/b$a;->i(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 3
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/b$a;->n()Lcn/nubia/video/commonui/app/b;

    return-void
.end method

.method static synthetic u(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/o/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Landroid/net/Uri;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->b:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->z(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic y(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)Lcn/nubia/modules/videoRender/VirtualVideoViewImp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    return-object p0
.end method

.method private z(Landroid/net/Uri;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-static {v0, p1}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/l;->d(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->f(ILjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public B()Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-object v0
.end method

.method public F(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->E()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->h()V

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    sget v0, Lcn/nubia/video/mediaeditorview/g;->K:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/o/a;->Z(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->b:Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->E(Landroid/net/Uri;)V

    .line 7
    new-instance v0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$f;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$f;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {p1, v0}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->setSurfaceAvailableListener(Lcn/nubia/modules/videoRender/b$b;)V

    .line 8
    invoke-virtual {p1}, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;->k()V

    :cond_2
    return-void
.end method

.method public d(III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "STATE = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VirtualVideoFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p3, -0x1

    if-eq p1, p3, :cond_2

    const/4 p2, 0x3

    const/4 p3, 0x4

    if-eq p1, p2, :cond_1

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->h:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->h:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    .line 4
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->H()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    if-ne p2, p1, :cond_4

    .line 5
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->G()V

    :cond_4
    :goto_0
    return-void
.end method

.method public g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->G()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 3
    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->p()Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->b:Landroid/net/Uri;

    .line 4
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->a:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->b:Landroid/net/Uri;

    invoke-static {p1, v0}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 6
    :try_start_0
    new-instance v1, Lcn/nubia/video/mediajni/VideoItem;

    invoke-direct {v1}, Lcn/nubia/video/mediajni/VideoItem;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    invoke-virtual {v1, p1}, Lcn/nubia/video/mediajni/VideoItem;->setDataSource(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->k:I

    .line 9
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->l:I

    .line 10
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getVideoBits()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->m:I

    .line 11
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getDuration()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->n:I

    .line 12
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->getFrameRate()I

    move-result p1

    iput p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->o:I

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->i:Lcn/nubia/video/mediaeditorview/o/a;

    iget v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->m:I

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->Y(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v0, v1

    goto :goto_2

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 15
    :goto_0
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    :cond_1
    :goto_1
    return-void

    :goto_2
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcn/nubia/video/mediajni/VideoItem;->release()V

    .line 17
    :cond_2
    throw p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "VirtualVideoFragment"

    const-string v0, "onCreateView"

    .line 1
    invoke-static {p3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget p3, Lcn/nubia/video/mediaeditorview/h;->j:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    .line 3
    sget p2, Lcn/nubia/video/mediaeditorview/g;->a0:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    sget p2, Lcn/nubia/video/mediaeditorview/g;->V:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->e:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    const/16 p2, 0x8

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    sget p2, Lcn/nubia/video/mediaeditorview/g;->K:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->d:Lcn/nubia/modules/videoRender/VirtualVideoViewImp;

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->b:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->E(Landroid/net/Uri;)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    sget p2, Lcn/nubia/video/mediaeditorview/g;->Z:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->h:Landroid/widget/ImageView;

    .line 9
    new-instance p2, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$a;

    invoke-direct {p2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment$a;-><init>(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->c:Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;

    invoke-virtual {p1, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout;->setmTouchListener(Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFrameLayout$a;)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->j:Landroid/view/View;

    return-object p1
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/VirtualVideoFragment;->C()V

    .line 2
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    return-void
.end method
