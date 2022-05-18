.class public Lcn/nubia/camera/hitchcock/c;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/z;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/hitchcock/c$b;,
        Lcn/nubia/camera/hitchcock/c$a;
    }
.end annotation


# static fields
.field public static final a:Landroid/graphics/Rect;

.field public static final b:Landroid/graphics/Rect;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:Landroid/graphics/Rect;

.field private C:Lcn/nubia/camera/hitchcock/i;

.field private D:Lcn/nubia/camera/hitchcock/a;

.field private E:I

.field private F:Lcn/nubia/camera/hitchcock/g;

.field private G:J

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/hitchcock/c$a;",
            ">;"
        }
    .end annotation
.end field

.field i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/nubia/camera/hitchcock/c$a;",
            ">;"
        }
    .end annotation
.end field

.field j:Lcn/nubia/camera/v/b$c;

.field k:Lcn/nubia/camera/hitchcock/c$b;

.field private l:Lcn/nubia/camera/hitchcock/TipView;

.field private m:Landroid/widget/ProgressBar;

.field private n:Landroid/widget/TextView;

.field private o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private q:Landroid/widget/TextView;

.field private r:Z

.field private s:I

.field private t:Lcn/nubia/camera/bb/w;

.field private u:Landroid/graphics/Rect;

.field private v:F

.field private w:F

.field private x:Landroid/os/ParcelFileDescriptor;

.field private y:Landroid/os/ParcelFileDescriptor;

