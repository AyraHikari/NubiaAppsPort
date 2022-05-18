.class public Lcn/nubia/video/list/ui/h;
.super Lcn/nubia/video/list/ui/j;
.source "SourceFile"


# instance fields
.field private c:Lcn/nubia/video/commonui/app/e;

.field private d:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/j;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/list/ui/h;->c:Lcn/nubia/video/commonui/app/e;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/nubia/video/list/ui/h;->f:Z

    return-void
.end method

.method private B(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/list/ui/h;->g:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x8

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3
    :cond_1
    new-instance v0, Lcn/nubia/video/list/ui/h$b;

    invoke-direct {v0, p0}, Lcn/nubia/video/list/ui/h$b;-><init>(Lcn/nubia/video/list/ui/h;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private E()V
    .locals 0

    return-void
.end method

.method private F()V
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 3
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcn/nubia/video/list/ui/h;->f:Z

    if-eqz v0, :cond_2

    .line 4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.CONTENT_TYPE"

    .line 5
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.nubia.dolbypanel.extra.CONTENT_TYPE"

    const-string v2, "com.nubia.dolbypanel.moviesetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v4/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0f00b4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_2
    return-void
.end method

.method static synthetic w(Lcn/nubia/video/list/ui/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/h;->F()V

    return-void
.end method

.method static synthetic x(Lcn/nubia/video/list/ui/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/list/ui/h;->E()V

    return-void
.end method

.method private y()V
    .locals 0

    return-void
.end method


# virtual methods
.method public A(ILandroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/nubia/video/list/ui/h;->g:Z

    return-void
.end method

.method protected D(Landroid/widget/TextView;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-boolean v0, p0, Lcn/nubia/video/list/ui/h;->g:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0f0037

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0c003c

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0900b6

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/video/list/ui/h;->d:Landroid/view/View;

    const p2, 0x7f090155

    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcn/nubia/video/list/ui/h;->e:Landroid/widget/TextView;

    .line 4
    invoke-virtual {p0}, Lcn/nubia/video/list/ui/h;->z()V

    .line 5
    iget-object p2, p0, Lcn/nubia/video/list/ui/h;->d:Landroid/view/View;

    invoke-direct {p0, p2}, Lcn/nubia/video/list/ui/h;->B(Landroid/view/View;)V

    .line 6
    iget-object p2, p0, Lcn/nubia/video/list/ui/h;->e:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Lcn/nubia/video/list/ui/h;->D(Landroid/widget/TextView;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2
    invoke-direct {p0}, Lcn/nubia/video/list/ui/h;->y()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcn/nubia/video/list/ui/j;->onResume()V

    return-void
.end method

.method public u()V
    .locals 0

    return-void
.end method

.method public z()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/d/e;->G(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    .line 2
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    const-string v2, "NX531"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "N940Sc_V3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f030001

    goto :goto_1

    :cond_1
    :goto_0
    const/high16 v0, 0x7f030000

    goto :goto_1

    .line 3
    :cond_2
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/d/e;->F(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f030002

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lb/a/b/d/e;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 5
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v2, 0x0

    const-string v3, "vertical_list_grid"

    invoke-static {v0, v3, v2}, Lb/a/b/d/e;->n(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_4

    const v0, 0x7f030006

    goto :goto_1

    :cond_4
    const v0, 0x7f03000c

    goto :goto_1

    :cond_5
    move v0, v1

    :goto_1
    if-eq v0, v1, :cond_6

    .line 6
    new-instance v1, Lcn/nubia/video/commonui/app/e;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/nubia/video/commonui/app/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/nubia/video/list/ui/h;->c:Lcn/nubia/video/commonui/app/e;

    .line 7
    new-instance v2, Lcn/nubia/video/list/ui/h$a;

    invoke-direct {v2, p0}, Lcn/nubia/video/list/ui/h$a;-><init>(Lcn/nubia/video/list/ui/h;)V

    invoke-virtual {v1, v0, v2}, Lcn/nubia/video/commonui/app/e;->y(ILcn/nubia/video/commonui/app/e$i;)V

    :cond_6
    return-void
.end method
