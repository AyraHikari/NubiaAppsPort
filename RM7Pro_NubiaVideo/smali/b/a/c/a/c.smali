.class public Lb/a/c/a/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb/a/a/c/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/c/a/c$a;,
        Lb/a/c/a/c$b;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:I

.field protected c:I

.field protected d:I

.field protected e:I

.field protected f:I

.field protected g:I

.field protected h:Z

.field protected i:Z

.field protected j:Lb/a/a/e/h;

.field protected k:Lb/a/a/e/a;

.field protected l:Lb/a/a/a/a;

.field protected m:Lcn/nubia/modules/videoRender/b;

.field protected n:Lb/a/d/b;

.field protected o:Landroid/os/Handler;

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Landroid/net/Uri;

.field protected t:Lb/a/a/e/g;

.field protected u:Lb/a/a/c/f;

.field protected v:Lb/a/a/c/h;

.field protected w:Lb/a/a/c/g;

.field private x:Lb/a/c/a/c$a;

.field public y:Lb/a/c/a/c$b;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/c/a/c;->b:I

    .line 3
    iput v0, p0, Lb/a/c/a/c;->c:I

    .line 4
    iput v0, p0, Lb/a/c/a/c;->d:I

    const/16 v1, 0x438

    .line 5
    iput v1, p0, Lb/a/c/a/c;->e:I

    const/16 v1, 0x780

    .line 6
    iput v1, p0, Lb/a/c/a/c;->f:I

    .line 7
    iput v0, p0, Lb/a/c/a/c;->g:I

    .line 8
    iput-boolean v0, p0, Lb/a/c/a/c;->h:Z

    .line 9
    iput-boolean v0, p0, Lb/a/c/a/c;->i:Z

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lb/a/c/a/c;->o:Landroid/os/Handler;

    .line 11
    iput-object v0, p0, Lb/a/c/a/c;->p:Ljava/lang/String;

    .line 12
    iput-object v0, p0, Lb/a/c/a/c;->q:Ljava/lang/String;

    .line 13
    iput-object v0, p0, Lb/a/c/a/c;->r:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Lb/a/c/a/c;->s:Landroid/net/Uri;

    .line 15
    iput-object v0, p0, Lb/a/c/a/c;->t:Lb/a/a/e/g;

    .line 16
    iput-object p1, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    .line 17
    new-instance v0, Lb/a/a/e/h;

    invoke-direct {v0, p1}, Lb/a/a/e/h;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    .line 18
    new-instance p1, Lb/a/a/e/a;

    iget-object v0, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lb/a/a/e/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    .line 19
    new-instance p1, Lb/a/a/a/a;

    invoke-direct {p1}, Lb/a/a/a/a;-><init>()V

    iput-object p1, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    .line 20
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0, p1}, Lb/a/a/e/h;->y(Lb/a/a/a/a;)V

    .line 21
    iget-object p1, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    invoke-virtual {p1, v0}, Lb/a/a/e/a;->p(Lb/a/a/a/a;)V

    .line 22
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string v0, "\'EDIT\'_yyyyMMdd_HHmmss"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/sql/Date;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/sql/Date;-><init>(J)V

    .line 24
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 25
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.VideoReverse/reverse.mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/c/a/c;->r:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lb/a/c/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lb/a/a/c/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.VideoReverse/reverseTrim.mp4"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lb/a/c/a/c;->q:Ljava/lang/String;

    .line 27
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lb/a/c/a/c;->q:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lb/a/c/a/c;->c()V

    .line 2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lb/a/c/a/c;->p:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lb/a/c/a/c;->s:Landroid/net/Uri;

    return-void
.end method

.method public c()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/d/b;->j()V

    .line 3
    iput-object v1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lb/a/a/e/a;->j()V

    .line 6
    :cond_1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lb/a/a/e/h;->q()V

    .line 8
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v0}, Lb/a/a/e/h;->s()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lb/a/c/a/c;->h:Z

    .line 10
    iget-object v2, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    invoke-virtual {v2, v0}, Lb/a/a/e/h;->v(Z)V

    .line 11
    :cond_2
    iget-object v0, p0, Lb/a/c/a/c;->l:Lb/a/a/a/a;

    if-eqz v0, :cond_3

    .line 12
    invoke-virtual {v0}, Lb/a/a/a/a;->h()V

    .line 13
    :cond_3
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    if-eqz v0, :cond_4

    .line 14
    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->c()V

    .line 15
    iput-object v1, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    :cond_4
    return-void
.end method

.method public d()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->s:Landroid/net/Uri;

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->m:Lcn/nubia/modules/videoRender/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/nubia/modules/videoRender/b;->getViewEditorMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    return p1
.end method

.method public g(Landroid/content/Context;)I
    .locals 1

    const-string v0, "window"

    .line 1
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 2
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lb/a/c/a/c;->k(Landroid/view/Display;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/Display;->getWidth()I

    move-result p1

    return p1
.end method

.method public h(I)V
    .locals 1

    if-gez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lb/a/c/a/c;->y:Lb/a/c/a/c$b;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Lb/a/c/a/c$b;->m(I)V

    .line 3
    :cond_1
    iget-object v0, p0, Lb/a/c/a/c;->x:Lb/a/c/a/c$a;

    if-eqz v0, :cond_2

    .line 4
    invoke-interface {v0, p1}, Lb/a/c/a/c$a;->a(I)V

    :cond_2
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/a/e/a;->k()V

    .line 3
    iput-object v1, p0, Lb/a/c/a/c;->k:Lb/a/a/e/a;

    .line 4
    :cond_0
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lb/a/a/e/h;->r()V

    .line 6
    iput-object v1, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lb/a/c/a/c;->n:Lb/a/d/b;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Lb/a/d/b;->z()V

    .line 9
    iput-object v1, p0, Lb/a/c/a/c;->n:Lb/a/d/b;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public j(Lb/a/c/a/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->x:Lb/a/c/a/c$a;

    return-void
.end method

.method public k(Landroid/view/Display;)V
    .locals 4

    :try_start_0
    const-string v0, "android.view.Display"

    .line 1
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setFull"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    .line 2
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public l(Lb/a/a/c/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->u:Lb/a/a/c/f;

    return-void
.end method

.method public m(Lb/a/a/c/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->w:Lb/a/a/c/g;

    return-void
.end method

.method public n(Lb/a/a/e/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->t:Lb/a/a/e/g;

    return-void
.end method

.method public o(Lb/a/a/c/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->v:Lb/a/a/c/h;

    return-void
.end method

.method public p(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/c/a/c;->j:Lb/a/a/e/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/a/e/h;->E(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public q(Lb/a/c/a/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a/c/a/c;->y:Lb/a/c/a/c$b;

    return-void
.end method
