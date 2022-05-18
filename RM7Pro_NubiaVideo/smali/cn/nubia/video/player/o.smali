.class public Lcn/nubia/video/player/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/Activity;

.field private b:Landroid/net/Uri;

.field private c:Lcn/nubia/video/player/e;

.field private d:Landroid/app/Dialog;

.field private e:Ljava/lang/Object;

.field private f:Lcn/nubia/video/commonui/app/e;

.field private g:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/net/Uri;Lcn/nubia/video/player/e;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/player/o;->e:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/nubia/video/player/o;->g:Z

    .line 6
    iput-object p2, p0, Lcn/nubia/video/player/o;->b:Landroid/net/Uri;

    .line 7
    iput-object p1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    .line 8
    iput-object p3, p0, Lcn/nubia/video/player/o;->c:Lcn/nubia/video/player/e;

    .line 9
    invoke-static {p1}, Lb/a/b/d/e;->G(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    .line 10
    invoke-static {p1}, Lb/a/b/d/e;->F(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    .line 11
    invoke-static {p1}, Lb/a/b/d/e;->H(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 12
    iput-boolean p1, p0, Lcn/nubia/video/player/o;->g:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/video/player/o;)Lcn/nubia/video/player/e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/player/o;->c:Lcn/nubia/video/player/e;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/video/player/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/o;->g()V

    return-void
.end method

.method static synthetic c(Lcn/nubia/video/player/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/o;->h()V

    return-void
.end method

.method static synthetic d(Lcn/nubia/video/player/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/nubia/video/player/o;->k()V

    return-void
.end method

.method private g()V
    .locals 4

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video/*"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v2, "android.intent.extra.STREAM"

    const/16 v3, 0x1a

    if-lt v1, v3, :cond_0

    iget-object v1, p0, Lcn/nubia/video/player/o;->b:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "file"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcn/nubia/video/player/o;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-static {v3, v1}, Lb/a/b/d/e;->u(Landroid/content/Context;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/o;->b:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :goto_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v2, 0x7f0f00b0

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 10
    :try_start_0
    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 11
    :catch_0
    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v1, 0x7f0f0083

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    return-void
.end method

.method private h()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcn/nubia/video/player/o;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lb/a/b/d/e;->m(Landroid/content/Context;Landroid/net/Uri;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v2, 0x7f0c006e

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iget-object v2, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0f00de

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_1
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v5, 0x7f0c0072

    invoke-direct {v2, v4, v5, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 7
    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 8
    iget-object v0, p0, Lcn/nubia/video/player/o;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v2, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    if-eqz v2, :cond_2

    .line 10
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 11
    iput-object v3, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    .line 12
    :cond_2
    new-instance v2, Lcn/nubia/video/commonui/app/b$a;

    iget-object v3, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcn/nubia/video/commonui/app/b$a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Lcn/nubia/video/commonui/app/b$a;->m(Landroid/view/View;)Lcn/nubia/video/commonui/app/b$a;

    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v3, 0x7f0f0043

    .line 13
    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/nubia/video/commonui/app/b$a;->l(Ljava/lang/CharSequence;)Lcn/nubia/video/commonui/app/b$a;

    const v1, 0x7f0f0039

    new-instance v3, Lcn/nubia/video/player/o$b;

    invoke-direct {v3, p0}, Lcn/nubia/video/player/o$b;-><init>(Lcn/nubia/video/player/o;)V

    .line 14
    invoke-virtual {v2, v1, v3}, Lcn/nubia/video/commonui/app/b$a;->h(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/video/commonui/app/b$a;

    .line 15
    invoke-virtual {v2}, Lcn/nubia/video/commonui/app/b$a;->a()Lcn/nubia/video/commonui/app/b;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    .line 16
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 17
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private i(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/e;->m()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    .line 4
    :cond_0
    new-instance v0, Lcn/nubia/video/commonui/app/e;

    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcn/nubia/video/commonui/app/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    .line 5
    new-instance v1, Lcn/nubia/video/player/o$a;

    invoke-direct {v1, p0}, Lcn/nubia/video/player/o$a;-><init>(Lcn/nubia/video/player/o;)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/video/commonui/app/e;->y(ILcn/nubia/video/commonui/app/e$i;)V

    return-void
.end method

.method private k()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2
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
    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-static {v0}, Lb/a/b/d/e;->G(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    .line 4
    invoke-static {v0}, Lb/a/b/d/e;->F(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    .line 5
    invoke-static {v0}, Lb/a/b/d/e;->H(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.DISPLAY_AUDIO_EFFECT_CONTROL_PANEL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.extra.CONTENT_TYPE"

    .line 7
    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.nubia.dolbypanel.extra.CONTENT_TYPE"

    const-string v2, "com.nubia.dolbypanel.moviesetting"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/player/o;->a:Landroid/app/Activity;

    const v1, 0x7f0f00b4

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/e;->m()V

    .line 3
    iput-object v1, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/player/o;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 7
    iput-object v1, p0, Lcn/nubia/video/player/o;->d:Landroid/app/Dialog;

    .line 8
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public f()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/nubia/video/commonui/app/e;->v()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/nubia/video/player/o;->g:Z

    if-eqz v0, :cond_0

    const v0, 0x7f03000e

    .line 2
    invoke-direct {p0, v0}, Lcn/nubia/video/player/o;->i(I)V

    goto :goto_0

    :cond_0
    const v0, 0x7f03000f

    .line 3
    invoke-direct {p0, v0}, Lcn/nubia/video/player/o;->i(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    invoke-virtual {v0, p1}, Lcn/nubia/video/commonui/app/e;->x(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/player/o;->f:Lcn/nubia/video/commonui/app/e;

    invoke-virtual {p1}, Lcn/nubia/video/commonui/app/e;->B()V

    return-void
.end method
