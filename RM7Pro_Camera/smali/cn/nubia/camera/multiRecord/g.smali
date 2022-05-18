.class public Lcn/nubia/camera/multiRecord/g;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/z;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/multiRecord/g$a;
    }
.end annotation


# static fields
.field static a:Lcn/nubia/camera/multiRecord/d; = null

.field static b:I = 0x1


# instance fields
.field private A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private C:Lcom/android/common/ui/a/b;

.field private D:Lcom/android/common/ui/RotateImageView;

.field private E:Landroid/view/View;

.field private F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private G:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private H:Lcom/android/common/ui/RotateImageView;

.field private I:Lcom/android/common/ui/RotateImageView;

.field private J:Landroid/view/View;

.field private K:Landroid/view/View;

.field private L:Landroid/view/View;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/view/ViewGroup;

.field private Q:Landroid/widget/ImageView;

.field private R:Landroid/widget/ImageView;

.field private S:Landroid/widget/ImageView;

.field private T:Landroid/widget/ImageView;

.field private U:Landroid/widget/ImageView;

.field private V:Landroid/widget/ImageView;

.field private W:Landroid/widget/ImageView;

.field private X:Z

.field private Y:Lcn/nubia/camera/multiRecord/SelectRectView;

.field private Z:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aa:Z

.field c:Lcn/nubia/camera/multiRecord/m;

.field i:Lcn/nubia/camera/multiRecord/g$a;

.field j:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field k:Ljava/lang/String;

.field l:F

.field m:I

.field n:Ljava/lang/String;

.field o:F

.field p:I

.field q:Ljava/lang/String;

.field r:F

.field s:I

.field t:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

.field v:Lcn/nubia/camera/g/c;

.field private w:Lcn/nubia/camera/multiRecord/h;

.field private x:J

.field private y:Lcn/nubia/camera/multiRecord/l;

.field private z:Lcn/nubia/camera/multiRecord/d;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 105
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    .line 187
    new-instance v0, Lcn/nubia/camera/multiRecord/g$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$a;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->i:Lcn/nubia/camera/multiRecord/g$a;

    .line 962
    new-instance v0, Lcn/nubia/camera/multiRecord/g$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$6;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->j:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1103
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1104
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->l:F

    const/4 v1, -0x1

    .line 1105
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    .line 1107
    sget-object v2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1108
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1109
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    .line 1111
    sget-object v2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1112
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1113
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    .line 1234
    new-instance v0, Lcn/nubia/camera/multiRecord/g$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$9;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->t:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 1285
    new-instance v0, Lcn/nubia/camera/multiRecord/g$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$10;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 1306
    new-instance v0, Lcn/nubia/camera/multiRecord/g$11;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$11;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->v:Lcn/nubia/camera/g/c;

    const/4 v0, 0x0

    .line 1314
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    return-void
.end method

.method private constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)V
    .locals 3

    const/4 v0, 0x1

    .line 110
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    .line 100
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    .line 187
    new-instance v0, Lcn/nubia/camera/multiRecord/g$a;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$a;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->i:Lcn/nubia/camera/multiRecord/g$a;

    .line 962
    new-instance v0, Lcn/nubia/camera/multiRecord/g$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$6;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->j:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 1103
    sget-object v0, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1104
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->l:F

    const/4 v1, -0x1

    .line 1105
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    .line 1107
    sget-object v2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    .line 1108
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->o:F

    .line 1109
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    .line 1111
    sget-object v2, Lcn/nubia/b/e;->a:Ljava/lang/String;

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    .line 1112
    iput v0, p0, Lcn/nubia/camera/multiRecord/g;->r:F

    .line 1113
    iput v1, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    .line 1234
    new-instance v0, Lcn/nubia/camera/multiRecord/g$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$9;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->t:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 1285
    new-instance v0, Lcn/nubia/camera/multiRecord/g$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$10;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    .line 1306
    new-instance v0, Lcn/nubia/camera/multiRecord/g$11;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$11;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->v:Lcn/nubia/camera/g/c;

    const/4 v0, 0x0

    .line 1314
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    .line 111
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    .line 112
    new-instance p2, Lcn/nubia/camera/multiRecord/h;

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    invoke-direct {p2, p1, v0}, Lcn/nubia/camera/multiRecord/h;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    .line 113
    invoke-virtual {p2, p0}, Lcn/nubia/camera/multiRecord/h;->a(Lcn/nubia/camera/bb/z;)V

    .line 114
    new-instance p2, Lcn/nubia/camera/multiRecord/m;

    invoke-direct {p2, p1, p0}, Lcn/nubia/camera/multiRecord/m;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/g;)V

    iput-object p2, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    .line 115
    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcn/nubia/camera/multiRecord/m;->a(Landroid/content/res/Resources;)V

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->o()V

    return-void
