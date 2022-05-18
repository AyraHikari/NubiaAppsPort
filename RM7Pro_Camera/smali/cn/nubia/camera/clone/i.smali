.class public Lcn/nubia/camera/clone/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Lcom/android/common/ui/j;

.field private b:Landroid/widget/VideoView;

.field private c:Landroid/view/View;

.field private d:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    .line 22
    iput-object v0, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    .line 23
    iput-object v0, p0, Lcn/nubia/camera/clone/i;->c:Landroid/view/View;

    .line 24
    iput-object v0, p0, Lcn/nubia/camera/clone/i;->d:Landroid/content/Context;

    .line 36
    iput-object p1, p0, Lcn/nubia/camera/clone/i;->d:Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/android/common/ui/j;

    const/4 v1, 0x1

    invoke-direct {v0, p2, v1, p3, p1}, Lcom/android/common/ui/j;-><init>(IIILandroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/clone/i;)Landroid/widget/VideoView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/clone/i;)Lcom/android/common/ui/j;
    .locals 0

    .line 20
    iget-object p0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 42
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    if-nez v0, :cond_0

    return-void

    .line 45
    :cond_0
    invoke-virtual {v0}, Lcom/android/common/ui/j;->show()V

    .line 46
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    const v1, 0x7f0900be

    invoke-virtual {v0, v1}, Lcom/android/common/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/clone/i;->c:Landroid/view/View;

    .line 47
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    const v1, 0x7f0900c5

    invoke-virtual {v0, v1}, Lcom/android/common/ui/j;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/VideoView;

    iput-object v0, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android.resource://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/clone/i;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f0e0018

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->setZOrderOnTop(Z)V

    .line 51
    iget-object v1, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 52
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    new-instance v1, Lcn/nubia/camera/clone/i$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/clone/i$1;-><init>(Lcn/nubia/camera/clone/i;)V

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 59
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->b:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 60
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->c:Landroid/view/View;

    new-instance v1, Lcn/nubia/camera/clone/i$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/clone/i$2;-><init>(Lcn/nubia/camera/clone/i;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public b()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/common/ui/j;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcn/nubia/camera/clone/i;->a:Lcom/android/common/ui/j;

    invoke-virtual {v0}, Lcom/android/common/ui/j;->cancel()V

    :cond_0
    return-void
.end method
