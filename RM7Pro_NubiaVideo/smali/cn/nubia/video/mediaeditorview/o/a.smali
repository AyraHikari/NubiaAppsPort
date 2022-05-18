.class public Lcn/nubia/video/mediaeditorview/o/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/video/mediajni/VideoReverse$onCompleteListener;
.implements Lb/a/c/a/c$a;


# static fields
.field public static q:Lcn/nubia/video/mediaeditorview/o/a;


# instance fields
.field private a:Lb/a/c/a/e;

.field private b:Landroid/content/Context;

.field public c:Ljava/lang/String;

.field private d:Z

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/os/Handler;

.field private h:F

.field private i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

.field private k:J

.field private l:J

.field private m:Landroid/os/Handler;

.field n:I

.field o:Z

.field p:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->d:Z

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->h:F

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    .line 6
    new-instance v1, Lcn/nubia/video/mediaeditorview/o/a$b;

    invoke-direct {v1, p0}, Lcn/nubia/video/mediaeditorview/o/a$b;-><init>(Lcn/nubia/video/mediaeditorview/o/a;)V

    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->m:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 7
    iput v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    .line 8
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->o:Z

    const-string v0, "AAR-VideoEditorController"

    const-string v1, "VideoEditorController"

    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    .line 11
    new-instance v0, Lb/a/c/a/e;

    invoke-direct {v0, p1}, Lb/a/c/a/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lcn/nubia/video/mediaeditorview/m;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/.VideoReverse/reverse.mp4"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->c:Ljava/lang/String;

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1, p0}, Lb/a/c/a/c;->j(Lb/a/c/a/c$a;)V

    .line 14
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    .line 15
    new-instance p1, Lcn/nubia/video/mediaeditorview/o/a$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcn/nubia/video/mediaeditorview/o/a$a;-><init>(Lcn/nubia/video/mediaeditorview/o/a;Landroid/os/Looper;)V

    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->g:Landroid/os/Handler;

    return-void
.end method