.end method

.method static synthetic B(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic D(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/h;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    return-object p0
.end method

.method static synthetic E(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    return-object p0
.end method

.method static synthetic F(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic G(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic H(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic I(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic J(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private J()V
    .locals 6

    .line 1331
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    array-length v0, v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1334
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 1335
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->getCameraIdMap()Ljava/util/HashMap;

    move-result-object v1

    .line 1337
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v2

    const/4 v4, -0x1

    if-eqz v2, :cond_1

    .line 1338
    iget v0, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    goto :goto_0

    .line 1339
    :cond_1
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1340
    iget v0, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    goto :goto_0

    .line 1341
    :cond_2
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v2, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    const/4 v5, 0x3

    aget-object v2, v2, v5

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1342
    iget v0, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    goto :goto_0

    :cond_3
    move v0, v4

    :goto_0
    if-eq v0, v4, :cond_4

    .line 1345
    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic K(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private K()V
    .locals 10

    .line 1350
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1352
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 1355
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1356
    iget-object v7, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_0

    move v7, v3

    goto :goto_1

    :cond_0
    move v7, v2

    :goto_1
    or-int/2addr v4, v7

    .line 1357
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cam"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, "_key"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_value"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    invoke-virtual {v9, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_1
    const-string v1, "3In1_triggered"

    .line 1361
    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1364
    :cond_2
    iget-boolean v1, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    const-string v3, "record_switch"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1365
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    goto :goto_2

    :cond_3
    const/4 v1, 0x2

    :goto_2
    const-string v3, "mcvid_cam_num"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1366
    invoke-static {v0}, Lcn/nubia/camera/ba/g;->b(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    .line 1367
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    .line 1368
    iput-boolean v2, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    return-void
.end method

.method static synthetic L(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private L()[I
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 1372
    iget v2, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    const/4 v4, 0x1

    aput v2, v1, v4

    iget v2, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    const/4 v4, 0x2

    aput v2, v1, v4

    :goto_0
    if-ge v3, v0, :cond_2

    move v2, v3

    :goto_1
    if-ge v2, v0, :cond_1

    .line 1375
    aget v4, v1, v3

    aget v5, v1, v2

    if-le v4, v5, :cond_0

    .line 1376
    aget v4, v1, v3

    .line 1377
    aget v5, v1, v2

    aput v5, v1, v3

    .line 1378
    aput v4, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private M()V
    .locals 5

    .line 1386
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mc_mode"

    const-string v2, "photo"

    .line 1387
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1388
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic M(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->N()V

    return-void
.end method

.method static synthetic N(Lcn/nubia/camera/multiRecord/g;)Lcom/android/preference/PreferenceGroup;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p0

    return-object p0
.end method

.method private N()V
    .locals 8

    .line 1392
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mc_mode"

    const-string v2, "video"

    .line 1393
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1394
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->u()Lcom/android/preference/c;

    move-result-object v1

    const v2, 0x7f0f0294

    invoke-virtual {p0, v2}, Lcn/nubia/camera/multiRecord/g;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "pref_key_save_original_video_key"

    invoke-virtual {v1, v3, v2}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcvid_save_origin"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    iget v1, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    const/4 v2, 0x2

    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    .line 1397
    :goto_0
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/SelectRectView;->getCameraIdMap()Ljava/util/HashMap;

    move-result-object v3

    const-string v4, "_"

    if-ne v1, v2, :cond_1

    .line 1399
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    iget v6, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    iget v5, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1401
    :cond_1
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->L()[I

    move-result-object v5

    .line 1402
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v7, 0x0

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget v7, v5, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v2, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    const-string v3, "mcvid_cam_descrip"

    .line 1404
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "mcvid_cam_num"

    .line 1405
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1406
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/af/a;->X:Lcn/nubia/camera/af/a;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->c()Lcn/nubia/camera/af/b;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4, v0}, Lcn/nubia/camera/ba/g;->a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/af/a;Lcn/nubia/camera/af/b;Lcn/nubia/camera/zoom/c;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic O(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->s()V

    return-void
.end method

.method static synthetic P(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic Q(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic R(Lcn/nubia/camera/multiRecord/g;)J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcn/nubia/camera/multiRecord/g;->x:J

    return-wide v0
.end method

.method static synthetic S(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/g;J)J
    .locals 0

    .line 59
    iput-wide p1, p0, Lcn/nubia/camera/multiRecord/g;->x:J

    return-wide p1
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)Lcn/nubia/camera/multiRecord/g;
    .locals 1

    .line 119
    new-instance v0, Lcn/nubia/camera/multiRecord/g;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/multiRecord/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/multiRecord/l;)V

    return-object v0
.end method

.method private a(Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V
    .locals 1

    .line 564
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    if-ne p1, v0, :cond_0

    const-string p1, "1x"

    .line 565
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 567
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    if-ne p1, v0, :cond_1

    const-string p1, "0.5x"

    .line 568
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 570
    :cond_1
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    if-ne p1, v0, :cond_2

    const-string p1, "2x"

    .line 571
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 573
    :cond_2
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v0, v0, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    if-ne p1, v0, :cond_3

    const-string p1, "5x"

    .line 574
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/g;Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcn/nubia/camera/multiRecord/g;->a(Lcn/nubia/camera/multiRecord/a;Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/g;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/g;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 1410
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "mc_mode"

    .line 1411
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    invoke-static {v0}, Lcn/nubia/camera/ba/g;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/multiRecord/g;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/g;)Landroid/view/ViewGroup;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->P:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/g;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/multiRecord/g;Z)Z
    .locals 0

    .line 59
    iput-boolean p1, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/SelectRectView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    .line 974
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 976
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .line 235
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->e(Landroid/view/View;)V

    .line 237
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    const v0, 0x7f090234

    .line 238
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/content/res/Resources;)V

    const v0, 0x7f090217

    .line 240
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 241
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f090218

    .line 242
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 244
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->k(Landroid/view/View;)V

    .line 246
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->j(Landroid/view/View;)V

    const v0, 0x7f090363

    .line 248
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 249
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->t:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f090364

    .line 250
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->G:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Z)V

    .line 253
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->i(Landroid/view/View;)V

    .line 255
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->h(Landroid/view/View;)V

    .line 257
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->g(Landroid/view/View;)V

    .line 259
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->f(Landroid/view/View;)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09025f

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->J:Landroid/view/View;

    .line 264
    new-instance v0, Lcn/nubia/camera/multiRecord/g$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$1;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->m()V

    return-void
.end method

.method private f(I)Lcn/nubia/camera/multiRecord/a;
    .locals 1

    if-eqz p1, :cond_5

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1221
    :cond_0
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->c:Lcn/nubia/camera/multiRecord/a;

    return-object p1

    .line 1219
    :cond_1
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->b:Lcn/nubia/camera/multiRecord/a;

    return-object p1

    .line 1225
    :cond_2
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->e:Lcn/nubia/camera/multiRecord/a;

    return-object p1

    .line 1223
    :cond_3
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->d:Lcn/nubia/camera/multiRecord/a;

    return-object p1

    .line 1229
    :cond_4
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->g:Lcn/nubia/camera/multiRecord/a;

    return-object p1

    .line 1227
    :cond_5
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object p1, p1, Lcn/nubia/camera/multiRecord/d;->f:Lcn/nubia/camera/multiRecord/a;

    return-object p1
.end method

.method static synthetic f(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0901d9

    .line 329
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Q:Landroid/widget/ImageView;

    .line 330
    new-instance v1, Lcn/nubia/camera/multiRecord/g$12;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$12;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0901d8

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->R:Landroid/widget/ImageView;

    .line 357
    new-instance v1, Lcn/nubia/camera/multiRecord/g$13;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$13;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090290

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->S:Landroid/widget/ImageView;

    .line 387
    new-instance v1, Lcn/nubia/camera/multiRecord/g$14;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$14;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090291

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->T:Landroid/widget/ImageView;

    .line 409
    new-instance v1, Lcn/nubia/camera/multiRecord/g$15;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$15;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090324

    .line 428
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->U:Landroid/widget/ImageView;

    .line 429
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 430
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->v:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 431
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->w:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 432
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->x:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 433
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->y:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 434
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->U:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/camera/multiRecord/g$16;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$16;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090325

    .line 444
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->V:Landroid/widget/ImageView;

    .line 445
    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 446
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->v:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 447
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->w:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 448
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v1, v1, Lcn/nubia/camera/multiRecord/m;->y:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 449
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->V:Landroid/widget/ImageView;

    new-instance v1, Lcn/nubia/camera/multiRecord/g$17;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$17;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090326

    .line 459
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->W:Landroid/widget/ImageView;

    .line 460
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 461
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->v:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->w:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 463
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->x:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 464
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->y:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 465
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->W:Landroid/widget/ImageView;

    new-instance v0, Lcn/nubia/camera/multiRecord/g$18;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$18;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/multiRecord/g;)Lcom/android/common/ui/RotateImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    return-object p0
.end method

.method private g(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f090251

    .line 513
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->P:Landroid/view/ViewGroup;

    const v0, 0x7f09024c

    .line 514
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->O:Landroid/widget/TextView;

    const v0, 0x7f09024d

    .line 515
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->K:Landroid/view/View;

    .line 516
    new-instance v1, Lcn/nubia/camera/multiRecord/g$19;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$19;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f09024e

    .line 537
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->M:Landroid/widget/TextView;

    const v0, 0x7f09024f

    .line 538
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->L:Landroid/view/View;

    .line 539
    new-instance v1, Lcn/nubia/camera/multiRecord/g$2;

    invoke-direct {v1, p0}, Lcn/nubia/camera/multiRecord/g$2;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090250

    .line 560
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->N:Landroid/widget/TextView;

    return-void
.end method

.method static synthetic h(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090203

    .line 588
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    .line 589
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    if-nez v0, :cond_0

    const v0, 0x7f080149

    goto :goto_0

    :cond_0
    const v0, 0x7f08014a

    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 590
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 591
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    new-instance v0, Lcn/nubia/camera/multiRecord/g$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$3;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 634
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic i(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09009c

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    .line 639
    new-instance v0, Lcn/nubia/camera/multiRecord/g$4;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$4;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 648
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic j(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private j(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09036c

    .line 700
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->E:Landroid/view/View;

    const v0, 0x7f09024a

    .line 701
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/RotateImageView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    .line 702
    new-instance v0, Lcn/nubia/camera/multiRecord/g$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$5;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 714
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p0, p1}, Lcn/nubia/camera/multiRecord/g;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic k(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/l;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    return-object p0
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f0902b5

    .line 1119
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/multiRecord/SelectRectView;

    iput-object p1, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    .line 1120
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget v0, v0, Lcn/nubia/camera/multiRecord/m;->r:I

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->setDisplayAllMarge(I)V

    .line 1122
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    new-instance v0, Lcn/nubia/camera/multiRecord/g$8;

    invoke-direct {v0, p0}, Lcn/nubia/camera/multiRecord/g$8;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/SelectRectView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic l(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private m()V
    .locals 3

    .line 478
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->n()V

    .line 479
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 493
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 494
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 495
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 484
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Q:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 481
    :cond_3
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->n()V

    return-void
.end method

.method static synthetic n(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/ImageView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->T:Landroid/widget/ImageView;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 503
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Q:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 504
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->R:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 505
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->S:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->T:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->U:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->V:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 509
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->W:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/multiRecord/d;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->z:Lcn/nubia/camera/multiRecord/d;

    return-object p0
.end method

.method private o()V
    .locals 9

    .line 652
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->d()Lcn/nubia/camera/d/c;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    if-eq v0, v1, :cond_7

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 653
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->a()Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 654
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const-string v0, "MultiRecordFragment"

    const-string v1, "onCancelButtonClick"

    .line 657
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 658
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    .line 659
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v1

    const/4 v2, 0x7

    const/4 v3, 0x5

    const/16 v4, 0x8

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-ne v1, v2, :cond_4

    .line 660
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1, v3}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 661
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v2, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    invoke-static {v2, v0, v5}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lcn/nubia/camera/multiRecord/a;

    iput-object v2, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 662
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/multiRecord/m;->d(Z)V

    .line 663
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    array-length v2, v1

    move v3, v6

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v7, v1, v3

    .line 664
    sget-object v8, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v8, v8, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v7, v8}, Lcn/nubia/camera/multiRecord/a;->b(Lcn/nubia/camera/multiRecord/a;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 665
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    iget-object v1, v1, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v7, v1, v0}, Lcn/nubia/camera/multiRecord/a;->a(Lcn/nubia/camera/multiRecord/a;Z)V

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 669
    :cond_2
    :goto_1
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->z:Lcn/nubia/camera/multiRecord/d;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 670
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    new-array v2, v5, [Lcn/nubia/camera/multiRecord/a;

    iget-object v3, v1, Lcn/nubia/camera/multiRecord/d;->a:Lcn/nubia/camera/multiRecord/a;

    aput-object v3, v2, v6

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v3, v6

    aput-object v3, v2, v0

    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v3, v3, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v0, v3, v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    const/4 v0, 0x3

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    iget-object v5, v5, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    aget-object v3, v5, v3

    aput-object v3, v2, v0

    invoke-virtual {v1, v2}, Lcn/nubia/camera/multiRecord/d;->a([Lcn/nubia/camera/multiRecord/a;)V

    .line 671
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f080240

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 672
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    .line 673
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->e:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_3

    .line 674
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 676
    :cond_3
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->n()V

    goto/16 :goto_2

    .line 678
    :cond_4
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v1

    if-eq v1, v3, :cond_5

    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 679
    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v1

    if-eqz v1, :cond_5

    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 680
    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v1

    if-ne v1, v0, :cond_7

    .line 681
    :cond_5
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v1

    sget-object v2, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v1, v2, :cond_6

    return-void

    .line 684
    :cond_6
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1, v5}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 685
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/m;->a()V

    .line 686
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/multiRecord/m;->a(Z)V

    .line 688
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    .line 689
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v0}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 690
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v1

    new-instance v2, Lcn/nubia/camera/af/b;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->l()Ljava/lang/String;

    move-result-object v3

    new-array v0, v0, [Ljava/lang/String;

    .line 691
    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/b/e;->c()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v6

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v5

    invoke-virtual {v5}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v0, v5}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 690
    invoke-virtual {v1, v2}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/b;)V

    .line 693
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 694
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v4}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 695
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->n()V

    :cond_7
    :goto_2
    return-void
.end method

.method private p()V
    .locals 2

    .line 723
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 724
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 725
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->e()V

    .line 726
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 727
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 728
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 729
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 730
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 731
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/multiRecord/g;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->J()V

    return-void
.end method

.method static synthetic q(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 982
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->d()V

    .line 983
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/RotateImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 984
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->E:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f08033a

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->M:Landroid/widget/TextView;

    return-object p0
.end method

.method private r()V
    .locals 2

    .line 991
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 992
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->E:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 993
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    const v1, 0x7f080338

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    return-void
.end method

.method static synthetic s(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->O:Landroid/widget/TextView;

    return-object p0
.end method

.method private s()V
    .locals 5

    const/4 v0, 0x0

    .line 1321
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 1316
    iput-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->aa:Z

    .line 1317
    iget v2, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 1318
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    .line 1319
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->L()[I

    move-result-object v2

    .line 1320
    iget-object v3, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    invoke-virtual {v3}, Lcn/nubia/camera/multiRecord/SelectRectView;->getCameraIdMap()Ljava/util/HashMap;

    move-result-object v3

    .line 1321
    iget-object v4, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    aget v0, v2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1322
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    const/4 v4, 0x1

    aget v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1323
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    const/4 v4, 0x2

    aget v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1324
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->J()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1326
    iput-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Z:Ljava/util/HashMap;

    :goto_0
    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/multiRecord/g;)Landroid/widget/TextView;
    .locals 0

    .line 59
    iget-object p0, p0, Lcn/nubia/camera/multiRecord/g;->N:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/multiRecord/g;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 59
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V
    .locals 0

    .line 177
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Landroid/content/Context;Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/h;Landroid/graphics/SurfaceTexture;Lcn/nubia/camera/an/a;)V

    .line 178
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onCameraInitDone DisplayMode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {p2}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MultiRecordFragment"

    invoke-static {p2, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-boolean p1, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    if-eqz p1, :cond_0

    .line 181
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->i:Lcn/nubia/camera/multiRecord/g$a;

    const/4 p2, 0x0

    iput p2, p1, Lcn/nubia/camera/multiRecord/g$a;->b:I

    .line 182
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g;->i:Lcn/nubia/camera/multiRecord/g$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/multiRecord/l;->c(Lcn/nubia/camera/k/ab$a;)V

    .line 183
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g;->i:Lcn/nubia/camera/multiRecord/g$a;

    invoke-virtual {p1, p2}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/k/ab$a;)V

    :cond_0
    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 1

    .line 580
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onPreviewAreaUpdated "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int/2addr p4, p2

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "x"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sub-int p2, p5, p3

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "MultiRecordFragment"

    invoke-static {p3, p1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->J:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 582
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 583
    invoke-static {}, Lcn/nubia/camera/ba/a;->g()I

    move-result p2

    sub-int/2addr p2, p5

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    return-void
.end method

.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 1

    const-string p1, "MultiRecordFragment"

    const-string v0, "onVideoFileSaved"

    .line 810
    invoke-static {p1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcn/nubia/camera/multiRecord/d;Lcn/nubia/camera/multiRecord/d;)V
    .locals 2

    const-string v0, "MultiRecordFragment"

    const-string v1, "setGroupRenderer"

    .line 998
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    sget v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x6

    .line 1000
    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    goto :goto_1

    .line 1003
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    if-nez v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    :goto_0
    invoke-virtual {p1, v0}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 1005
    :goto_1
    sput-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 1006
    iput-object p2, p0, Lcn/nubia/camera/multiRecord/g;->z:Lcn/nubia/camera/multiRecord/d;

    .line 1007
    iget-object p2, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/multiRecord/m;->a(Lcn/nubia/camera/multiRecord/d;)V

    .line 1008
    sget-object p1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    new-instance p2, Lcn/nubia/camera/multiRecord/g$7;

    invoke-direct {p2, p0}, Lcn/nubia/camera/multiRecord/g$7;-><init>(Lcn/nubia/camera/multiRecord/g;)V

    invoke-virtual {p1, p2}, Lcn/nubia/camera/multiRecord/d;->a(Lcn/nubia/camera/multiRecord/d$a;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    .line 826
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 8

    const-string v0, "MultiRecordFragment"

    const-string v1, "onShutterButtonClick"

    .line 858
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    sget-object v1, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/d;->i()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 862
    :cond_0
    sget v1, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_2

    .line 863
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 866
    :cond_1
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->e:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 867
    new-instance v0, Lcn/nubia/camera/multiRecord/e;

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g;->v:Lcn/nubia/camera/g/c;

    invoke-direct {v0, v1, v5}, Lcn/nubia/camera/multiRecord/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/g/c;)V

    .line 869
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    new-instance v5, Lcn/nubia/camera/g/h;

    .line 870
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v6

    invoke-virtual {v6}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->r()Lcn/nubia/j/a;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcn/nubia/camera/g/h;-><init>(Landroid/content/Context;Lcn/nubia/j/a;)V

    .line 869
    invoke-virtual {v1, v5, v0, v3}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/k/q;Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 873
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->y:Lcn/nubia/camera/multiRecord/l;

    const/4 v5, 0x2

    new-array v5, v5, [Lcn/nubia/camera/k/o;

    aput-object v0, v5, v2

    aput-object v0, v5, v4

    invoke-virtual {v1, v3, v5, v3}, Lcn/nubia/camera/multiRecord/l;->a(Lcn/nubia/camera/k/q;[Lcn/nubia/camera/k/o;Lcn/nubia/camera/k/u;)Z

    .line 877
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->M()V

    return-void

    .line 881
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 882
    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v1}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v1

    sget-object v7, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-ne v1, v7, :cond_a

    .line 883
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v1

    sget-object v7, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v1, v7}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 884
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 885
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    sget-object v1, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-eq v0, v1, :cond_9

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    sget-object v1, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-ne v0, v1, :cond_3

    goto/16 :goto_2

    .line 889
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 891
    iget v1, p0, Lcn/nubia/camera/multiRecord/g;->m:I

    invoke-direct {p0, v1}, Lcn/nubia/camera/multiRecord/g;->f(I)Lcn/nubia/camera/multiRecord/a;

    move-result-object v1

    .line 892
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 895
    iget v5, p0, Lcn/nubia/camera/multiRecord/g;->p:I

    invoke-direct {p0, v5}, Lcn/nubia/camera/multiRecord/g;->f(I)Lcn/nubia/camera/multiRecord/a;

    move-result-object v5

    .line 896
    iget-object v6, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 897
    iget-object v6, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 899
    :cond_4
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 901
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    sget-object v6, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-eq v5, v6, :cond_6

    .line 902
    iget v5, p0, Lcn/nubia/camera/multiRecord/g;->s:I

    invoke-direct {p0, v5}, Lcn/nubia/camera/multiRecord/g;->f(I)Lcn/nubia/camera/multiRecord/a;

    move-result-object v5

    .line 903
    iget-object v6, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcn/nubia/camera/multiRecord/g;->n:Ljava/lang/String;

    iget-object v7, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 904
    iget-object v6, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 906
    :cond_5
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 909
    :cond_6
    iget-object v5, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    new-array v6, v6, [Lcn/nubia/camera/multiRecord/a;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/nubia/camera/multiRecord/a;

    iput-object v0, v5, Lcn/nubia/camera/multiRecord/m;->a:[Lcn/nubia/camera/multiRecord/a;

    .line 910
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->q:Ljava/lang/String;

    sget-object v5, Lcn/nubia/b/e;->a:Ljava/lang/String;

    if-eq v0, v5, :cond_7

    .line 911
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 912
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/multiRecord/m;->d(Z)V

    goto :goto_0

    .line 915
    :cond_7
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/multiRecord/d;->a(I)V

    .line 916
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->c:Lcn/nubia/camera/multiRecord/m;

    invoke-virtual {v0, v4}, Lcn/nubia/camera/multiRecord/m;->e(Z)V

    .line 920
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 921
    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v1, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 924
    :cond_8
    new-instance v0, Lcn/nubia/camera/af/b;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->k:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-static {}, Lcn/nubia/b/e;->q()Lcn/nubia/b/e;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v1, v3}, Lcn/nubia/camera/af/b;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 926
    :goto_1
    iput-boolean v4, p0, Lcn/nubia/camera/multiRecord/g;->X:Z

    .line 927
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcn/nubia/camera/ae/a;->a(JZ)V

    .line 928
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->s()Lcn/nubia/camera/aw/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/nubia/camera/aw/b;->a(Lcn/nubia/camera/af/b;)V

    .line 930
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->setVisibility(I)V

    const-string v0, "ui_change_recording"

    .line 931
    invoke-virtual {p0, v0}, Lcn/nubia/camera/multiRecord/g;->d(Ljava/lang/String;)V

    .line 932
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->I:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_3

    .line 886
    :cond_9
    :goto_2
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    const v1, 0x7f0f0301

    invoke-virtual {p0, v1}, Lcn/nubia/camera/multiRecord/g;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    return-void

    .line 935
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ignore click: state "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v2}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", record time "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcn/nubia/camera/multiRecord/g;->x:J

    sub-long/2addr v5, v2

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method public b(I)V
    .locals 2

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 760
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 761
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 762
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 763
    iget-object p1, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->e()V

    .line 764
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 p1, 0x1

    .line 765
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->c(Z)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 772
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 773
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->q()V

    goto :goto_0

    .line 775
    :cond_0
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 776
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->r()V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 800
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStopEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MultiRecordFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 802
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 803
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 p1, 0x1

    .line 804
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->c(Z)V

    :cond_0
    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "MultiRecordFragment"

    const-string v1, "onVideoStartBegin"

    .line 737
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->F:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 739
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    .line 740
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->H:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 744
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 745
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 746
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 747
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 748
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    const v2, 0x7f080338

    invoke-virtual {v0, v2}, Lcom/android/common/ui/RotateImageView;->setImageResource(I)V

    .line 749
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    const-string v2, "00:00:00"

    invoke-virtual {v0, v2}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->b()V

    .line 751
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 752
    invoke-direct {p0, v1}, Lcn/nubia/camera/multiRecord/g;->c(Z)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 3

    const-string v0, "MultiRecordFragment"

    const-string v1, "onVideoStopStart"

    .line 782
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->D()Z

    move-result v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->b()V

    .line 786
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->A:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    goto :goto_0

    .line 789
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->B:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iget-object v2, p0, Lcn/nubia/camera/multiRecord/g;->j:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 791
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->E:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->D:Lcom/android/common/ui/RotateImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->C:Lcom/android/common/ui/a/b;

    invoke-virtual {v0}, Lcom/android/common/ui/a/b;->e()V

    .line 795
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->K()V

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 3

    .line 946
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    .line 947
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    .line 948
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->f()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 952
    :cond_0
    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 953
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    const/4 v1, 0x7

    if-eq v0, v1, :cond_2

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 954
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcn/nubia/camera/multiRecord/g;->a:Lcn/nubia/camera/multiRecord/d;

    .line 955
    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/d;->e()I

    move-result v0

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 959
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    .line 956
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->o()V

    return v2

    .line 949
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->b()V

    return v2
.end method

.method public l()V
    .locals 4

    const-string v0, "MultiRecordFragment"

    const-string v1, "onDisableUIs"

    .line 841
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 842
    invoke-virtual {p0, v0}, Lcn/nubia/camera/multiRecord/g;->f(Ljava/lang/String;)V

    .line 843
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Lcn/nubia/camera/d/d;

    sget-object v2, Lcn/nubia/camera/d/e;->a:Lcn/nubia/camera/d/e;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/c;->a:Lcn/nubia/camera/d/c;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->g:Lcn/nubia/camera/d/b;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->h:Lcn/nubia/camera/d/b;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    sget-object v2, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a([Lcn/nubia/camera/d/d;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 125
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 126
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const-string p3, "MultiRecordFragment"

    const-string v0, "onCreateView"

    .line 129
    invoke-static {p3, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    sget p3, Lcn/nubia/camera/multiRecord/g;->b:I

    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    const-string p3, "photo"

    goto :goto_0

    :cond_1
    const-string p3, "video"

    :goto_0
    invoke-direct {p0, p3}, Lcn/nubia/camera/multiRecord/g;->a(Ljava/lang/String;)V

    const p3, 0x7f0c0073

    const/4 v0, 0x0

    .line 132
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 133
    invoke-direct {p0, p1}, Lcn/nubia/camera/multiRecord/g;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 166
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->d:Z

    if-eqz v0, :cond_0

    .line 167
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 170
    sput v0, Lcn/nubia/camera/multiRecord/g;->b:I

    const-string v0, "MultiRecordFragment"

    const-string v1, "onDestroy"

    .line 171
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->d:Z

    if-eqz v0, :cond_0

    .line 150
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    :cond_0
    const-string v0, "MultiRecordFragment"

    const-string v1, "onPause"

    .line 153
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->h()V

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->e()V

    .line 156
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->p()V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->r_()V

    .line 158
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->Y:Lcn/nubia/camera/multiRecord/SelectRectView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcn/nubia/camera/multiRecord/SelectRectView;->setVisibility(I)V

    .line 159
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->P:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 160
    invoke-direct {p0}, Lcn/nubia/camera/multiRecord/g;->n()V

    .line 161
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 139
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 140
    iget-boolean v0, p0, Lcn/nubia/camera/multiRecord/g;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "MultiRecordFragment"

    const-string v1, "onResume"

    .line 143
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    iget-object v0, p0, Lcn/nubia/camera/multiRecord/g;->w:Lcn/nubia/camera/multiRecord/h;

    invoke-virtual {v0}, Lcn/nubia/camera/multiRecord/h;->g()V

    return-void
.end method

.method public q_()V
    .locals 0

    return-void
.end method

.method public r_()V
    .locals 2

    const-string v0, "MultiRecordFragment"

    const-string v1, "onEnableUIs"

    .line 833
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 834
    invoke-virtual {p0, v0}, Lcn/nubia/camera/multiRecord/g;->e(Ljava/lang/String;)V

    .line 835
    invoke-virtual {p0}, Lcn/nubia/camera/multiRecord/g;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/d/a;->a()V

    return-void
.end method
