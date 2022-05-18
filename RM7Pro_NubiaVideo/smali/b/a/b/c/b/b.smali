.class public Lb/a/b/c/b/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/b/c/b/b$c;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Bitmap;

.field private c:Lcn/nubia/video/list/app/a;

.field private d:Lb/a/b/c/b/g;

.field private e:Landroid/os/Handler;

.field private f:Lb/a/b/c/b/b$c;

.field private g:Z

.field private final h:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/nubia/video/list/app/a;Lb/a/b/c/b/g;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lb/a/b/c/b/b;->a:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lb/a/b/c/b/b;->g:Z

    .line 5
    new-instance v0, Lb/a/b/c/b/b$b;

    invoke-direct {v0, p0}, Lb/a/b/c/b/b$b;-><init>(Lb/a/b/c/b/b;)V

    iput-object v0, p0, Lb/a/b/c/b/b;->h:Ljava/lang/Runnable;

    .line 6
    iput-object p1, p0, Lb/a/b/c/b/b;->c:Lcn/nubia/video/list/app/a;

    .line 7
    iput-object p2, p0, Lb/a/b/c/b/b;->d:Lb/a/b/c/b/g;

    .line 8
    invoke-interface {p1}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0801cd

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 9
    new-instance p2, Lb/a/b/c/b/b$a;

    invoke-direct {p2, p0}, Lb/a/b/c/b/b$a;-><init>(Lb/a/b/c/b/b;)V

    iput-object p2, p0, Lb/a/b/c/b/b;->e:Landroid/os/Handler;

    if-eqz p1, :cond_0

    .line 10
    iget-object p2, p0, Lb/a/b/c/b/b;->c:Lcn/nubia/video/list/app/a;

    .line 11
    invoke-interface {p2}, Lcn/nubia/video/list/app/a;->a()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcn/nubia/video/commonui/app/c;->d(Landroid/content/Context;)I

    move-result p2

    iget-object v0, p0, Lb/a/b/c/b/b;->c:Lcn/nubia/video/list/app/a;

    invoke-interface {v0}, Lcn/nubia/video/list/app/a;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700a4

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    .line 13
    invoke-static {p1, p2, v0, v1}, Lb/a/b/d/a;->e(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lb/a/b/c/b/b;->a:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method static synthetic a(Lb/a/b/c/b/b;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic b(Lb/a/b/c/b/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic c(Lb/a/b/c/b/b;)Lb/a/b/c/b/b$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/b;->f:Lb/a/b/c/b/b$c;

    return-object p0
.end method

.method static synthetic d(Lb/a/b/c/b/b;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lb/a/b/c/b/b;->g:Z

    return p0
.end method

.method static synthetic e(Lb/a/b/c/b/b;)Lb/a/b/c/b/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/b;->d:Lb/a/b/c/b/g;

    return-object p0
.end method

.method static synthetic f(Lb/a/b/c/b/b;)Lcn/nubia/video/list/app/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/b;->c:Lcn/nubia/video/list/app/a;

    return-object p0
.end method

.method static synthetic g(Lb/a/b/c/b/b;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lb/a/b/c/b/b;->e:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public h()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lb/a/b/c/b/b;->g:Z

    return-void
.end method

.method public i(Landroid/widget/ImageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lb/a/b/c/b/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method public j(Lb/a/b/c/b/b$c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/b/c/b/b;->f:Lb/a/b/c/b/b$c;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lb/a/b/c/b/b;->f:Lb/a/b/c/b/b$c;

    :cond_0
    return-void
.end method

.method public k()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lb/a/b/c/b/b;->b:Landroid/graphics/Bitmap;

    .line 2
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lb/a/b/c/b/b;->h:Ljava/lang/Runnable;

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