.method public static F(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, v0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 3
    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 4
    :cond_0
    sget-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/o/a;->J()V

    .line 5
    sget-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v1, 0x0

    iput-object v1, v0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    .line 6
    sput-object v1, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    .line 7
    :cond_1
    new-instance v0, Lcn/nubia/video/mediaeditorview/o/a;

    invoke-direct {v0, p0}, Lcn/nubia/video/mediaeditorview/o/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    return-void
.end method

.method private I()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 8
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 11
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    :cond_3
    return-void
.end method

.method private N(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->W()V

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->l(I)V

    .line 4
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lb/a/c/a/e;->Y(I)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcn/nubia/video/mediaeditorview/o/a;)Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/nubia/video/mediaeditorview/o/a;->j:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/video/mediaeditorview/o/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->N(I)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/video/mediaeditorview/o/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->k:J

    return-wide p1
.end method

.method static synthetic e(Lcn/nubia/video/mediaeditorview/o/a;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->l:J

    return-wide p1
.end method

.method public static j(Landroid/content/Context;)V
    .locals 2

    const-string v0, "AAR-VideoEditorController"

    const-string v1, "destroyInstance "

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    sget-object v1, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    iget-object v1, v1, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    if-ne v1, p0, :cond_0

    const-string p0, "destroyInstance ininin"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    invoke-static {}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->i()Lcn/nubia/video/mediaeditorview/simpleeditor/g;

    move-result-object p0

    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/simpleeditor/g;->l()V

    .line 5
    sget-object p0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->J()V

    .line 6
    sget-object p0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    const/4 v0, 0x0

    iput-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    .line 7
    sput-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    :cond_0
    return-void
.end method

.method private l(I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->t()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result v0

    sub-int p1, v0, p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->K()Lb/a/c/a/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, p1}, Lcn/nubia/video/mediaeditorview/o/a;->m(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lb/a/c/a/d;->D(Ljava/lang/String;)V

    .line 4
    iget-boolean v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->o:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 5
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->t()Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    iget v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    .line 7
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1}, Lb/a/c/a/e;->S()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->m(I)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->y()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    iget v3, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->a()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->i(I)V

    .line 9
    invoke-static {}, Lcn/nubia/modules/videoRender/e/c;->b()Lcn/nubia/modules/videoRender/e/c;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->p:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/c;->a(Ljava/lang/String;)Lcn/nubia/modules/videoRender/e/d;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1}, Lb/a/c/a/e;->S()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/modules/videoRender/e/d;->m(I)V

    .line 10
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/c;->e()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->j:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->e0(Ljava/util/ArrayList;I)Ljava/util/ArrayList;

    move-result-object p1

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->a0()V

    .line 13
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 14
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    .line 16
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/video/mediaeditorview/textfilter/c;->d()F

    move-result v3

    iget v4, p0, Lcn/nubia/video/mediaeditorview/o/a;->h:F

    mul-float/2addr v3, v4

    .line 17
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/a;->b()Lcn/nubia/video/mediaeditorview/textfilter/c;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/textfilter/c;->b()F

    move-result v4

    iget v5, p0, Lcn/nubia/video/mediaeditorview/o/a;->h:F

    mul-float/2addr v4, v5

    .line 18
    iget-object v5, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v5, v0, v2, v4, v3}, Lb/a/c/a/e;->Z(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 19
    :cond_3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->j:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;->getAddFrameHolders()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->g:Landroid/os/Handler;

    const/4 v2, 0x1

    .line 21
    invoke-virtual {v0, v2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    return-void
.end method

.method public static s()Lcn/nubia/video/mediaeditorview/o/a;
    .locals 1

    .line 1
    sget-object v0, Lcn/nubia/video/mediaeditorview/o/a;->q:Lcn/nubia/video/mediaeditorview/o/a;

    return-object v0
.end method


# virtual methods
.method public A()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->Q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B(II)I
    .locals 0

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/16 p1, 0x64

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/a/b;->h()I

    move-result p1

    goto :goto_0

    .line 2
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1}, Lb/a/c/a/b;->h()I

    move-result p1

    :goto_0
    return p1
.end method

.method public C()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->N()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 3
    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/b;->d()I

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 4
    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/b;->c()I

    move-result v0

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v2}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/c/a/b;->e()I

    move-result v2

    if-lt v0, v2, :cond_3

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    const/4 v2, 0x0

    .line 6
    invoke-virtual {v0, v2}, Lb/a/c/a/e;->T(I)I

    move-result v0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 7
    invoke-virtual {v0, v1}, Lb/a/c/a/e;->T(I)I

    move-result v0

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->U()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->V()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public G()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->W()V

    :cond_0
    return-void
.end method

.method public H()V
    .locals 2

    const-string v0, "AAR-VideoEditorController"

    const-string v1, "relese"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/c/a/e;->i()V

    .line 4
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->g:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/nubia/video/mediaeditorview/o/a;->I()V

    return-void
.end method

.method public J()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->m:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public K()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->X()V

    :cond_0
    return-void
.end method

.method public L()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    check-cast v0, Lb/a/c/a/d;

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/d;->v()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0}, Lb/a/c/a/d;->A()V

    .line 4
    iget-boolean v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->d:Z

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->D()V

    .line 6
    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->c:Ljava/lang/String;

    iget-object v3, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    .line 7
    invoke-virtual {v3}, Lb/a/c/a/e;->M()I

    move-result v3

    iget-object v4, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v4}, Lb/a/c/a/e;->L()I

    move-result v4

    .line 8
    invoke-virtual {p0, v0, v1, v3, v4}, Lcn/nubia/video/mediaeditorview/o/a;->d0(Ljava/lang/String;Ljava/lang/String;II)V

    .line 9
    iput-boolean v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->d:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lb/a/c/a/d;->E(Z)V

    .line 11
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->j0()V

    .line 12
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->A()V

    goto :goto_0

    .line 13
    :cond_1
    invoke-virtual {v0, v2}, Lb/a/c/a/d;->E(Z)V

    .line 14
    invoke-virtual {v0}, Lb/a/c/a/d;->A()V

    .line 15
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->f0()V

    .line 16
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->g()V

    :goto_0
    return-void
.end method