.field private z:Lcn/nubia/camera/v/b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 86
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0x105

    const/16 v2, 0x1d0

    const/16 v3, 0x333

    const/16 v4, 0x5b0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/camera/hitchcock/c;->a:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Rect;

    const/16 v1, 0xbc

    const/16 v2, 0x2fa

    const/16 v3, 0x37c

    const/16 v4, 0x486

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcn/nubia/camera/hitchcock/c;->b:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 111
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iput v1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    .line 73
    iput v1, p0, Lcn/nubia/camera/hitchcock/c;->w:F

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcn/nubia/camera/hitchcock/c;->a:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    .line 90
    iput-object v2, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    .line 100
    iput v0, p0, Lcn/nubia/camera/hitchcock/c;->E:I

    .line 507
    new-instance v0, Lcn/nubia/camera/hitchcock/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/c$1;-><init>(Lcn/nubia/camera/hitchcock/c;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->j:Lcn/nubia/camera/v/b$c;

    .line 547
    new-instance v0, Lcn/nubia/camera/hitchcock/c$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/c$b;-><init>(Lcn/nubia/camera/hitchcock/c;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->k:Lcn/nubia/camera/hitchcock/c$b;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/hitchcock/h;)V
    .locals 3

    const/4 v0, 0x1

    .line 199
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 72
    iput v1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    .line 73
    iput v1, p0, Lcn/nubia/camera/hitchcock/c;->w:F

    .line 84
    new-instance v1, Landroid/graphics/Rect;

    sget-object v2, Lcn/nubia/camera/hitchcock/c;->a:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    .line 90
    iput-object v2, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->c:Ljava/util/ArrayList;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    .line 100
    iput v0, p0, Lcn/nubia/camera/hitchcock/c;->E:I

    .line 507
    new-instance v0, Lcn/nubia/camera/hitchcock/c$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/c$1;-><init>(Lcn/nubia/camera/hitchcock/c;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->j:Lcn/nubia/camera/v/b$c;

    .line 547
    new-instance v0, Lcn/nubia/camera/hitchcock/c$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/hitchcock/c$b;-><init>(Lcn/nubia/camera/hitchcock/c;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->k:Lcn/nubia/camera/hitchcock/c$b;

    .line 200
    new-instance v0, Lcn/nubia/camera/hitchcock/g;

    invoke-direct {v0, p1, p2}, Lcn/nubia/camera/hitchcock/g;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    .line 201
    invoke-virtual {v0, p0}, Lcn/nubia/camera/hitchcock/g;->a(Lcn/nubia/camera/bb/z;)V

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcn/nubia/camera/hitchcock/c;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->y:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/hitchcock/c;)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->x:Landroid/os/ParcelFileDescriptor;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/c;F)F
    .locals 0

    .line 55
    iput p1, p0, Lcn/nubia/camera/hitchcock/c;->w:F

    return p1
.end method

.method private a(JLjava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;
    .locals 4

    .line 813
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const/4 v1, 0x1

    .line 814
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "is_pending"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 815
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 817
    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const-string v3, "latitude"

    invoke-virtual {v0, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 818
    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "longitude"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 820
    :cond_0
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v1, v1, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    .line 821
    iget-object v1, v1, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v2, "mime_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v1, "x"

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p6, "resolution"

    invoke-virtual {v0, p6, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "datetaken"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p1, "relative_path"

    .line 824
    invoke-virtual {v0, p1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "_display_name"

    .line 825
    invoke-virtual {v0, p1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p1, p2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/hitchcock/h;)Lcn/nubia/camera/hitchcock/c;
    .locals 1

    .line 205
    new-instance v0, Lcn/nubia/camera/hitchcock/c;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/hitchcock/c;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/hitchcock/h;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/v/b;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->z:Lcn/nubia/camera/v/b;

    return-object p0
.end method

.method private a(F)V
    .locals 3

    .line 393
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->m:Landroid/widget/ProgressBar;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, p1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 394
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->n:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%.1fx"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/hitchcock/c;Z)Z
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/a;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->D:Lcn/nubia/camera/hitchcock/a;

    return-object p0
.end method

.method static synthetic b(Lcn/nubia/camera/hitchcock/c;F)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/c;->a(F)V

    return-void
.end method

.method static synthetic c(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/i;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    return-object p0
.end method

.method static synthetic d(Lcn/nubia/camera/hitchcock/c;)F
    .locals 0

    .line 55
    iget p0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    return-object p0
.end method

.method private e(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f090347

    .line 292
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/hitchcock/TipView;

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    .line 293
    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {p1, v0}, Lcn/nubia/camera/hitchcock/TipView;->setScale(F)V

    .line 294
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/hitchcock/TipView;->setPreviewSelectRect(Landroid/graphics/Rect;)V

    return-void
.end method

.method static synthetic f(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/TipView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0903a4

    .line 386
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->m:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    .line 387
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    const v0, 0x7f0903a6

    .line 388
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c;->n:Landroid/widget/TextView;

    .line 389
    iget p1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/c;->a(F)V

    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/hitchcock/c;)F
    .locals 0

    .line 55
    iget p0, p0, Lcn/nubia/camera/hitchcock/c;->w:F

    return p0
.end method

.method static synthetic h(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/hitchcock/c;)Landroid/graphics/Rect;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->u:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic j(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/hitchcock/g;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/hitchcock/c;)Landroid/widget/ProgressBar;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->m:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/hitchcock/c;)Landroid/widget/TextView;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->n:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 478
    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->E:I

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 482
    :cond_0
    sget-object v0, Lcn/nubia/camera/hitchcock/c;->a:Landroid/graphics/Rect;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    goto :goto_1

    .line 479
    :cond_1
    :goto_0
    sget-object v0, Lcn/nubia/camera/hitchcock/c;->b:Landroid/graphics/Rect;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    .line 484
    :goto_1
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/TipView;->setPreviewSelectRect(Landroid/graphics/Rect;)V

    .line 485
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/TipView;->postInvalidate()V

    return-void
.end method

.method private o()V
    .locals 3

    .line 801
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->c()V

    .line 803
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 804
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v2, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/d;)V

    .line 805
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->q:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 806
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/hitchcock/TipView;->setVisibility(I)V

    .line 807
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 808
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "HitchcockFragment"

    .line 809
    invoke-virtual {p0, v0}, Lcn/nubia/camera/hitchcock/c;->c(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic o(Lcn/nubia/camera/hitchcock/c;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/c;->n()V

    return-void
.end method

.method static synthetic p(Lcn/nubia/camera/hitchcock/c;)Z
    .locals 0

    .line 55
    iget-boolean p0, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic r(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/hitchcock/c;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/c;->o()V

    return-void
.end method

.method static synthetic t(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/bb/w;
    .locals 0

    .line 55
    iget-object p0, p0, Lcn/nubia/camera/hitchcock/c;->t:Lcn/nubia/camera/bb/w;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/hitchcock/c;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected a(IZ)V
    .locals 0

    .line 469
    invoke-super {p0, p1, p2}, Lcn/nubia/camera/q/a;->a(IZ)V

    .line 470
    iput p1, p0, Lcn/nubia/camera/hitchcock/c;->E:I

    .line 471
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {p1}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq p1, p2, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/c;->n()V

    return-void
.end method

.method protected a(Lcn/nubia/camera/an/a;IIII)V
    .locals 0

    .line 399
    invoke-super/range {p0 .. p5}, Lcn/nubia/camera/q/a;->a(Lcn/nubia/camera/an/a;IIII)V

    .line 400
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c;->u:Landroid/graphics/Rect;

    .line 401
    iget-object p2, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    invoke-virtual {p2, p1}, Lcn/nubia/camera/hitchcock/TipView;->setPreviewRect(Landroid/graphics/Rect;)V

    .line 402
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    if-eqz p1, :cond_0

    .line 403
    invoke-virtual {p1}, Lcn/nubia/camera/hitchcock/TipView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 404
    iput p3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr p5, p3

    .line 405
    iput p5, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 406
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    invoke-virtual {p1}, Lcn/nubia/camera/hitchcock/TipView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c;->t:Lcn/nubia/camera/bb/w;

    .line 167
    monitor-enter p0

    .line 168
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 169
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    const v0, 0x7f0f00f0

    .line 489
    invoke-virtual {p0, v0}, Lcn/nubia/camera/hitchcock/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 490
    iput p1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    goto :goto_0

    :cond_0
    const/high16 p1, 0x40a00000    # 5.0f

    .line 493
    iput p1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    .line 495
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {p1, v0}, Lcn/nubia/camera/hitchcock/i;->a(F)V

    .line 496
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {p1, v0}, Lcn/nubia/camera/hitchcock/TipView;->setScale(F)V

    .line 497
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->k:Lcn/nubia/camera/hitchcock/c$b;

    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    iput v0, p1, Lcn/nubia/camera/hitchcock/c$b;->a:F

    .line 498
    iget p1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/c;->a(F)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public b()V
    .locals 8

    const-string v0, "HitchcockFragment"

    const-string v1, "onShutterButtonClick"

    .line 422
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 424
    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v3}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-ne v3, v4, :cond_1

    .line 425
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v3, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    if-nez v3, :cond_1

    .line 428
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    .line 429
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    .line 430
    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c;->B:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    .line 431
    iget v3, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_0

    neg-int v3, v0

    neg-int v4, v1

    .line 432
    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 433
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    div-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    iget v5, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    iget-object v5, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->right:I

    int-to-float v5, v5

    iget v6, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    iget-object v6, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    int-to-float v6, v6

    iget v7, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    div-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    .line 434
    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->D:Lcn/nubia/camera/hitchcock/a;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->A:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/a;->a(Landroid/graphics/Rect;)V

    .line 438
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->m:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 439
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 440
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->q:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 442
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->a()V

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/nubia/camera/hitchcock/c;->G:J

    goto :goto_0

    .line 445
    :cond_1
    iget-wide v3, p0, Lcn/nubia/camera/hitchcock/c;->G:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    .line 446
    invoke-virtual {v3}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne v3, v4, :cond_2

    .line 447
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 448
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->b()V

    goto :goto_0

    .line 451
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore click: state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v4}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/camera/hitchcock/c;->G:J

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public b(I)V
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HitchcockFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    .line 127
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const v0, 0x7f0f00f2

    goto :goto_0

    :cond_0
    const v0, 0x7f0f00f3

    :goto_0
    invoke-virtual {p0, v0}, Lcn/nubia/camera/hitchcock/c;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    .line 128
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->e()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v1, v1, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v2, v2, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {p1, v0, v1, v2}, Lcn/nubia/camera/hitchcock/i;->a(Landroid/view/Surface;II)V

    goto :goto_1

    .line 131
    :cond_1
    invoke-virtual {p0, v1}, Lcn/nubia/camera/hitchcock/c;->c(Ljava/lang/String;)V

    .line 132
    iget-object p1, p0, Lcn/nubia/camera/hitchcock/c;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 133
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :goto_1
    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStopEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HitchcockFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iput p1, p0, Lcn/nubia/camera/hitchcock/c;->s:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 156
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 157
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 160
    iput-boolean p1, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    :cond_1
    return-void
.end method

.method public d()V
    .locals 2

    const-string v0, "HitchcockFragment"

    const-string v1, "onVideoStartBegin"

    .line 116
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0, v0}, Lcn/nubia/camera/hitchcock/c;->d(Ljava/lang/String;)V

    .line 118
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 120
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d(Landroid/view/View;)V
    .locals 2

    .line 280
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/c;->e(Landroid/view/View;)V

    .line 281
    invoke-direct {p0, p1}, Lcn/nubia/camera/hitchcock/c;->f(Landroid/view/View;)V

    const v0, 0x7f09036e

    .line 283
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->o:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 284
    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f09036f

    .line 285
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->p:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const v0, 0x7f09032f

    .line 287
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcn/nubia/camera/hitchcock/c;->q:Landroid/widget/TextView;

    .line 288
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    return-void
.end method

.method public d_()Z
    .locals 2

    .line 462
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    .line 463
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->b()V

    .line 464
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v1}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e()V
    .locals 2

    const-string v0, "HitchcockFragment"

    const-string v1, "onVideoStopStart"

    .line 144
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/i;->d()V

    const/4 v0, 0x1

    .line 147
    iput-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->r:Z

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 4

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_1

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 270
    iget-wide v2, p0, Lcn/nubia/camera/hitchcock/c;->G:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 271
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 272
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->b()V

    :cond_0
    const/4 v0, 0x1

    return v0

    .line 276
    :cond_1
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 22

    move-object/from16 v7, p0

    const-string v8, "HitchcockFragment"

    const-string v0, "postProcess"

    .line 700
    invoke-static {v8, v0}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v9

    .line 702
    iget-object v0, v7, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v10, v0, Lcn/nubia/camera/hitchcock/g;->a:Landroid/media/CamcorderProfile;

    .line 703
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->C()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x6

    invoke-static {v0, v1}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v15

    .line 704
    iget v0, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 705
    iget v1, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iput v1, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 706
    iput v0, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 708
    iget-object v0, v7, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-wide v0, v0, Lcn/nubia/camera/bb/u;->e:J

    const-wide/16 v2, 0x3e8

    add-long v1, v0, v2

    .line 709
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v7, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v3, v1, v2}, Lcn/nubia/camera/hitchcock/g;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ".mp4"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 710
    iget-object v0, v7, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v0, v0, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-object v0, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    .line 711
    invoke-static {v0}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget v5, v15, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v6, v15, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcn/nubia/camera/hitchcock/c;->a(JLjava/lang/String;Ljava/lang/String;II)Landroid/net/Uri;

    move-result-object v0

    .line 712
    invoke-virtual {v9}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v0}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v7, Lcn/nubia/camera/hitchcock/c;->x:Landroid/os/ParcelFileDescriptor;

    .line 714
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 715
    iget-object v2, v7, Lcn/nubia/camera/hitchcock/c;->t:Lcn/nubia/camera/bb/w;

    iget-object v2, v2, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-virtual {v1, v9, v2}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 v2, 0x9

    .line 716
    invoke-virtual {v1, v2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v2

    .line 717
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const/16 v4, 0x18

    .line 718
    invoke-virtual {v1, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    .line 719
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 720
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 721
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "previewScale "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v5, v7, Lcn/nubia/camera/hitchcock/c;->w:F

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ", duration "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v1

    invoke-interface {v1}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v1

    .line 724
    new-instance v2, Lcn/nubia/camera/r/s;

    iget-object v3, v7, Lcn/nubia/camera/hitchcock/c;->x:Landroid/os/ParcelFileDescriptor;

    .line 725
    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v13

    new-instance v3, Lcn/nubia/camera/hitchcock/c$2;

    invoke-direct {v3, v7, v9, v0}, Lcn/nubia/camera/hitchcock/c$2;-><init>(Lcn/nubia/camera/hitchcock/c;Landroid/app/Activity;Landroid/net/Uri;)V

    const/4 v14, 0x0

    move-object v11, v2

    move-object v12, v15

    move-object v0, v15

    move-object v15, v1

    move-object/from16 v16, v3

    invoke-direct/range {v11 .. v16}, Lcn/nubia/camera/r/s;-><init>(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/location/Location;Lcn/nubia/camera/r/s$b;)V

    .line 773
    invoke-virtual {v2, v4}, Lcn/nubia/camera/r/s;->a(I)V

    .line 774
    invoke-virtual {v2}, Lcn/nubia/camera/r/s;->a()V

    .line 775
    new-instance v1, Lcn/nubia/camera/hitchcock/b;

    iget v3, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 776
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v4

    invoke-virtual {v4}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v20

    iget-object v4, v7, Lcn/nubia/camera/hitchcock/c;->i:Ljava/util/ArrayList;

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move/from16 v18, v3

    move/from16 v19, v0

    move-object/from16 v21, v4

    invoke-direct/range {v16 .. v21}, Lcn/nubia/camera/hitchcock/b;-><init>(Lcn/nubia/camera/r/s;IILandroid/content/Context;Ljava/util/ArrayList;)V

    .line 778
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 779
    iget v2, v10, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget v3, v10, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v1, v0, v2, v3}, Lcn/nubia/camera/hitchcock/b;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 780
    iget v2, v7, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/b;->a(F)V

    .line 781
    new-instance v2, Lcn/nubia/camera/hitchcock/c$3;

    invoke-direct {v2, v7}, Lcn/nubia/camera/hitchcock/c$3;-><init>(Lcn/nubia/camera/hitchcock/c;)V

    invoke-virtual {v1, v2}, Lcn/nubia/camera/hitchcock/b;->a(Lcn/nubia/camera/hitchcock/b$a;)V

    .line 792
    invoke-virtual {v1}, Lcn/nubia/camera/hitchcock/b;->start()V

    .line 794
    invoke-virtual/range {p0 .. p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v2

    invoke-virtual {v2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, v7, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    iget-object v3, v3, Lcn/nubia/camera/hitchcock/g;->b:Lcn/nubia/camera/bb/u;

    iget-object v3, v3, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v2, v3}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v7, Lcn/nubia/camera/hitchcock/c;->y:Landroid/os/ParcelFileDescriptor;

    .line 795
    new-instance v2, Lcn/nubia/camera/r/r;

    iget-object v3, v7, Lcn/nubia/camera/hitchcock/c;->y:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    new-instance v4, Landroid/view/Surface;

    invoke-direct {v4, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v2, v3, v4}, Lcn/nubia/camera/r/r;-><init>(Ljava/io/FileDescriptor;Landroid/view/Surface;)V

    .line 796
    invoke-virtual {v2, v1}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r$b;)V

    .line 797
    invoke-virtual {v2}, Lcn/nubia/camera/r/r;->a()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 211
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 212
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0c005e

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->u()Lcom/android/preference/c;

    move-result-object p2

    const p3, 0x7f0f0240

    invoke-virtual {p0, p3}, Lcn/nubia/camera/hitchcock/c;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "pref_hitchcock_mode_key"

    invoke-virtual {p2, v0, p3}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0f00f0

    .line 218
    invoke-virtual {p0, p3}, Lcn/nubia/camera/hitchcock/c;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/high16 p2, 0x3f800000    # 1.0f

    .line 219
    iput p2, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    goto :goto_0

    :cond_1
    const/high16 p2, 0x40a00000    # 5.0f

    .line 222
    iput p2, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    .line 225
    :goto_0
    invoke-virtual {p0, p1}, Lcn/nubia/camera/hitchcock/c;->d(Landroid/view/View;)V

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 251
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->d:Z

    if-eqz v0, :cond_0

    .line 252
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    .line 255
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    .line 256
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->F:Lcn/nubia/camera/hitchcock/g;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/g;->c()V

    goto :goto_0

    .line 259
    :cond_1
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->D:Lcn/nubia/camera/hitchcock/a;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/a;->a()V

    .line 261
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/i;->a()V

    .line 262
    invoke-direct {p0}, Lcn/nubia/camera/hitchcock/c;->o()V

    .line 263
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 231
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 232
    iget-boolean v0, p0, Lcn/nubia/camera/hitchcock/c;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 235
    :cond_0
    iget v0, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-direct {p0, v0}, Lcn/nubia/camera/hitchcock/c;->a(F)V

    .line 236
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    iget v1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/TipView;->setScale(F)V

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/TipView;->setTrackerRect(Landroid/graphics/Rect;)V

    .line 238
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->l:Lcn/nubia/camera/hitchcock/TipView;

    invoke-virtual {v0}, Lcn/nubia/camera/hitchcock/TipView;->invalidate()V

    .line 239
    new-instance v0, Lcn/nubia/camera/hitchcock/a;

    invoke-direct {v0}, Lcn/nubia/camera/hitchcock/a;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->D:Lcn/nubia/camera/hitchcock/a;

    .line 240
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->k:Lcn/nubia/camera/hitchcock/c$b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/a;->a(Lcn/nubia/camera/hitchcock/a$a;)V

    .line 241
    new-instance v0, Lcn/nubia/camera/v/b;

    const/high16 v1, 0x3f800000    # 1.0f

    sget-object v2, Lcn/nubia/camera/v/b$a;->b:Lcn/nubia/camera/v/b$a;

    sget-object v3, Lcn/nubia/camera/v/b$b;->a:Lcn/nubia/camera/v/b$b;

    invoke-direct {v0, v1, v2, v3}, Lcn/nubia/camera/v/b;-><init>(FLcn/nubia/camera/v/b$a;Lcn/nubia/camera/v/b$b;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->z:Lcn/nubia/camera/v/b;

    .line 242
    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->j:Lcn/nubia/camera/v/b$c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/v/b;->a(Lcn/nubia/camera/v/b$c;)V

    .line 243
    new-instance v0, Lcn/nubia/camera/hitchcock/i;

    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/nubia/camera/hitchcock/i;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    .line 244
    iget v1, p0, Lcn/nubia/camera/hitchcock/c;->v:F

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/i;->a(F)V

    .line 245
    iget-object v0, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->z:Lcn/nubia/camera/v/b;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/hitchcock/i;->a(Lcn/nubia/camera/v/b;)V

    .line 246
    invoke-virtual {p0}, Lcn/nubia/camera/hitchcock/c;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/hitchcock/c;->C:Lcn/nubia/camera/hitchcock/i;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    return-void
.end method

.method public q_()V
    .locals 0

    return-void
.end method

.method public r_()V
    .locals 0

    return-void
.end method
