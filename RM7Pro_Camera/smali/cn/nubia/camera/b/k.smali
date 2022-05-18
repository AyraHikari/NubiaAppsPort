.class public Lcn/nubia/camera/b/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/ba/f$a;
.implements Lcn/nubia/camera/k/k;
.implements Lcn/nubia/camera/q/m$a;
.implements Lcom/android/common/ui/d;


# static fields
.field static a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "[",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static t:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private A:Lcn/nubia/camera/k/ab$a;

.field private B:Landroid/os/Handler;

.field b:Lcn/nubia/camera/b/l$b;

.field private c:Landroid/view/View;

.field private d:Lcn/nubia/camera/extendedUI/c;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/TextView;

.field private g:Lcn/nubia/camera/k/ah;

.field private h:Lcn/nubia/camera/ad/a;

.field private i:Lcn/nubia/camera/zoom/c;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:F

.field private m:J

.field private n:J

.field private o:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:J

.field private q:Lcn/nubia/camera/b/j;

.field private r:Lcn/nubia/camera/aj/j;

.field private v:Lcn/nubia/camera/b/l;

.field private w:I

.field private x:Lcn/nubia/camera/b/g;

.field private y:Z

.field private z:Lcn/nubia/camera/b/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/k;->s:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/k;->t:Ljava/util/ArrayList;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcn/nubia/camera/b/k;->u:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, p0, Lcn/nubia/camera/b/k;->j:Z

    const-string v1, ""

    .line 60
    iput-object v1, p0, Lcn/nubia/camera/b/k;->k:Ljava/lang/String;

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Lcn/nubia/camera/b/k;->l:F

    const-wide/16 v1, 0x0

    .line 62
    iput-wide v1, p0, Lcn/nubia/camera/b/k;->m:J

    .line 63
    iput-wide v1, p0, Lcn/nubia/camera/b/k;->n:J

    const/4 v3, 0x0

    .line 64
    iput-object v3, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    .line 65
    iput-wide v1, p0, Lcn/nubia/camera/b/k;->p:J

    .line 67
    new-instance v1, Lcn/nubia/camera/b/j;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lcn/nubia/camera/b/j;-><init>(I)V

    iput-object v1, p0, Lcn/nubia/camera/b/k;->q:Lcn/nubia/camera/b/j;

    .line 68
    new-instance v1, Lcn/nubia/camera/aj/j;

    invoke-direct {v1}, Lcn/nubia/camera/aj/j;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/b/k;->r:Lcn/nubia/camera/aj/j;

    .line 173
    iput-boolean v0, p0, Lcn/nubia/camera/b/k;->y:Z

    .line 184
    new-instance v0, Lcn/nubia/camera/b/k$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/k$2;-><init>(Lcn/nubia/camera/b/k;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->z:Lcn/nubia/camera/b/g$a;

    .line 288
    new-instance v0, Lcn/nubia/camera/b/k$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/k$3;-><init>(Lcn/nubia/camera/b/k;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->b:Lcn/nubia/camera/b/l$b;

    .line 306
    new-instance v0, Lcn/nubia/camera/b/k$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/k$4;-><init>(Lcn/nubia/camera/b/k;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->A:Lcn/nubia/camera/k/ab$a;

    .line 330
    new-instance v0, Lcn/nubia/camera/b/k$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/b/k$5;-><init>(Lcn/nubia/camera/b/k;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->B:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;F)F
    .locals 0

    .line 50
    iput p1, p0, Lcn/nubia/camera/b/k;->l:F

    return p1
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcn/nubia/camera/b/k;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    return-object p0
.end method

.method private a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 277
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 278
    iget v1, p0, Lcn/nubia/camera/b/k;->l:F

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 279
    sget-object v1, Lcn/nubia/camera/b/k;->u:Ljava/util/HashMap;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private a(Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 2

    .line 484
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 485
    iput v1, v0, Landroid/os/Message;->what:I

    .line 486
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 487
    iget-object p1, p0, Lcn/nubia/camera/b/k;->B:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private a(Lcn/nubia/camera/af/a;)V
    .locals 3

    .line 122
    iget-object v0, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ae/a;->a(Lcn/nubia/camera/af/a;)V

    .line 123
    iget-object v0, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    .line 124
    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcn/nubia/camera/ba/b;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)Lcn/nubia/camera/af/b;

    move-result-object v1

    .line 123
    invoke-virtual {v0, p1, v1}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;)V

    .line 125
    iget-object v0, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0, p1}, Lcn/nubia/camera/ad/a;->b(Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k;->a(Landroid/hardware/camera2/TotalCaptureResult;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;Lcn/nubia/camera/af/a;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k;->a(Lcn/nubia/camera/af/a;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;Ljava/lang/String;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k;->a(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    if-ne v0, v1, :cond_1

    return-void

    .line 208
    :cond_1
    invoke-direct {p0, p1}, Lcn/nubia/camera/b/k;->b(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcn/nubia/camera/b/k;->k:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    invoke-direct {p0, v1, v0}, Lcn/nubia/camera/b/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 214
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "change scene from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/b/k;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "NormalAIControl"

    invoke-static {v2, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v1, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    invoke-virtual {v1}, Lcn/nubia/camera/k/ah;->m()Lcn/nubia/camera/k/y;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/k/y;->g()Lcn/nubia/camera/k/ad;

    move-result-object v1

    .line 217
    iget-object v2, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    invoke-static {v2, v0, v1}, Lcn/nubia/camera/b/n;->a(Ljava/util/HashMap;Ljava/util/HashMap;Lcn/nubia/camera/k/ad;)V

    .line 218
    iput-object p1, p0, Lcn/nubia/camera/b/k;->k:Ljava/lang/String;

    .line 219
    iput-object v0, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    .line 220
    iget-object p1, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    invoke-virtual {p1}, Lcn/nubia/camera/k/ah;->k()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/b/k;Z)Z
    .locals 0

    .line 50
    iput-boolean p1, p0, Lcn/nubia/camera/b/k;->y:Z

    return p1
.end method

.method private a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_1

    if-nez p2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 233
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/b/k;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcn/nubia/camera/b/k;->p:J

    return-wide p1
.end method

.method static synthetic b(Lcn/nubia/camera/b/k;)Ljava/lang/String;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->k:Ljava/lang/String;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 241
    sget-object v0, Lcn/nubia/camera/b/k;->u:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 242
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 244
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    .line 246
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-le v5, v6, :cond_1

    .line 247
    invoke-virtual {v1, v4, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 251
    :cond_2
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 252
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_3
    invoke-direct {p0, p1, v1}, Lcn/nubia/camera/b/k;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    if-nez v0, :cond_4

    .line 260
    invoke-static {p1}, Lcn/nubia/camera/b/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    invoke-direct {p0, v0, v1}, Lcn/nubia/camera/b/k;->a(Ljava/lang/String;Ljava/util/ArrayList;)Ljava/util/HashMap;

    move-result-object v0

    .line 264
    :cond_4
    sget-object v1, Lcn/nubia/camera/b/i;->f:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_6

    if-nez v0, :cond_5

    .line 267
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :cond_5
    const-string v1, "KEY_NUBIA_CHI_NB_SCENE_MODE"

    .line 269
    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    return-object v0
.end method

.method static synthetic c(Lcn/nubia/camera/b/k;)F
    .locals 0

    .line 50
    iget p0, p0, Lcn/nubia/camera/b/k;->l:F

    return p0
.end method

.method static synthetic d(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/b/j;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->q:Lcn/nubia/camera/b/j;

    return-object p0
.end method

.method static synthetic e(Lcn/nubia/camera/b/k;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/b/k;->j:Z

    return p0
.end method

.method static synthetic f(Lcn/nubia/camera/b/k;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->B:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic g(Lcn/nubia/camera/b/k;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcn/nubia/camera/b/k;->m:J

    return-wide v0
.end method

.method static synthetic h(Lcn/nubia/camera/b/k;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcn/nubia/camera/b/k;->n:J

    return-wide v0
.end method

.method static synthetic h()Ljava/util/ArrayList;
    .locals 1

    .line 50
    sget-object v0, Lcn/nubia/camera/b/k;->t:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i()Ljava/util/ArrayList;
    .locals 1

    .line 50
    sget-object v0, Lcn/nubia/camera/b/k;->s:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic i(Lcn/nubia/camera/b/k;)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/b/k;->l()V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/b/k;)J
    .locals 2

    .line 50
    iget-wide v0, p0, Lcn/nubia/camera/b/k;->p:J

    return-wide v0
.end method

.method private j()V
    .locals 3

    .line 94
    new-instance v0, Lcn/nubia/camera/extendedUI/c;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->c:Landroid/view/View;

    const v2, 0x7f09022b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/extendedUI/c;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    .line 95
    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/b/k;->e:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/b/k;->f:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcn/nubia/camera/b/k$1;

    invoke-direct {v1, p0}, Lcn/nubia/camera/b/k$1;-><init>(Lcn/nubia/camera/b/k;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    invoke-virtual {v0}, Lcn/nubia/camera/extendedUI/c;->b()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/an/a;->h()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iget-object v2, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method private k()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 475
    sget-object v1, Lcn/nubia/camera/b/k;->t:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 476
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 477
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method static synthetic k(Lcn/nubia/camera/b/k;)Ljava/util/ArrayList;
    .locals 0

    .line 50
    invoke-direct {p0}, Lcn/nubia/camera/b/k;->k()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/extendedUI/c;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    return-object p0
.end method

.method private l()V
    .locals 2

    .line 491
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 492
    iput v1, v0, Landroid/os/Message;->what:I

    .line 493
    iget-object v1, p0, Lcn/nubia/camera/b/k;->B:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/zoom/c;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->i:Lcn/nubia/camera/zoom/c;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/aj/j;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->r:Lcn/nubia/camera/aj/j;

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/b/k;)Lcn/nubia/camera/k/ah;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    return-object p0
.end method

.method static synthetic p(Lcn/nubia/camera/b/k;)Z
    .locals 0

    .line 50
    iget-boolean p0, p0, Lcn/nubia/camera/b/k;->y:Z

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/b/k;)Landroid/widget/ImageView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->e:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/b/k;)Landroid/widget/TextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcn/nubia/camera/b/k;->f:Landroid/widget/TextView;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 129
    iget-boolean v0, p0, Lcn/nubia/camera/b/k;->j:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "NormalAIControl"

    const-string v1, "start Classify"

    .line 132
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->A:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->a(Lcn/nubia/camera/k/ab$a;)V

    .line 134
    new-instance v0, Lcn/nubia/camera/b/l;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    invoke-direct {v0, v1}, Lcn/nubia/camera/b/l;-><init>(Lcn/nubia/camera/ad/a;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->v:Lcn/nubia/camera/b/l;

    .line 135
    iget v1, p0, Lcn/nubia/camera/b/k;->w:I

    invoke-virtual {v0, v1}, Lcn/nubia/camera/b/l;->a(I)V

    .line 136
    iget-object v0, p0, Lcn/nubia/camera/b/k;->v:Lcn/nubia/camera/b/l;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->b:Lcn/nubia/camera/b/l$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/b/l;->a(Lcn/nubia/camera/b/l$b;)V

    .line 137
    iget-object v0, p0, Lcn/nubia/camera/b/k;->v:Lcn/nubia/camera/b/l;

    invoke-virtual {v0}, Lcn/nubia/camera/b/l;->a()V

    .line 138
    new-instance v0, Lcn/nubia/camera/b/g;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    iget-object v2, p0, Lcn/nubia/camera/b/k;->z:Lcn/nubia/camera/b/g$a;

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/b/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/b/g$a;)V

    iput-object v0, p0, Lcn/nubia/camera/b/k;->x:Lcn/nubia/camera/b/g;

    .line 139
    invoke-virtual {v0}, Lcn/nubia/camera/b/g;->start()V

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcn/nubia/camera/b/k;->j:Z

    return-void
.end method

.method public a(IZ)V
    .locals 0

    .line 167
    iput p1, p0, Lcn/nubia/camera/b/k;->w:I

    .line 168
    iget-boolean p2, p0, Lcn/nubia/camera/b/k;->j:Z

    if-eqz p2, :cond_0

    .line 169
    iget-object p2, p0, Lcn/nubia/camera/b/k;->v:Lcn/nubia/camera/b/l;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/b/l;->a(I)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;Lcn/nubia/camera/zoom/c;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcn/nubia/camera/b/k;->c:Landroid/view/View;

    .line 85
    iput-object p2, p0, Lcn/nubia/camera/b/k;->h:Lcn/nubia/camera/ad/a;

    .line 86
    iput-object p3, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    .line 87
    iput-object p4, p0, Lcn/nubia/camera/b/k;->i:Lcn/nubia/camera/zoom/c;

    .line 88
    invoke-direct {p0}, Lcn/nubia/camera/b/k;->j()V

    .line 89
    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/b/k;->s:Ljava/util/ArrayList;

    sget-object p3, Lcn/nubia/camera/b/k;->a:Ljava/util/ArrayList;

    sget-object p4, Lcn/nubia/camera/b/k;->t:Ljava/util/ArrayList;

    invoke-static {p1, p2, p3, p4}, Lcn/nubia/camera/b/a;->a(Landroid/content/res/Resources;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 90
    sget-object p1, Lcn/nubia/camera/b/k;->u:Ljava/util/HashMap;

    invoke-static {p1}, Lcn/nubia/camera/b/a;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method public a([Lcn/nubia/camera/k/j;Landroid/graphics/Rect;Ljava/lang/Float;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 176
    array-length p1, p1

    if-lez p1, :cond_0

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcn/nubia/camera/b/k;->m:J

    .line 178
    iget-object p1, p0, Lcn/nubia/camera/b/k;->x:Lcn/nubia/camera/b/g;

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Lcn/nubia/camera/b/g;->a()V

    :cond_0
    return-void
.end method

.method public a_(I)V
    .locals 1

    .line 498
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->a(I)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 149
    monitor-enter p0

    .line 150
    :try_start_0
    iget-boolean v0, p0, Lcn/nubia/camera/b/k;->j:Z

    if-nez v0, :cond_0

    .line 151
    monitor-exit p0

    return-void

    :cond_0
    const-string v0, "NormalAIControl"

    const-string v1, "stop Classify "

    .line 153
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/b/k;->g:Lcn/nubia/camera/k/ah;

    iget-object v1, p0, Lcn/nubia/camera/b/k;->A:Lcn/nubia/camera/k/ab$a;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/k/ah;->b(Lcn/nubia/camera/k/ab$a;)V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/b/k;->v:Lcn/nubia/camera/b/l;

    invoke-virtual {v0}, Lcn/nubia/camera/b/l;->b()V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/b/k;->x:Lcn/nubia/camera/b/g;

    invoke-virtual {v0}, Lcn/nubia/camera/b/g;->b()V

    .line 157
    iget-object v0, p0, Lcn/nubia/camera/b/k;->B:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/c;->c(I)V

    const-string v0, ""

    .line 159
    invoke-direct {p0, v0}, Lcn/nubia/camera/b/k;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcn/nubia/camera/b/k;->j:Z

    .line 161
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public b(I)V
    .locals 1

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {v0, p1}, Lcn/nubia/camera/extendedUI/c;->b(I)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcn/nubia/camera/b/k;->o:Ljava/util/HashMap;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 511
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 512
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/c;->a(I)V

    :cond_0
    return-void
.end method

.method public e()V
    .locals 2

    .line 517
    iget-object v0, p0, Lcn/nubia/camera/b/k;->d:Lcn/nubia/camera/extendedUI/c;

    if-eqz v0, :cond_0

    .line 518
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/extendedUI/c;->b(I)V

    :cond_0
    return-void
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method
