.class public Lcom/android/gallery3d/filtershow/editors/a0;
.super Lcom/android/gallery3d/filtershow/editors/c;
.source ""


# static fields
.field public static v:I = 0x7f08010e

.field static w:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field

.field static x:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private r:I

.field private s:I

.field protected t:Lcom/android/gallery3d/filtershow/controller/f;

.field u:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-class v0, Lcom/android/gallery3d/filtershow/controller/u;

    const-class v1, Lcom/android/gallery3d/filtershow/controller/a;

    const-class v2, Lcom/android/gallery3d/filtershow/controller/e;

    const-class v3, Lcom/android/gallery3d/filtershow/controller/q;

    const-class v4, Lcom/android/gallery3d/filtershow/controller/s;

    const-class v5, Lcom/android/gallery3d/filtershow/controller/r;

    const-class v6, Lcom/android/gallery3d/filtershow/controller/t;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v7, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    sget-object v8, Lcom/android/gallery3d/filtershow/controller/o;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v8, Lcom/android/gallery3d/filtershow/controller/o;->i:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    sget-object v7, Lcom/android/gallery3d/filtershow/controller/l;->i:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v7, Lcom/android/gallery3d/filtershow/controller/l;->i:Ljava/lang/String;

    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    sget-object v6, Lcom/android/gallery3d/filtershow/controller/n;->i:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v5, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v6, Lcom/android/gallery3d/filtershow/controller/n;->i:Ljava/lang/String;

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    sget-object v5, Lcom/android/gallery3d/filtershow/controller/j;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v4, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v5, Lcom/android/gallery3d/filtershow/controller/j;->i:Ljava/lang/String;

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    sget-object v4, Lcom/android/gallery3d/filtershow/controller/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v3, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    sget-object v4, Lcom/android/gallery3d/filtershow/controller/k;->e:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    const-class v3, Lcom/android/gallery3d/filtershow/controller/c;

    const-string v4, "ParameterInteger"

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    const-class v3, Lcom/android/gallery3d/filtershow/controller/v;

    invoke-virtual {v2, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    const-string v3, "ParameterActionAndInt"

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    const-string v2, "ParameterStyles"

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget v0, Lcom/android/gallery3d/filtershow/editors/a0;->v:I

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    return-void
.end method

.method protected constructor <init>(III)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;-><init>(I)V

    iput p2, p0, Lcom/android/gallery3d/filtershow/editors/a0;->r:I

    iput p3, p0, Lcom/android/gallery3d/filtershow/editors/a0;->s:I

    return-void
.end method

.method protected static U(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public F()V
    .locals 2

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/f;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {v1, v0}, Lcom/android/gallery3d/filtershow/controller/f;->c(Lcom/android/gallery3d/filtershow/controller/h;)V

    :cond_0
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/a0$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/a0$a;-><init>(Lcom/android/gallery3d/filtershow/editors/a0;)V

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/a0;->R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/widget/SeekBar;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->e:Landroid/widget/SeekBar;

    invoke-virtual {p1, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :goto_0
    return-void
.end method

.method protected Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V
    .locals 3

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/h;->m()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/gallery3d/filtershow/editors/a0;->x:Ljava/util/HashMap;

    :goto_0
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-string v2, "ParametricEditor"

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/f;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1, v0}, Lcom/android/gallery3d/filtershow/controller/h;->A(Lcom/android/gallery3d/filtershow/controller/f;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    check-cast p2, Landroid/view/ViewGroup;

    invoke-interface {v0, p2, p1, p0}, Lcom/android/gallery3d/filtershow/controller/f;->d(Landroid/view/ViewGroup;Lcom/android/gallery3d/filtershow/controller/h;Lcom/android/gallery3d/filtershow/editors/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string p2, "Error in loading Control "

    invoke-static {v2, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to find class for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " use "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/gallery3d/filtershow/editors/a0;->w:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method protected R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;
    .locals 1

    instance-of v0, p0, Lcom/android/gallery3d/filtershow/controller/h;

    if-eqz v0, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/h;

    return-object p1

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/controller/h;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/gallery3d/filtershow/controller/h;

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public S()Landroid/widget/SeekBar;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/controller/f;->b()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/SeekBar;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/SeekBar;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public T()V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/SeekBar;->isShown()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/f;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->n0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->k0()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/f;->h()I

    move-result v1

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    iget-byte v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->k:B

    sget-byte v1, Lcom/android/gallery3d/filtershow/editors/c;->q:B

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result p1

    and-int/2addr p1, v0

    const-string v0, " "

    const-string v1, ""

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    instance-of p1, p1, Lcom/android/gallery3d/filtershow/filters/f;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/f;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/f;->m0()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

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

.method public q(Landroid/content/Context;Landroid/widget/FrameLayout;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->q(Landroid/content/Context;Landroid/widget/FrameLayout;)V

    iget p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->s:I

    iget p2, p0, Lcom/android/gallery3d/filtershow/editors/a0;->r:I

    invoke-virtual {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/c;->M(II)V

    return-void
.end method
