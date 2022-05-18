.class public Lcn/nubia/video/mediaeditorview/simpleeditor/f;
.super Lcn/nubia/video/mediaeditorview/simpleeditor/a;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/SeekBar;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/net/Uri;

.field private l:Landroid/widget/FrameLayout;

.field private m:Landroid/widget/HorizontalScrollView;

.field private n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

.field private o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

.field private p:Lcn/nubia/video/mediaeditorview/o/a;

.field private q:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/a;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->k:Landroid/net/Uri;

    return-void
.end method

.method private w()Z
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const-string v2, "android.intent.action.PICK"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method private x()Z
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->q:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string v1, "android.intent.action.NUBIA_MUSIC_PICK"

    .line 4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    move v3, v1

    :cond_1
    return v3
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    const-string v0, "MusicMenuFragment"

    const-string v1, "onActivityResult"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->k:Landroid/net/Uri;

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult mResourceUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->k:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->k:Landroid/net/Uri;

    if-eqz v1, :cond_1

    const-string v2, "more"

    .line 5
    iput-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    .line 6
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-static {v2, v1}, Lcn/nubia/video/mediaeditorview/m;->k(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v1

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityResult mediaPath = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/video/mediaeditorview/o/a;->f(ILjava/lang/String;I)V

    .line 9
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/o/a;->q()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->B(I)V

    .line 10
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->K()V

    .line 12
    :cond_0
    invoke-virtual {p0, v3}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->y(Z)V

    .line 13
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    if-eqz v0, :cond_2

    .line 14
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->e(Ljava/lang/String;)V

    .line 15
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcn/nubia/video/mediaeditorview/g;->B:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->m:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v3}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 7
    :cond_0
    sget v0, Lcn/nubia/video/mediaeditorview/g;->C:I

    if-ne p1, v0, :cond_1

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->l:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->m:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v2}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    .line 10
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 1
    sget p3, Lcn/nubia/video/mediaeditorview/h;->e:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    .line 3
    invoke-static {}, Lcn/nubia/video/mediaeditorview/o/a;->s()Lcn/nubia/video/mediaeditorview/o/a;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    .line 4
    sget p2, Lcn/nubia/video/mediaeditorview/g;->L:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->l:Landroid/widget/FrameLayout;

    .line 5
    sget p2, Lcn/nubia/video/mediaeditorview/g;->A:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/HorizontalScrollView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->m:Landroid/widget/HorizontalScrollView;

    .line 6
    sget p2, Lcn/nubia/video/mediaeditorview/g;->I:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    .line 7
    sget p2, Lcn/nubia/video/mediaeditorview/g;->B:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->a:Landroid/widget/TextView;

    .line 8
    sget p2, Lcn/nubia/video/mediaeditorview/g;->C:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->b:Landroid/widget/TextView;

    .line 9
    sget p2, Lcn/nubia/video/mediaeditorview/g;->D:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    .line 10
    sget p2, Lcn/nubia/video/mediaeditorview/g;->a:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    .line 11
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2, v0, v0}, Lcn/nubia/video/mediaeditorview/o/a;->B(II)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->g:I

    .line 12
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 p3, 0x1

    invoke-virtual {p2, p3, v0}, Lcn/nubia/video/mediaeditorview/o/a;->B(II)I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->h:I

    .line 13
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->n()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->i:Ljava/lang/String;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    .line 14
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/nubia/video/mediaeditorview/d;->e:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 15
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->o:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 16
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->g:I

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 17
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->h:I

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 18
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 19
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 20
    sget p2, Lcn/nubia/video/mediaeditorview/g;->E:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->e:Landroid/widget/TextView;

    .line 21
    sget p2, Lcn/nubia/video/mediaeditorview/g;->b:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->f:Landroid/widget/TextView;

    .line 22
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->e:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->g:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->f:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 25
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->a:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    invoke-virtual {p2, p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->setOnMusicItemClickListener(Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView$c;)V

    .line 28
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->n:Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->i:Ljava/lang/String;

    invoke-virtual {p2, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleMusicPickerView;->e(Ljava/lang/String;)V

    .line 29
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/b;->i()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    .line 30
    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->x()F

    move-result p2

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    .line 31
    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->z(Z)V

    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->z(Z)V

    .line 34
    :goto_1
    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p2}, Lcn/nubia/video/mediaeditorview/o/a;->u()Lb/a/c/a/e;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object p2

    invoke-virtual {p2}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p0, p3}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->y(Z)V

    goto :goto_2

    .line 36
    :cond_2
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->y(Z)V

    .line 37
    :goto_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->q:Landroid/content/pm/PackageManager;

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    const-string v0, ""

    if-ne p1, p3, :cond_0

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 p3, 0x0

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {p1, p3, v1}, Lcn/nubia/video/mediaeditorview/o/a;->b0(II)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->e:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    if-ne p1, p3, :cond_1

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 p3, 0x1

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {p1, p3, v1}, Lcn/nubia/video/mediaeditorview/o/a;->b0(II)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->f:Landroid/widget/TextView;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
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

