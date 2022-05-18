.class public Lc/b/a/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:I

.field protected final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field protected final b:Landroid/content/Context;

.field protected final c:Lc/b/a/g;

.field protected final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final e:Lc/b/a/o/m;

.field protected final f:Lc/b/a/o/g;

.field private g:Lc/b/a/q/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/q/a<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field private i:Lc/b/a/n/c;

.field private j:Z

.field private k:I

.field private l:I

.field private m:Lc/b/a/r/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/d<",
            "-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private n:Ljava/lang/Float;

.field private o:Lc/b/a/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/e<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Float;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Lc/b/a/i;

.field private t:Z

.field private u:Lc/b/a/r/g/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/r/g/d<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private v:I

.field private w:I

.field private x:Lc/b/a/n/i/b;

.field private y:Lc/b/a/n/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lc/b/a/n/g<",
            "TResourceType;>;"
        }
    .end annotation
.end field

.field private z:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lc/b/a/q/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lc/b/a/g;",
            "Lc/b/a/o/m;",
            "Lc/b/a/o/g;",
            ")V"
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-static {}, Lc/b/a/s/a;->b()Lc/b/a/s/a;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/e;->i:Lc/b/a/n/c;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lc/b/a/e;->p:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Lc/b/a/e;->s:Lc/b/a/i;

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lc/b/a/e;->t:Z

    .line 12
    invoke-static {}, Lc/b/a/r/g/e;->d()Lc/b/a/r/g/d;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    const/4 v1, -0x1

    .line 13
    iput v1, p0, Lc/b/a/e;->v:I

    .line 14
    iput v1, p0, Lc/b/a/e;->w:I

    .line 15
    sget-object v1, Lc/b/a/n/i/b;->f:Lc/b/a/n/i/b;

    iput-object v1, p0, Lc/b/a/e;->x:Lc/b/a/n/i/b;

    .line 16
    invoke-static {}, Lc/b/a/n/k/d;->b()Lc/b/a/n/k/d;

    move-result-object v1

    iput-object v1, p0, Lc/b/a/e;->y:Lc/b/a/n/g;

    .line 17
    iput-object p1, p0, Lc/b/a/e;->b:Landroid/content/Context;

    .line 18
    iput-object p2, p0, Lc/b/a/e;->a:Ljava/lang/Class;

    .line 19
    iput-object p4, p0, Lc/b/a/e;->d:Ljava/lang/Class;

    .line 20
    iput-object p5, p0, Lc/b/a/e;->c:Lc/b/a/g;

    .line 21
    iput-object p6, p0, Lc/b/a/e;->e:Lc/b/a/o/m;

    .line 22
    iput-object p7, p0, Lc/b/a/e;->f:Lc/b/a/o/g;

    if-eqz p3, :cond_0

    .line 23
    new-instance v0, Lc/b/a/q/a;

    invoke-direct {v0, p3}, Lc/b/a/q/a;-><init>(Lc/b/a/q/f;)V

    :cond_0
    iput-object v0, p0, Lc/b/a/e;->g:Lc/b/a/q/a;

    const-string p4, "Context can\'t be null"

    .line 24
    invoke-static {p1, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p1, "LoadProvider must not be null"

    .line 25
    invoke-static {p3, p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method constructor <init>(Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/e;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/q/f<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lc/b/a/e<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 1
    iget-object v1, p3, Lc/b/a/e;->b:Landroid/content/Context;

    iget-object v2, p3, Lc/b/a/e;->a:Ljava/lang/Class;

    iget-object v5, p3, Lc/b/a/e;->c:Lc/b/a/g;

    iget-object v6, p3, Lc/b/a/e;->e:Lc/b/a/o/m;

    iget-object v7, p3, Lc/b/a/e;->f:Lc/b/a/o/g;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lc/b/a/e;-><init>(Landroid/content/Context;Ljava/lang/Class;Lc/b/a/q/f;Ljava/lang/Class;Lc/b/a/g;Lc/b/a/o/m;Lc/b/a/o/g;)V

    .line 2
    iget-object p1, p3, Lc/b/a/e;->h:Ljava/lang/Object;

    iput-object p1, p0, Lc/b/a/e;->h:Ljava/lang/Object;

    .line 3
    iget-boolean p1, p3, Lc/b/a/e;->j:Z

    iput-boolean p1, p0, Lc/b/a/e;->j:Z

    .line 4
    iget-object p1, p3, Lc/b/a/e;->i:Lc/b/a/n/c;

    iput-object p1, p0, Lc/b/a/e;->i:Lc/b/a/n/c;

    .line 5
    iget-object p1, p3, Lc/b/a/e;->x:Lc/b/a/n/i/b;

    iput-object p1, p0, Lc/b/a/e;->x:Lc/b/a/n/i/b;

    .line 6
    iget-boolean p1, p3, Lc/b/a/e;->t:Z

    iput-boolean p1, p0, Lc/b/a/e;->t:Z

    return-void
.end method

.method private d(Lc/b/a/r/h/j;)Lc/b/a/r/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;)",
            "Lc/b/a/r/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/e;->s:Lc/b/a/i;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lc/b/a/i;->c:Lc/b/a/i;

    iput-object v0, p0, Lc/b/a/e;->s:Lc/b/a/i;

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lc/b/a/e;->e(Lc/b/a/r/h/j;Lc/b/a/r/f;)Lc/b/a/r/b;

    move-result-object p1

    return-object p1
.end method

.method private e(Lc/b/a/r/h/j;Lc/b/a/r/f;)Lc/b/a/r/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;",
            "Lc/b/a/r/f;",
            ")",
            "Lc/b/a/r/b;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/e;->o:Lc/b/a/e;

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v1, p0, Lc/b/a/e;->A:Z

    if-nez v1, :cond_3

    .line 3
    iget-object v0, v0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    invoke-static {}, Lc/b/a/r/g/e;->d()Lc/b/a/r/g/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lc/b/a/e;->o:Lc/b/a/e;

    iget-object v1, p0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    iput-object v1, v0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    .line 5
    :cond_0
    iget-object v0, p0, Lc/b/a/e;->o:Lc/b/a/e;

    iget-object v1, v0, Lc/b/a/e;->s:Lc/b/a/i;

    if-nez v1, :cond_1

    .line 6
    invoke-direct {p0}, Lc/b/a/e;->j()Lc/b/a/i;

    move-result-object v1

    iput-object v1, v0, Lc/b/a/e;->s:Lc/b/a/i;

    .line 7
    :cond_1
    iget v0, p0, Lc/b/a/e;->w:I

    iget v1, p0, Lc/b/a/e;->v:I

    invoke-static {v0, v1}, Lc/b/a/t/h;->k(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lc/b/a/e;->o:Lc/b/a/e;

    iget v1, v0, Lc/b/a/e;->w:I

    iget v0, v0, Lc/b/a/e;->v:I

    invoke-static {v1, v0}, Lc/b/a/t/h;->k(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lc/b/a/e;->o:Lc/b/a/e;

    iget v1, p0, Lc/b/a/e;->w:I

    iget v2, p0, Lc/b/a/e;->v:I

    invoke-virtual {v0, v1, v2}, Lc/b/a/e;->p(II)Lc/b/a/e;

    .line 9
    :cond_2
    new-instance v0, Lc/b/a/r/f;

    invoke-direct {v0, p2}, Lc/b/a/r/f;-><init>(Lc/b/a/r/c;)V

    .line 10
    iget-object p2, p0, Lc/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lc/b/a/e;->s:Lc/b/a/i;

    invoke-direct {p0, p1, p2, v1, v0}, Lc/b/a/e;->o(Lc/b/a/r/h/j;FLc/b/a/i;Lc/b/a/r/c;)Lc/b/a/r/b;

    move-result-object p2

    const/4 v1, 0x1

    .line 11
    iput-boolean v1, p0, Lc/b/a/e;->A:Z

    .line 12
    iget-object v1, p0, Lc/b/a/e;->o:Lc/b/a/e;

    invoke-direct {v1, p1, v0}, Lc/b/a/e;->e(Lc/b/a/r/h/j;Lc/b/a/r/f;)Lc/b/a/r/b;

    move-result-object p1

    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Lc/b/a/e;->A:Z

    .line 14
    invoke-virtual {v0, p2, p1}, Lc/b/a/r/f;->l(Lc/b/a/r/b;Lc/b/a/r/b;)V

    return-object v0

    .line 15
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_4
    iget-object v0, p0, Lc/b/a/e;->n:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 17
    new-instance v0, Lc/b/a/r/f;

    invoke-direct {v0, p2}, Lc/b/a/r/f;-><init>(Lc/b/a/r/c;)V

    .line 18
    iget-object p2, p0, Lc/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lc/b/a/e;->s:Lc/b/a/i;

    invoke-direct {p0, p1, p2, v1, v0}, Lc/b/a/e;->o(Lc/b/a/r/h/j;FLc/b/a/i;Lc/b/a/r/c;)Lc/b/a/r/b;

    move-result-object p2

    .line 19
    iget-object v1, p0, Lc/b/a/e;->n:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lc/b/a/e;->j()Lc/b/a/i;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lc/b/a/e;->o(Lc/b/a/r/h/j;FLc/b/a/i;Lc/b/a/r/c;)Lc/b/a/r/b;

    move-result-object p1

    .line 20
    invoke-virtual {v0, p2, p1}, Lc/b/a/r/f;->l(Lc/b/a/r/b;Lc/b/a/r/b;)V

    return-object v0

    .line 21
    :cond_5
    iget-object v0, p0, Lc/b/a/e;->p:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lc/b/a/e;->s:Lc/b/a/i;

    invoke-direct {p0, p1, v0, v1, p2}, Lc/b/a/e;->o(Lc/b/a/r/h/j;FLc/b/a/i;Lc/b/a/r/c;)Lc/b/a/r/b;

    move-result-object p1

    return-object p1
.end method

.method private j()Lc/b/a/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lc/b/a/e;->s:Lc/b/a/i;

    sget-object v1, Lc/b/a/i;->d:Lc/b/a/i;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lc/b/a/i;->c:Lc/b/a/i;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v1, Lc/b/a/i;->c:Lc/b/a/i;

    if-ne v0, v1, :cond_1

    .line 4
    sget-object v0, Lc/b/a/i;->b:Lc/b/a/i;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lc/b/a/i;->a:Lc/b/a/i;

    :goto_0
    return-object v0
.end method

.method private o(Lc/b/a/r/h/j;FLc/b/a/i;Lc/b/a/r/c;)Lc/b/a/r/b;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;F",
            "Lc/b/a/i;",
            "Lc/b/a/r/c;",
            ")",
            "Lc/b/a/r/b;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 1
    iget-object v1, v0, Lc/b/a/e;->g:Lc/b/a/q/a;

    iget-object v2, v0, Lc/b/a/e;->h:Ljava/lang/Object;

    iget-object v3, v0, Lc/b/a/e;->i:Lc/b/a/n/c;

    iget-object v4, v0, Lc/b/a/e;->b:Landroid/content/Context;

    iget-object v8, v0, Lc/b/a/e;->q:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lc/b/a/e;->k:I

    iget-object v10, v0, Lc/b/a/e;->r:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lc/b/a/e;->l:I

    iget-object v12, v0, Lc/b/a/e;->B:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lc/b/a/e;->C:I

    iget-object v14, v0, Lc/b/a/e;->m:Lc/b/a/r/d;

    move-object/from16 p1, v1

    iget-object v1, v0, Lc/b/a/e;->c:Lc/b/a/g;

    invoke-virtual {v1}, Lc/b/a/g;->p()Lc/b/a/n/i/c;

    move-result-object v16

    iget-object v1, v0, Lc/b/a/e;->y:Lc/b/a/n/g;

    move-object/from16 v17, v1

    iget-object v1, v0, Lc/b/a/e;->d:Ljava/lang/Class;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lc/b/a/e;->t:Z

    move/from16 v19, v1

    iget-object v1, v0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    move-object/from16 v20, v1

    iget v1, v0, Lc/b/a/e;->w:I

    move/from16 v21, v1

    iget v1, v0, Lc/b/a/e;->v:I

    move/from16 v22, v1

    iget-object v1, v0, Lc/b/a/e;->x:Lc/b/a/n/i/b;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    invoke-static/range {v1 .. v23}, Lc/b/a/r/a;->u(Lc/b/a/q/f;Ljava/lang/Object;Lc/b/a/n/c;Landroid/content/Context;Lc/b/a/i;Lc/b/a/r/h/j;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILc/b/a/r/d;Lc/b/a/r/c;Lc/b/a/n/i/c;Lc/b/a/n/g;Ljava/lang/Class;ZLc/b/a/r/g/d;IILc/b/a/n/i/b;)Lc/b/a/r/a;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method a(Lc/b/a/r/g/d;)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/g/d<",
            "TTranscodeType;>;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Animation factory must not be null!"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc/b/a/e;->u:Lc/b/a/r/g/d;

    return-object p0
.end method

.method b()V
    .locals 0

    return-void
.end method

.method c()V
    .locals 0

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lc/b/a/e;->f()Lc/b/a/e;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lc/b/a/e;

    .line 2
    iget-object v1, p0, Lc/b/a/e;->g:Lc/b/a/q/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lc/b/a/q/a;->g()Lc/b/a/q/a;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lc/b/a/e;->g:Lc/b/a/q/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public g(Lc/b/a/n/e;)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/e<",
            "TDataType;TResourceType;>;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/e;->g:Lc/b/a/q/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/b/a/q/a;->h(Lc/b/a/n/e;)V

    :cond_0
    return-object p0
.end method

.method public h(Lc/b/a/n/i/b;)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/i/b;",
            ")",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/e;->x:Lc/b/a/n/i/b;

    return-object p0
.end method

.method public i(I)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lc/b/a/e;->l:I

    return-object p0
.end method

.method public k(Landroid/widget/ImageView;)Lc/b/a/r/h/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    if-eqz p1, :cond_3

    .line 2
    iget-boolean v0, p0, Lc/b/a/e;->z:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lc/b/a/e$a;->a:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lc/b/a/e;->c()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lc/b/a/e;->b()V

    .line 6
    :cond_2
    :goto_0
    iget-object v0, p0, Lc/b/a/e;->c:Lc/b/a/g;

    iget-object v1, p0, Lc/b/a/e;->d:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lc/b/a/g;->c(Landroid/widget/ImageView;Ljava/lang/Class;)Lc/b/a/r/h/j;

    move-result-object p1

    invoke-virtual {p0, p1}, Lc/b/a/e;->l(Lc/b/a/r/h/j;)Lc/b/a/r/h/j;

    return-object p1

    .line 7
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l(Lc/b/a/r/h/j;)Lc/b/a/r/h/j;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lc/b/a/r/h/j<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lc/b/a/t/h;->a()V

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v0, p0, Lc/b/a/e;->j:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lc/b/a/r/h/j;->h()Lc/b/a/r/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Lc/b/a/r/b;->clear()V

    .line 5
    iget-object v1, p0, Lc/b/a/e;->e:Lc/b/a/o/m;

    invoke-virtual {v1, v0}, Lc/b/a/o/m;->c(Lc/b/a/r/b;)V

    .line 6
    invoke-interface {v0}, Lc/b/a/r/b;->a()V

    .line 7
    :cond_0
    invoke-direct {p0, p1}, Lc/b/a/e;->d(Lc/b/a/r/h/j;)Lc/b/a/r/b;

    move-result-object v0

    .line 8
    invoke-interface {p1, v0}, Lc/b/a/r/h/j;->k(Lc/b/a/r/b;)V

    .line 9
    iget-object v1, p0, Lc/b/a/e;->f:Lc/b/a/o/g;

    invoke-interface {v1, p1}, Lc/b/a/o/g;->a(Lc/b/a/o/h;)V

    .line 10
    iget-object v1, p0, Lc/b/a/e;->e:Lc/b/a/o/m;

    invoke-virtual {v1, v0}, Lc/b/a/o/m;->f(Lc/b/a/r/b;)V

    return-object p1

    .line 11
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must first set a model (try #load())"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null Target"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m(Lc/b/a/r/d;)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/r/d<",
            "-TModelType;TTranscodeType;>;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/e;->m:Lc/b/a/r/d;

    return-object p0
.end method

.method public n(Ljava/lang/Object;)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lc/b/a/e;->h:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lc/b/a/e;->j:Z

    return-object p0
.end method

.method public p(II)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lc/b/a/t/h;->k(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput p1, p0, Lc/b/a/e;->w:I

    .line 3
    iput p2, p0, Lc/b/a/e;->v:I

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(I)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iput p1, p0, Lc/b/a/e;->k:I

    return-object p0
.end method

.method public r(Lc/b/a/n/c;)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/c;",
            ")",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const-string v0, "Signature must not be null"

    .line 1
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 2
    iput-object p1, p0, Lc/b/a/e;->i:Lc/b/a/n/c;

    return-object p0
.end method

.method public s(Z)Lc/b/a/e;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 1
    iput-boolean p1, p0, Lc/b/a/e;->t:Z

    return-object p0
.end method

.method public t(Lc/b/a/n/b;)Lc/b/a/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc/b/a/n/b<",
            "TDataType;>;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lc/b/a/e;->g:Lc/b/a/q/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lc/b/a/q/a;->i(Lc/b/a/n/b;)V

    :cond_0
    return-object p0
.end method

.method public varargs u([Lc/b/a/n/g;)Lc/b/a/e;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lc/b/a/n/g<",
            "TResourceType;>;)",
            "Lc/b/a/e<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lc/b/a/e;->z:Z

    .line 2
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget-object p1, p1, v0

    iput-object p1, p0, Lc/b/a/e;->y:Lc/b/a/n/g;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lc/b/a/n/d;

    invoke-direct {v0, p1}, Lc/b/a/n/d;-><init>([Lc/b/a/n/g;)V

    iput-object v0, p0, Lc/b/a/e;->y:Lc/b/a/n/g;

    :goto_0
    return-object p0
.end method