.method public M(I)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->l:J

    .line 2
    iget-wide v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->k:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x96

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 3
    iput-wide v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->k:J

    .line 4
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->N(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->m:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 6
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 7
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->m:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 8
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->m:Landroid/os/Handler;

    invoke-virtual {p1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public O(Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->j:Lcn/nubia/video/mediaeditorview/textfilter/AddWordFrameContainer;

    return-void
.end method

.method public P(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    return-void
.end method

.method public Q(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->R(Ljava/lang/String;)V

    return-void
.end method

.method public R(Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "Film"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    sget v2, Lcn/nubia/video/mediaeditorview/f;->R:I

    aput v2, v0, v1

    const/4 v1, 0x1

    .line 3
    sget v2, Lcn/nubia/video/mediaeditorview/f;->w:I

    aput v2, v0, v1

    const/4 v1, 0x2

    .line 4
    sget v2, Lcn/nubia/video/mediaeditorview/f;->v:I

    aput v2, v0, v1

    const/4 v1, 0x3

    .line 5
    sget v2, Lcn/nubia/video/mediaeditorview/f;->u:I

    aput v2, v0, v1

    .line 6
    :goto_0
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v1, :cond_1

    .line 7
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "video_edit_used:"

    const-string v4, "special_effect"

    invoke-virtual {v1, v2, v3, v4, p1}, Lb/a/b/a/j/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1, v0, p1}, Lb/a/c/a/e;->b0([ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public S(Lb/a/a/c/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->l(Lb/a/a/c/f;)V

    :cond_0
    return-void
.end method

.method public T(Lb/a/a/c/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->m(Lb/a/a/c/g;)V

    :cond_0
    return-void
.end method

.method public U(Lb/a/a/e/g;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->n(Lb/a/a/e/g;)V

    :cond_0
    return-void
.end method

.method public V(Lb/a/a/c/h;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->o(Lb/a/a/c/h;)V

    :cond_0
    return-void
.end method

.method public W(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->h:F

    return-void
.end method

.method public X(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->W()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->P()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1, p1}, Lb/a/c/a/e;->e0(F)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1, v0}, Lb/a/c/a/e;->Y(I)V

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->X()V

    :cond_0
    return-void
.end method

.method public Y(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/e;->f0(I)V

    :cond_0
    return-void
.end method

.method public Z(Lcn/nubia/modules/videoRender/VirtualVideoViewImp;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/e;->g0(Lcn/nubia/modules/videoRender/b;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/nubia/video/mediaeditorview/o/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/nubia/video/mediaeditorview/o/a;->l(I)V

    :cond_0
    return-void
.end method

.method public a0(Landroid/view/Surface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->p(Landroid/view/Surface;)V

    :cond_0
    return-void
.end method

.method public b0(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lb/a/c/a/e;->h0(II)V

    :cond_0
    return-void
.end method

.method public c0(Lb/a/c/a/c$b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lb/a/c/a/c;->q(Lb/a/c/a/c$b;)V

    :cond_0
    return-void
.end method

.method public d0(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 1
    new-instance v6, Lcn/nubia/video/mediajni/VideoReverse;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcn/nubia/video/mediajni/VideoReverse;-><init>(Ljava/lang/String;Ljava/lang/String;IILcn/nubia/video/mediajni/VideoReverse$onCompleteListener;)V

    .line 2
    invoke-virtual {v6}, Lcn/nubia/video/mediajni/VideoReverse;->startReverse()V

    .line 3
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object p1

    iget-object p2, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-string p3, "video_edit_used"

    const-string p4, "reverse"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, p3, p4, v0}, Lb/a/b/a/j/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public e0(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;I)",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/textfilter/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getStartTime()J

    move-result-wide v2

    int-to-long v4, p2

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 5
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/nubia/video/mediaeditorview/textfilter/a;

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/a;->a()Lcn/nubia/video/mediaeditorview/textfilter/b;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/video/mediaeditorview/textfilter/b;->getEndTime()J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 6
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->f:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public f(ILjava/lang/String;I)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    const-string p1, "AAR-VideoEditorController"

    const-string p2, "addMediaEntry parameters MediaType error!"

    .line 1
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/a/c/a/b;->o(Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object p1

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v1

    invoke-virtual {v1}, Lb/a/c/a/b;->d()I

    move-result v1

    iget-object v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v2}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lb/a/c/a/b;->c()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lb/a/c/a/b;->j(II)V

    .line 5
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->N()F

    move-result v1

    invoke-virtual {p1, v1}, Lb/a/c/a/e;->e0(F)V

    if-nez p2, :cond_1

    .line 6
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1, p3}, Lb/a/c/a/e;->c0(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1, v0}, Lb/a/c/a/e;->c0(Z)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->P()I

    move-result p2

    invoke-virtual {p1, p2}, Lb/a/c/a/e;->B(I)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p1}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1, p2}, Lb/a/c/a/b;->o(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1, p3}, Lb/a/c/a/b;->k(I)V

    .line 12
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object p1

    invoke-virtual {p1, v0, p3}, Lb/a/c/a/b;->j(II)V

    .line 13
    iget-object p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {p1}, Lb/a/c/a/e;->d0()V

    :cond_3
    :goto_1
    return-void
.end method

.method public f0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->j0()V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lb/a/c/a/e;->B(I)V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 2

    const-string v0, "AAR-VideoEditorController"

    const-string v1, "cancel"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lb/a/c/a/c;->b()V

    :cond_0
    return-void
.end method

.method public i(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1}, Lb/a/c/a/e;->F()Lb/a/c/a/b;

    move-result-object v1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Lb/a/c/a/b;->s(I)V

    .line 4
    invoke-virtual {v1, p2}, Lb/a/c/a/b;->s(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    .line 5
    invoke-virtual {v0, p2}, Lb/a/c/a/b;->l(I)V

    .line 6
    invoke-virtual {v1, p2}, Lb/a/c/a/b;->l(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public k(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->H()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->G()I

    move-result v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v1}, Lb/a/c/a/e;->O()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    :cond_0
    invoke-static {}, Lb/a/b/a/j/a;->i()Lb/a/b/a/j/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "video_edit_used:"

    const-string v4, "clip"

    invoke-virtual {v0, v1, v3, v4, v2}, Lb/a/b/a/j/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0, p1}, Lb/a/c/a/e;->C(Z)V

    :cond_2
    return-void
.end method

.method public m(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "No Filter"

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    const/4 v2, -0x1

    move v3, v0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 3
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->c()I

    move-result v4

    if-le p2, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v4}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->a()I

    move-result v4

    if-ge p2, v4, :cond_0

    .line 4
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/nubia/video/mediaeditorview/simpleeditor/e;

    invoke-virtual {v1}, Lcn/nubia/video/mediaeditorview/simpleeditor/e;->b()Ljava/lang/String;

    move-result-object v1

    move v2, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    if-eq v2, p1, :cond_2

    .line 6
    iput v2, p0, Lcn/nubia/video/mediaeditorview/o/a;->n:I

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcn/nubia/video/mediaeditorview/o/a;->o:Z

    goto :goto_1

    .line 8
    :cond_2
    iput-boolean v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->o:Z

    .line 9
    :cond_3
    :goto_1
    iput-object v1, p0, Lcn/nubia/video/mediaeditorview/o/a;->p:Ljava/lang/String;

    return-object v1
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->J()Lb/a/c/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lb/a/c/a/b;->f()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public o()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->e:Ljava/util/ArrayList;

    return-object v0
.end method

.method public onComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    check-cast v0, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;

    invoke-virtual {v0}, Lcn/nubia/video/mediaeditorview/simpleeditor/SimpleVideoEditorActivity;->o()V

    .line 3
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    check-cast v0, Lb/a/c/a/d;

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lb/a/c/a/d;->E(Z)V

    .line 5
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->j0()V

    .line 6
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->A()V

    :cond_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->G()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->H()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public r()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/nubia/video/mediaeditorview/simpleeditor/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->i:Ljava/util/ArrayList;

    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    invoke-virtual {v0}, Lb/a/c/a/e;->R()Lb/a/c/a/b;

    move-result-object v0

    check-cast v0, Lb/a/c/a/d;

    invoke-virtual {v0}, Lb/a/c/a/d;->v()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public u()Lb/a/c/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    return-object v0
.end method

.method public v()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->L()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->M()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public x()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->N()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/e;->O()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/nubia/video/mediaeditorview/o/a;->a:Lb/a/c/a/e;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lb/a/c/a/c;->d()Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