.method public q(Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMusicItemClick :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicMenuFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "null"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcn/nubia/video/mediaeditorview/o/a;->f(ILjava/lang/String;I)V

    .line 4
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    .line 5
    invoke-virtual {p0, v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->y(Z)V

    goto/16 :goto_2

    :cond_0
    const-string v0, "more"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 7
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    new-instance p1, Landroid/content/Intent;

    const-string v0, "cn.nubia.intent.action.NUBIA_MUSIC_PICK"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->q:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.NUBIA_MUSIC_PICK"

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->k:Landroid/net/Uri;

    const-string v1, "URL_VALUE"

    if-nez v0, :cond_2

    const-string v0, "content://media/internal/audio/media/10000"

    .line 13
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 14
    :cond_2
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 15
    :cond_3
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->w()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 16
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.MUSIC_PICK"

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 18
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v0, "android.intent.action.GET_CONTENT"

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "audio/*"

    .line 20
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    :goto_1
    :try_start_0
    invoke-virtual {p0, p1, v2}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_2

    .line 23
    :cond_5
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    .line 24
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0, v1, p1, v2}, Lcn/nubia/video/mediaeditorview/o/a;->f(ILjava/lang/String;I)V

    .line 25
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Lcn/nubia/video/mediaeditorview/o/a;->M(I)V

    .line 26
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result p1

    if-nez p1, :cond_6

    .line 27
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->K()V

    .line 28
    :cond_6
    invoke-virtual {p0, v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->y(Z)V

    :goto_2
    return-void
.end method

.method u()V
    .locals 5

    const-string v0, "MusicMenuFragment"

    const-string v1, "onCancelClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->j:Ljava/lang/String;

    const-string v3, "video_edit_used:"

    const-string v4, "music"

    invoke-virtual {v0, v1, v3, v4, v2}, Lb/a/b/a/j/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method v()V
    .locals 4

    const-string v0, "MusicMenuFragment"

    const-string v1, "onCancelClick"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->g:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/video/mediaeditorview/o/a;->b0(II)V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    iget v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->h:I

    mul-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Lcn/nubia/video/mediaeditorview/o/a;->b0(II)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->i:Ljava/lang/String;

    invoke-virtual {v0, v3, v1, v2}, Lcn/nubia/video/mediaeditorview/o/a;->f(ILjava/lang/String;I)V

    return-void
.end method

.method public y(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setFocusable(Z)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->p:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p1}, Lcn/nubia/video/mediaeditorview/o/a;->x()F

    move-result p1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->z(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->d:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setFocusable(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public z(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 3
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setFocusable(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setClickable(Z)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/simpleeditor/f;->c:Landroid/widget/SeekBar;

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setFocusable(Z)V

    :goto_0
    return-void
.end method
