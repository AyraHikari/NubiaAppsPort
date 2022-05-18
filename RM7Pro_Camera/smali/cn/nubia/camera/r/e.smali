.class public Lcn/nubia/camera/r/e;
.super Lcn/nubia/camera/q/a;
.source "SourceFile"

# interfaces
.implements Lcn/nubia/camera/bb/z;
.implements Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/nubia/camera/r/e$b;,
        Lcn/nubia/camera/r/e$a;
    }
.end annotation


# instance fields
.field private A:Lcn/nubia/camera/r/e$a;

.field private B:Lcn/nubia/camera/r/i;

.field private C:I

.field private D:Lcn/nubia/camera/r/k;

.field private E:J

.field private F:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcn/nubia/camera/r/n;

.field private H:Lcn/nubia/camera/r/d;

.field private I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

.field private J:Z

.field private K:I

.field private L:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;"
        }
    .end annotation
.end field

.field private M:Z

.field private N:Lcn/nubia/camera/r/j;

.field private O:Z

.field private P:Lcn/nubia/camera/r/o;

.field private Q:Z

.field private R:Z

.field private S:Lcn/nubia/camera/bb/w;

.field private T:I

.field private U:Lcom/android/common/c/a$a;

.field a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/n$b;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field i:Landroid/os/ParcelFileDescriptor;

.field j:Landroid/os/ParcelFileDescriptor;

.field k:Landroid/os/ParcelFileDescriptor;

.field l:Landroid/net/Uri;

.field m:Landroid/net/Uri;

.field n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

.field o:Lcn/nubia/camera/r/c;

.field p:Lcn/nubia/camera/r/s$b;

.field q:Lcn/nubia/camera/r/m;

.field r:Lcn/nubia/camera/r/o$b;

.field s:Lcn/nubia/camera/r/j$a;

.field t:Lcn/nubia/camera/r/j$a;

.field private u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

.field private v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private w:Lcom/android/common/ui/a/b;

.field private x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

.field private y:Landroid/view/View;

.field private z:Lcn/nubia/camera/q/c;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 135
    invoke-direct {p0}, Lcn/nubia/camera/q/a;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/r/e;->z:Lcn/nubia/camera/q/c;

    .line 87
    new-instance v1, Lcn/nubia/camera/r/e$a;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/r/e$a;-><init>(Lcn/nubia/camera/r/e;Lcn/nubia/camera/r/e$1;)V

    iput-object v1, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->J:Z

    .line 99
    iput v0, p0, Lcn/nubia/camera/r/e;->K:I

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->O:Z

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/e;->a:Ljava/util/HashMap;

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->Q:Z

    .line 113
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->R:Z

    .line 428
    new-instance v0, Lcn/nubia/camera/r/e$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$1;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 439
    new-instance v0, Lcn/nubia/camera/r/e$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$3;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->o:Lcn/nubia/camera/r/c;

    .line 629
    new-instance v0, Lcn/nubia/camera/r/e$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$5;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->p:Lcn/nubia/camera/r/s$b;

    .line 686
    new-instance v0, Lcn/nubia/camera/r/e$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$6;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->q:Lcn/nubia/camera/r/m;

    .line 734
    new-instance v0, Lcn/nubia/camera/r/e$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$7;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->r:Lcn/nubia/camera/r/o$b;

    .line 818
    new-instance v0, Lcn/nubia/camera/r/e$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$9;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->s:Lcn/nubia/camera/r/j$a;

    .line 830
    new-instance v0, Lcn/nubia/camera/r/e$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$10;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->t:Lcn/nubia/camera/r/j$a;

    return-void
.end method

.method public constructor <init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/r/k;)V
    .locals 2

    const/4 v0, 0x1

    .line 140
    invoke-direct {p0, v0}, Lcn/nubia/camera/q/a;-><init>(I)V

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcn/nubia/camera/r/e;->z:Lcn/nubia/camera/q/c;

    .line 87
    new-instance v1, Lcn/nubia/camera/r/e$a;

    invoke-direct {v1, p0, v0}, Lcn/nubia/camera/r/e$a;-><init>(Lcn/nubia/camera/r/e;Lcn/nubia/camera/r/e$1;)V

    iput-object v1, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 97
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->J:Z

    .line 99
    iput v0, p0, Lcn/nubia/camera/r/e;->K:I

    .line 106
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->O:Z

    .line 109
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/nubia/camera/r/e;->a:Ljava/util/HashMap;

    .line 111
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->Q:Z

    .line 113
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->R:Z

    .line 428
    new-instance v0, Lcn/nubia/camera/r/e$1;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$1;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    .line 439
    new-instance v0, Lcn/nubia/camera/r/e$3;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$3;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->o:Lcn/nubia/camera/r/c;

    .line 629
    new-instance v0, Lcn/nubia/camera/r/e$5;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$5;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->p:Lcn/nubia/camera/r/s$b;

    .line 686
    new-instance v0, Lcn/nubia/camera/r/e$6;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$6;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->q:Lcn/nubia/camera/r/m;

    .line 734
    new-instance v0, Lcn/nubia/camera/r/e$7;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$7;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->r:Lcn/nubia/camera/r/o$b;

    .line 818
    new-instance v0, Lcn/nubia/camera/r/e$9;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$9;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->s:Lcn/nubia/camera/r/j$a;

    .line 830
    new-instance v0, Lcn/nubia/camera/r/e$10;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$10;-><init>(Lcn/nubia/camera/r/e;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->t:Lcn/nubia/camera/r/j$a;

    .line 141
    iput-object p2, p0, Lcn/nubia/camera/r/e;->D:Lcn/nubia/camera/r/k;

    .line 142
    new-instance v0, Lcn/nubia/camera/r/i;

    invoke-direct {v0, p1, p2}, Lcn/nubia/camera/r/i;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/k/ah;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    .line 143
    invoke-virtual {v0, p0}, Lcn/nubia/camera/r/i;->a(Lcn/nubia/camera/bb/z;)V

    return-void
.end method

.method static synthetic A(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic B(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/j;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    return-object p0
.end method

.method static synthetic C(Lcn/nubia/camera/r/e;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/r/e;->T:I

    return p0
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;I)I
    .locals 0

    .line 66
    iput p1, p0, Lcn/nubia/camera/r/e;->K:I

    return p1
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 3

    .line 613
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x1

    .line 614
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "is_pending"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 615
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 617
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "latitude"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 618
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "longitude"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 620
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v0, v0, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    .line 621
    iget-object v1, v0, Lcn/nubia/camera/bb/u;->d:Ljava/lang/String;

    const-string v2, "mime_type"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, v0, Lcn/nubia/camera/bb/u;->h:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v0, Lcn/nubia/camera/bb/u;->i:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "resolution"

    invoke-virtual {p1, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    iget-wide v0, v0, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "datetaken"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v0, "relative_path"

    .line 624
    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "_display_name"

    .line 625
    invoke-virtual {p1, p2, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p2

    invoke-virtual {p2}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    sget-object p3, Landroid/provider/MediaStore$Video$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, p1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public static a(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/r/k;)Lcn/nubia/camera/r/e;
    .locals 1

    .line 147
    new-instance v0, Lcn/nubia/camera/r/e;

    invoke-direct {v0, p0, p1}, Lcn/nubia/camera/r/e;-><init>(Lcn/nubia/camera/ad/a;Lcn/nubia/camera/r/k;)V

    return-object v0
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/i;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    return-object p0
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;Lcom/android/common/c/a$a;)Lcom/android/common/c/a$a;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/r/e;->U:Lcom/android/common/c/a$a;

    return-object p1
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;Ljava/util/HashMap;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iput-object p1, p0, Lcn/nubia/camera/r/e;->L:Ljava/util/HashMap;

    return-object p1
.end method

.method private a(Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 679
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 681
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;Landroid/os/ParcelFileDescriptor;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->a(Landroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-virtual {p0, p1}, Lcn/nubia/camera/r/e;->c(Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/util/HashMap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcn/nubia/camera/r/d$b;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FreezeVideoFragment"

    const-string v1, "postProcess"

    .line 478
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object v1, p0, Lcn/nubia/camera/r/e;->I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v1}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->b()Z

    .line 481
    invoke-direct {p0}, Lcn/nubia/camera/r/e;->p()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 485
    :cond_0
    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_2

    const-string p1, "no freeze frame"

    .line 486
    invoke-static {v0, p1}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object p1, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    iget-object p1, p1, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    if-eqz p1, :cond_1

    .line 488
    new-instance p1, Lcn/nubia/l/b/g;

    .line 489
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    iget-object v1, v1, Lcn/nubia/camera/bb/w;->b:Landroid/net/Uri;

    invoke-direct {p1, v0, v1, v2, v2}, Lcn/nubia/l/b/g;-><init>(Landroid/content/Context;Landroid/net/Uri;IZ)V

    .line 493
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->h()Lcn/nubia/l/a/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/nubia/l/a/b;->a(Lcn/nubia/l/b/d;)V

    .line 495
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    return-void

    .line 498
    :cond_2
    iget-object v0, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v1, Lcom/android/common/ui/shutterbutton/d;->e:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 499
    iget-object v0, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v2, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(IZ)V

    .line 501
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v0, v0, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-object v0, v0, Lcn/nubia/camera/bb/u;->a:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/r/e;->c:Ljava/lang/String;

    .line 502
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v1, v1, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-object v1, v1, Lcn/nubia/camera/bb/u;->k:Landroid/net/Uri;

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    .line 503
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v0, v0, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-object v0, v0, Lcn/nubia/camera/bb/u;->b:Ljava/lang/String;

    iput-object v0, p0, Lcn/nubia/camera/r/e;->b:Ljava/lang/String;

    .line 505
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 507
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 508
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/nubia/camera/r/d$b;

    .line 509
    iget-object v4, v3, Lcn/nubia/camera/r/d$b;->a:[I

    iget v5, v3, Lcn/nubia/camera/r/d$b;->b:I

    iget v3, v3, Lcn/nubia/camera/r/d$b;->c:I

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v3, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 510
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 512
    :cond_3
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/e;->b(Ljava/util/HashMap;)V

    .line 513
    invoke-direct {p0, v0}, Lcn/nubia/camera/r/e;->a(Ljava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 581
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v8

    .line 582
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->v()Lcn/nubia/e/a;

    move-result-object v0

    invoke-interface {v0}, Lcn/nubia/e/a;->b()Landroid/location/Location;

    move-result-object v0

    .line 583
    iget-object v1, p0, Lcn/nubia/camera/r/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/r/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_freeze.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/r/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/e;->l:Landroid/net/Uri;

    .line 584
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/e;->l:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/e;->j:Landroid/os/ParcelFileDescriptor;

    .line 585
    new-instance v7, Lcn/nubia/camera/r/s;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v2, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->j:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    iget-object v6, p0, Lcn/nubia/camera/r/e;->p:Lcn/nubia/camera/r/s$b;

    move-object v1, v7

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/r/s;-><init>(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/location/Location;Lcn/nubia/camera/r/s$b;)V

    .line 586
    invoke-virtual {v7}, Lcn/nubia/camera/r/s;->a()V

    .line 587
    iget-object v1, p0, Lcn/nubia/camera/r/e;->b:Ljava/lang/String;

    invoke-static {v1}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/nubia/camera/r/e;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_split.mp4"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcn/nubia/camera/r/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    .line 588
    invoke-virtual {v8}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcn/nubia/camera/r/e;->m:Landroid/net/Uri;

    invoke-static {v1, v2}, Lcn/nubia/camera/ba/a;->c(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Lcn/nubia/camera/r/e;->k:Landroid/os/ParcelFileDescriptor;

    .line 589
    new-instance v9, Lcn/nubia/camera/r/s;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v2, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->k:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    iget-object v1, p0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    const/4 v6, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v6}, Lcn/nubia/camera/r/s;-><init>(Landroid/media/CamcorderProfile;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Landroid/location/Location;Lcn/nubia/camera/r/s$b;)V

    .line 590
    invoke-virtual {v9}, Lcn/nubia/camera/r/s;->a()V

    .line 593
    iget-object v0, p0, Lcn/nubia/camera/r/e;->I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-virtual {v0}, Lcn/nubia/algorithm/camera/FreezeVideoJni;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 594
    iget-object v0, p0, Lcn/nubia/camera/r/e;->a:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 596
    :goto_0
    new-instance v10, Lcn/nubia/camera/r/b;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v1, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v5, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v1, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v6, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move-object v1, v10

    move-object v2, p1

    move-object v3, v7

    move-object v4, v9

    move-object v7, v0

    invoke-direct/range {v1 .. v8}, Lcn/nubia/camera/r/b;-><init>(Ljava/util/Map;Lcn/nubia/camera/r/s;Lcn/nubia/camera/r/s;IILjava/util/HashMap;Landroid/content/Context;)V

    .line 598
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    .line 599
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v0, v0, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v1, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v10, p1, v0, v1}, Lcn/nubia/camera/r/b;->a(Landroid/graphics/SurfaceTexture;II)V

    .line 600
    new-instance v0, Lcn/nubia/camera/r/e$b;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$b;-><init>(Lcn/nubia/camera/r/e;)V

    invoke-virtual {v10, v0}, Lcn/nubia/camera/r/b;->a(Lcn/nubia/camera/r/b$a;)V

    .line 601
    iget v0, p0, Lcn/nubia/camera/r/e;->K:I

    if-eqz v0, :cond_1

    .line 602
    iget-object v1, p0, Lcn/nubia/camera/r/e;->L:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcn/nubia/camera/r/a;->a(Ljava/util/Set;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 603
    invoke-virtual {v10, v0}, Lcn/nubia/camera/r/b;->a(I)V

    .line 605
    :cond_1
    invoke-virtual {v10}, Lcn/nubia/camera/r/b;->start()V

    .line 607
    new-instance v0, Lcn/nubia/camera/r/r;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->i:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    new-instance v2, Landroid/view/Surface;

    invoke-direct {v2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-direct {v0, v1, v2}, Lcn/nubia/camera/r/r;-><init>(Ljava/io/FileDescriptor;Landroid/view/Surface;)V

    .line 608
    invoke-virtual {v0, v10}, Lcn/nubia/camera/r/r;->a(Lcn/nubia/camera/r/r$b;)V

    .line 609
    invoke-virtual {v0}, Lcn/nubia/camera/r/r;->a()V

    return-void
.end method

.method static synthetic a(Lcn/nubia/camera/r/e;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/r/e;->Q:Z

    return p1
.end method

.method static synthetic b(Lcn/nubia/camera/r/e;Ljava/util/HashMap;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->a(Ljava/util/HashMap;)V

    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    const-string v0, "is_pending"

    .line 550
    sget-boolean v1, Lcn/nubia/camera/r/a;->a:Z

    if-eqz v1, :cond_0

    .line 552
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/Integer;

    invoke-interface {v1, v2}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 553
    new-instance v2, Lcn/nubia/camera/r/e$4;

    invoke-direct {v2, p0}, Lcn/nubia/camera/r/e$4;-><init>(Lcn/nubia/camera/r/e;)V

    invoke-static {v1, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 559
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    .line 561
    :try_start_0
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    const-string v7, "datetaken"

    .line 562
    iget-object v8, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v8, v8, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-wide v8, v8, Lcn/nubia/camera/bb/u;->e:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const/4 v7, 0x1

    .line 563
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v7, "_display_name"

    .line 564
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/nubia/camera/r/e;->c:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_mask_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".png"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "relative_path"

    .line 565
    iget-object v8, p0, Lcn/nubia/camera/r/e;->b:Ljava/lang/String;

    invoke-static {v8}, Lcn/nubia/camera/ba/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 567
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    .line 568
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x64

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    invoke-virtual {v9, v6}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v9

    invoke-virtual {v5, v7, v8, v9}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 569
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 570
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v7

    invoke-virtual {v7}, Lcn/nubia/camera/ad/a;->a()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v6, v5, v8, v8}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v6, "FreezeVideoFragment"

    const-string v7, "dump mask fail"

    .line 573
    invoke-static {v6, v7, v5}, Lcn/nubia/camera/c/b;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_0
    return-void
.end method

.method static synthetic b(Lcn/nubia/camera/r/e;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcn/nubia/camera/r/e;->Q:Z

    return p0
.end method

.method static synthetic b(Lcn/nubia/camera/r/e;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/r/e;->J:Z

    return p1
.end method

.method static synthetic c(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/e$a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    return-object p0
.end method

.method static synthetic c(Lcn/nubia/camera/r/e;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/r/e;->R:Z

    return p1
.end method

.method static synthetic d(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/view/View;)V
    .locals 2

    .line 404
    new-instance v0, Lcom/android/common/ui/a/b;

    invoke-direct {v0, p1}, Lcom/android/common/ui/a/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    const v0, 0x7f090234

    .line 405
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;Landroid/content/res/Resources;)V

    const v0, 0x7f09036e

    .line 407
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    iput-object v0, p0, Lcn/nubia/camera/r/e;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    .line 408
    invoke-virtual {v0, p0}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setOnShutterButtonListener(Lcom/android/common/ui/shutterbutton/ZtemtShutterButton$b;)V

    const v0, 0x7f09036f

    .line 409
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object v0, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 411
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->e(Landroid/view/View;)V

    .line 412
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->f(Landroid/view/View;)V

    return-void
.end method

.method static synthetic d(Lcn/nubia/camera/r/e;Z)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->f(Z)V

    return-void
.end method

.method private e(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f0900f6

    .line 416
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcn/nubia/camera/r/e;->y:Landroid/view/View;

    .line 417
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->Q()Lcn/nubia/camera/an/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/an/a;->i()I

    move-result v0

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcn/nubia/camera/ba/a;->a(Landroid/view/View;ILandroid/content/res/Resources;)V

    .line 418
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/af/a;->T:Lcn/nubia/camera/af/a;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method private e(Z)V
    .locals 1

    .line 422
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->X()Lcn/nubia/camera/zoom/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0, p1}, Lcn/nubia/camera/zoom/c;->a(Z)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcn/nubia/camera/r/e;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcn/nubia/camera/r/e;->J:Z

    return p0
.end method

.method static synthetic e(Lcn/nubia/camera/r/e;Z)Z
    .locals 0

    .line 66
    iput-boolean p1, p0, Lcn/nubia/camera/r/e;->O:Z

    return p1
.end method

.method static synthetic f(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private f(Landroid/view/View;)V
    .locals 1

    const v0, 0x7f09015d

    .line 875
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iput-object p1, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    .line 877
    new-instance v0, Lcn/nubia/camera/r/e$2;

    invoke-direct {v0, p0}, Lcn/nubia/camera/r/e$2;-><init>(Lcn/nubia/camera/r/e;)V

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private f(Z)V
    .locals 3

    .line 784
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->u()Lcom/android/preference/c;

    move-result-object v0

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lcn/nubia/camera/r/e;->R:Z

    invoke-static {v0, v1, v2}, Lcn/nubia/camera/r/a;->a(Lcom/android/preference/c;Landroid/content/Context;Z)Z

    move-result v0

    .line 785
    iget-object v1, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v1}, Lcn/nubia/camera/r/j;->f()Z

    move-result v1

    if-eq v1, v0, :cond_0

    .line 786
    iget-object v1, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/r/j;->a(Z)V

    if-eqz p1, :cond_0

    .line 788
    invoke-direct {p0}, Lcn/nubia/camera/r/e;->q()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/bb/w;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    return-object p0
.end method

.method static synthetic h(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/nubia/camera/r/e;)I
    .locals 0

    .line 66
    iget p0, p0, Lcn/nubia/camera/r/e;->K:I

    return p0
.end method

.method static synthetic j(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic k(Lcn/nubia/camera/r/e;)Ljava/util/HashMap;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->L:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic l(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic m(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic n(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic o(Lcn/nubia/camera/r/e;)Lcom/android/preference/PreferenceGroup;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->t()Lcom/android/preference/PreferenceGroup;

    move-result-object p0

    return-object p0
.end method

.method private o()V
    .locals 3

    .line 243
    iget-object v0, p0, Lcn/nubia/camera/r/e;->y:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/af/a;->T:Lcn/nubia/camera/af/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/nubia/camera/ba/f;->d(ZLcn/nubia/camera/af/a;)V

    return-void
.end method

.method private p()Z
    .locals 5

    .line 519
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_0

    .line 520
    monitor-enter p0

    .line 522
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 524
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 526
    :goto_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 529
    :cond_0
    iget v0, p0, Lcn/nubia/camera/r/e;->C:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v0, "FreezeVideoFragment"

    const-string v3, "no src video"

    .line 530
    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v0, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/r/e$a;->sendEmptyMessage(I)Z

    return v1

    .line 535
    :cond_1
    :goto_3
    iget-object v0, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    if-nez v0, :cond_3

    .line 536
    monitor-enter p0

    :try_start_2
    const-string v0, "FreezeVideoFragment"

    const-string v3, "wait src video"

    .line 538
    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    const-string v0, "FreezeVideoFragment"

    .line 540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wake up. Is src video ready:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    if-eqz v4, :cond_2

    move v4, v2

    goto :goto_4

    :cond_2
    move v4, v1

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    .line 542
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 544
    :goto_5
    monitor-exit p0

    goto :goto_3

    :goto_6
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_3
    return v2
.end method

.method static synthetic p(Lcn/nubia/camera/r/e;)Z
    .locals 0

    .line 66
    iget-boolean p0, p0, Lcn/nubia/camera/r/e;->R:Z

    return p0
.end method

.method static synthetic q(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method private q()V
    .locals 4

    .line 795
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/d/c;->e:Lcn/nubia/camera/d/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/c;)V

    .line 796
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/c/e;->k()Lcom/android/common/c/a;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e;->U:Lcom/android/common/c/a$a;

    invoke-virtual {v0, v1}, Lcom/android/common/c/a;->b(Lcom/android/common/c/a$a;)V

    .line 798
    iget-object v0, p0, Lcn/nubia/camera/r/e;->D:Lcn/nubia/camera/r/k;

    new-instance v1, Lcn/nubia/camera/r/e$8;

    invoke-direct {v1, p0}, Lcn/nubia/camera/r/e$8;-><init>(Lcn/nubia/camera/r/e;)V

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/k;->a(Lcn/nubia/camera/k/ah$b;)V

    .line 815
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->t()Lcn/nubia/camera/ae/a;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcn/nubia/camera/ae/a;->a(JZ)V

    return-void
.end method

.method static synthetic r(Lcn/nubia/camera/r/e;)Lcom/android/common/c/a$a;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->U:Lcom/android/common/c/a$a;

    return-object p0
.end method

.method static synthetic s(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic t(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/ad/a;
    .locals 0

    .line 66
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p0

    return-object p0
.end method

.method static synthetic u(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/d;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    return-object p0
.end method

.method static synthetic v(Lcn/nubia/camera/r/e;)Lcn/nubia/camera/r/n;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    return-object p0
.end method

.method static synthetic w(Lcn/nubia/camera/r/e;)Ljava/util/ArrayList;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic x(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method

.method static synthetic y(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    return-object p0
.end method

.method static synthetic z(Lcn/nubia/camera/r/e;)Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;
    .locals 0

    .line 66
    iget-object p0, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    return-object p0
.end method


# virtual methods
.method public a(Lcn/nubia/camera/bb/w;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    .line 367
    monitor-enter p0

    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 369
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(ZZLjava/lang/String;)V
    .locals 0

    .line 384
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/d/a;->b()Lcn/nubia/camera/d/b;

    move-result-object p1

    sget-object p2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    if-eq p1, p2, :cond_0

    return-void

    .line 387
    :cond_0
    iget-object p1, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 388
    iget-object p1, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->b()V

    .line 390
    :cond_1
    iget-object p1, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/a/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 7

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onShutterButtonClick"

    .line 213
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 215
    iget-object v3, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v3}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->a:Lcn/nubia/camera/elefnovideo/l;

    if-ne v3, v4, :cond_1

    .line 216
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v3, v4}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/d;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcn/nubia/camera/r/e;->O:Z

    if-nez v3, :cond_1

    .line 218
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->u()Lcom/android/preference/c;

    move-result-object v3

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-boolean v5, p0, Lcn/nubia/camera/r/e;->R:Z

    invoke-static {v3, v4, v5}, Lcn/nubia/camera/r/a;->a(Lcom/android/preference/c;Landroid/content/Context;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcn/nubia/camera/r/e;->M:Z

    .line 219
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start freezevideo with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcn/nubia/camera/r/e;->M:Z

    if-eqz v4, :cond_0

    const-string v4, "hand"

    goto :goto_0

    :cond_0
    const-string v4, "tripod"

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-direct {p0}, Lcn/nubia/camera/r/e;->o()V

    .line 221
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ba/f;->c()V

    .line 222
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->a()V

    .line 223
    iput-wide v1, p0, Lcn/nubia/camera/r/e;->E:J

    goto :goto_1

    .line 225
    :cond_1
    iget-wide v3, p0, Lcn/nubia/camera/r/e;->E:J

    sub-long v3, v1, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    .line 226
    invoke-virtual {v3}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v3

    sget-object v4, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-ne v3, v4, :cond_2

    .line 227
    iget-object v0, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/e$a;->removeMessages(I)V

    .line 228
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->b()V

    goto :goto_1

    .line 231
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ignore click: state "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v4}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", time "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcn/nubia/camera/r/e;->E:J

    sub-long/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public b(I)V
    .locals 5

    .line 278
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoStartEnd result "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreezeVideoFragment"

    invoke-static {v1, v0}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 280
    invoke-static {}, Lcn/nubia/camera/ba/f;->b()Lcn/nubia/camera/ba/f;

    move-result-object p1

    const v1, 0x7f0f00bc

    invoke-virtual {p0, v1}, Lcn/nubia/camera/r/e;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v0}, Lcn/nubia/camera/ba/f;->b(Ljava/lang/String;I)V

    const/16 p1, 0x258

    .line 282
    new-instance v1, Lcn/nubia/algorithm/camera/FreezeVideoJni;

    iget-boolean v2, p0, Lcn/nubia/camera/r/e;->M:Z

    iget-object v3, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v3, v3, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v3, v3, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v4, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v4, v4, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v4, v4, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-direct {v1, v2, v3, v4, p1}, Lcn/nubia/algorithm/camera/FreezeVideoJni;-><init>(ZIII)V

    iput-object v1, p0, Lcn/nubia/camera/r/e;->I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    .line 286
    iget-object p1, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 287
    iget-object p1, p0, Lcn/nubia/camera/r/e;->a:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 288
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->J:Z

    const/4 p1, 0x0

    .line 289
    iput-object p1, p0, Lcn/nubia/camera/r/e;->L:Ljava/util/HashMap;

    .line 290
    iput v0, p0, Lcn/nubia/camera/r/e;->K:I

    .line 291
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->Q:Z

    .line 292
    iput-object p1, p0, Lcn/nubia/camera/r/e;->S:Lcn/nubia/camera/bb/w;

    .line 293
    new-instance v0, Lcn/nubia/camera/r/d;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-direct {v0, v1}, Lcn/nubia/camera/r/d;-><init>(Lcn/nubia/algorithm/camera/FreezeVideoJni;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    .line 294
    iget-object v1, p0, Lcn/nubia/camera/r/e;->o:Lcn/nubia/camera/r/c;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/d;->a(Lcn/nubia/camera/r/c;)V

    .line 295
    iget-object v0, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    invoke-virtual {v0}, Lcn/nubia/camera/r/d;->start()V

    .line 296
    new-instance v0, Lcn/nubia/camera/r/n;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->I:Lcn/nubia/algorithm/camera/FreezeVideoJni;

    invoke-direct {v0, v1}, Lcn/nubia/camera/r/n;-><init>(Lcn/nubia/algorithm/camera/FreezeVideoJni;)V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    .line 297
    iget-object v1, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    invoke-virtual {v1, v0}, Lcn/nubia/camera/r/d;->a(Lcn/nubia/camera/r/c;)V

    .line 298
    iget-object v0, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/n;->a(Lcn/nubia/camera/r/m;)V

    .line 299
    iget-object v0, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->q:Lcn/nubia/camera/r/m;

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/n;->a(Lcn/nubia/camera/r/m;)V

    .line 300
    iget-object v0, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    invoke-virtual {v0}, Lcn/nubia/camera/r/n;->start()V

    .line 301
    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->M:Z

    if-eqz v0, :cond_0

    .line 302
    iget-object p1, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    iget-object v0, p0, Lcn/nubia/camera/r/e;->s:Lcn/nubia/camera/r/j$a;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->t:Lcn/nubia/camera/r/j$a;

    invoke-virtual {p1, v0, v1}, Lcn/nubia/camera/r/j;->a(Lcn/nubia/camera/r/j$a;Lcn/nubia/camera/r/j$a;)V

    goto :goto_0

    .line 305
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    iget-object v1, p0, Lcn/nubia/camera/r/e;->s:Lcn/nubia/camera/r/j$a;

    invoke-virtual {v0, v1, p1}, Lcn/nubia/camera/r/j;->a(Lcn/nubia/camera/r/j$a;Lcn/nubia/camera/r/j$a;)V

    .line 307
    :goto_0
    iget-object p1, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->e()Landroid/view/Surface;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v1, v1, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v1, v1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    iget-object v2, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v2, v2, Lcn/nubia/camera/r/i;->a:Landroid/media/CamcorderProfile;

    iget v2, v2, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    iget-object v3, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    .line 310
    invoke-virtual {v3}, Lcn/nubia/camera/r/i;->f()I

    move-result v3

    .line 307
    invoke-virtual {p1, v0, v1, v2, v3}, Lcn/nubia/camera/r/j;->a(Landroid/view/Surface;III)V

    .line 311
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    iget-object v0, v0, Lcn/nubia/camera/r/i;->b:Lcn/nubia/camera/bb/u;

    iget-object v0, v0, Lcn/nubia/camera/bb/u;->c:Ljava/lang/String;

    const-string v1, ".mp4"

    const-string v2, ""

    .line 312
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-static {p1}, Lcn/nubia/camera/r/a;->a(Ljava/lang/String;)V

    .line 313
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->M:Z

    if-eqz v0, :cond_1

    const-string v0, "\u624b\u6301"

    goto :goto_1

    :cond_1
    const-string v0, "\u4e09\u811a\u67b6"

    :goto_1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/nubia/camera/r/a;->b(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p1, "ui_change_recording"

    .line 316
    invoke-virtual {p0, p1}, Lcn/nubia/camera/r/e;->c(Ljava/lang/String;)V

    .line 317
    iget-object p1, p0, Lcn/nubia/camera/r/e;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 318
    iget-object p1, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/e$a;->removeMessages(I)V

    .line 319
    iget-object p1, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 320
    iget-object p1, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->e()V

    .line 321
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 322
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    const/4 p1, 0x1

    .line 323
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->e(Z)V

    :goto_2
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
    .locals 3

    const-string v0, "FreezeVideoFragment"

    .line 343
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoStopEnd result "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iput p1, p0, Lcn/nubia/camera/r/e;->C:I

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    .line 346
    iget-object p1, p0, Lcn/nubia/camera/r/e;->H:Lcn/nubia/camera/r/d;

    iget-object v0, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gtz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/d;->a(Z)V

    .line 347
    iget-object p1, p0, Lcn/nubia/camera/r/e;->G:Lcn/nubia/camera/r/n;

    iget-object v0, p0, Lcn/nubia/camera/r/e;->F:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->M:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_2

    :cond_2
    :goto_1
    move v0, v1

    :goto_2
    invoke-virtual {p1, v0}, Lcn/nubia/camera/r/n;->b(Z)V

    .line 348
    monitor-enter p0

    .line 349
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 352
    iget-object p1, p0, Lcn/nubia/camera/r/e;->A:Lcn/nubia/camera/r/e$a;

    invoke-virtual {p1, v2}, Lcn/nubia/camera/r/e$a;->removeMessages(I)V

    .line 353
    iget-object p1, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {p1, v2}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setPressed(Z)V

    .line 354
    iget-object p1, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 355
    iget-object p1, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    iget-object v0, p0, Lcn/nubia/camera/r/e;->n:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a(Lcom/android/common/ui/shutterbutton/MultiFunctionImageView$a;)V

    .line 356
    iget-object p1, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    sget-object v0, Lcom/android/common/ui/shutterbutton/d;->b:Lcom/android/common/ui/shutterbutton/d;

    invoke-virtual {p1, v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setFunction(Lcom/android/common/ui/shutterbutton/d;)V

    .line 357
    iget-object p1, p0, Lcn/nubia/camera/r/e;->w:Lcom/android/common/ui/a/b;

    invoke-virtual {p1}, Lcom/android/common/ui/a/b;->e()V

    .line 358
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcn/nubia/camera/q/i;

    invoke-virtual {p1}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 359
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object p1

    sget-object v0, Lcn/nubia/camera/d/b;->d:Lcn/nubia/camera/d/b;

    invoke-virtual {p1, v0}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 360
    invoke-direct {p0, v1}, Lcn/nubia/camera/r/e;->e(Z)V

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 350
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_3
    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 780
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->f(Z)V

    return-void
.end method

.method public d()V
    .locals 3

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onVideoStartBegin"

    .line 265
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "ui_change_recording"

    .line 266
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/e;->d(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcn/nubia/camera/r/e;->u:Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/ZtemtShutterButton;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcn/nubia/camera/r/e;->v:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->a()V

    .line 269
    iget-object v0, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setVisibility(I)V

    .line 270
    iget-object v0, p0, Lcn/nubia/camera/r/e;->x:Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;

    invoke-virtual {v0, v1}, Lcom/android/common/ui/shutterbutton/MultiFunctionImageView;->setEnabled(Z)V

    .line 271
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcn/nubia/camera/q/i;

    invoke-virtual {v0}, Lcn/nubia/camera/q/i;->Q()Lcn/nubia/camera/three_a/ui/h;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcn/nubia/camera/three_a/ui/h;->f(Z)V

    .line 272
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->f()Lcn/nubia/camera/d/a;

    move-result-object v0

    sget-object v2, Lcn/nubia/camera/d/b;->f:Lcn/nubia/camera/d/b;

    invoke-virtual {v0, v2}, Lcn/nubia/camera/d/a;->a(Lcn/nubia/camera/d/b;)V

    .line 273
    invoke-direct {p0, v1}, Lcn/nubia/camera/r/e;->e(Z)V

    return-void
.end method

.method public d(I)V
    .locals 0

    return-void
.end method

.method public d_()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    .line 238
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->b()V

    .line 239
    iget-object v1, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v1}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

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

    const-string v0, "FreezeVideoFragment"

    const-string v1, "onVideoStopStart"

    .line 334
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    iget-object v0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v0}, Lcn/nubia/camera/r/j;->a()V

    .line 337
    iget-object v0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v0}, Lcn/nubia/camera/r/j;->d()I

    move-result v0

    iput v0, p0, Lcn/nubia/camera/r/e;->T:I

    const/4 v0, 0x1

    .line 338
    iput-boolean v0, p0, Lcn/nubia/camera/r/e;->O:Z

    return-void
.end method

.method protected i_()V
    .locals 0

    return-void
.end method

.method public k()Z
    .locals 2

    .line 254
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->b:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    .line 255
    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->c:Lcn/nubia/camera/elefnovideo/l;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    .line 256
    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->d()Lcn/nubia/camera/elefnovideo/l;

    move-result-object v0

    sget-object v1, Lcn/nubia/camera/elefnovideo/l;->d:Lcn/nubia/camera/elefnovideo/l;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 260
    :cond_0
    invoke-super {p0}, Lcn/nubia/camera/q/a;->k()Z

    move-result v0

    return v0

    .line 257
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->b()V

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 0

    return-void
.end method

.method m()Ljava/lang/String;
    .locals 3

    const v0, 0x7f0f022e

    .line 768
    invoke-virtual {p0, v0}, Lcn/nubia/camera/r/e;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 769
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->u()Lcom/android/preference/c;

    move-result-object v1

    const-string v2, "pref_freeze_video_registration_key"

    invoke-virtual {v1, v2, v0}, Lcom/android/preference/c;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcn/nubia/camera/r/e;->P:Lcn/nubia/camera/r/o;

    if-eqz v0, :cond_0

    .line 775
    invoke-virtual {v0}, Lcn/nubia/camera/r/o;->c()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcn/nubia/camera/q/a;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p3

    .line 154
    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->d:Z

    if-eqz v0, :cond_0

    return-object p3

    :cond_0
    const p3, 0x7f0c0051

    const/4 v0, 0x0

    .line 157
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 158
    invoke-direct {p0, p1}, Lcn/nubia/camera/r/e;->d(Landroid/view/View;)V

    .line 159
    move-object p2, p1

    check-cast p2, Landroid/view/ViewGroup;

    const/4 p3, 0x1

    invoke-static {p0, p3, v0, p3, p2}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;ZZZLandroid/view/ViewGroup;)Lcn/nubia/camera/q/c;

    move-result-object p2

    iput-object p2, p0, Lcn/nubia/camera/r/e;->z:Lcn/nubia/camera/q/c;

    .line 161
    new-instance p2, Lcn/nubia/camera/r/o;

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object p3

    invoke-virtual {p3}, Lcn/nubia/camera/ad/a;->x()Lcn/nubia/camera/al/a;

    move-result-object p3

    invoke-direct {p2, p3}, Lcn/nubia/camera/r/o;-><init>(Lcn/nubia/camera/al/a;)V

    iput-object p2, p0, Lcn/nubia/camera/r/e;->P:Lcn/nubia/camera/r/o;

    .line 162
    iget-object p3, p0, Lcn/nubia/camera/r/e;->r:Lcn/nubia/camera/r/o$b;

    invoke-virtual {p2, p3}, Lcn/nubia/camera/r/o;->a(Lcn/nubia/camera/r/o$b;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 168
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onDestroyView()V

    .line 169
    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    .line 172
    :cond_0
    iget-object v0, p0, Lcn/nubia/camera/r/e;->z:Lcn/nubia/camera/q/c;

    invoke-static {p0, v0}, Lcn/nubia/camera/q/d;->a(Lcn/nubia/camera/q/a;Lcn/nubia/camera/q/c;)V

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 190
    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->d:Z

    if-eqz v0, :cond_0

    .line 191
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void

    :cond_0
    const-string v0, "FreezeVideoFragment"

    const-string v1, "onPause"

    .line 194
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget-object v0, p0, Lcn/nubia/camera/r/e;->B:Lcn/nubia/camera/r/i;

    invoke-virtual {v0}, Lcn/nubia/camera/r/i;->c()V

    .line 196
    iget-object v0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v0}, Lcn/nubia/camera/r/j;->e()V

    .line 197
    iget-object v0, p0, Lcn/nubia/camera/r/e;->P:Lcn/nubia/camera/r/o;

    invoke-virtual {v0}, Lcn/nubia/camera/r/o;->b()V

    .line 198
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 177
    invoke-super {p0}, Lcn/nubia/camera/q/a;->onResume()V

    .line 178
    iget-boolean v0, p0, Lcn/nubia/camera/r/e;->d:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "FreezeVideoFragment"

    const-string v1, "onResume"

    .line 181
    invoke-static {v0, v1}, Lcn/nubia/camera/c/b;->b(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Lcn/nubia/camera/r/j;

    invoke-direct {v0}, Lcn/nubia/camera/r/j;-><init>()V

    iput-object v0, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    .line 183
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->u()Lcom/android/preference/c;

    move-result-object v1

    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, p0, Lcn/nubia/camera/r/e;->R:Z

    invoke-static {v1, v2, v3}, Lcn/nubia/camera/r/a;->a(Lcom/android/preference/c;Landroid/content/Context;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/nubia/camera/r/j;->a(Z)V

    .line 184
    invoke-virtual {p0}, Lcn/nubia/camera/r/e;->A()Lcn/nubia/camera/ad/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/nubia/camera/ad/a;->L()Lcom/android/common/c/e;

    move-result-object v0

    iget-object v1, p0, Lcn/nubia/camera/r/e;->N:Lcn/nubia/camera/r/j;

    invoke-virtual {v0, v1}, Lcom/android/common/c/e;->a(Lcom/android/common/c/f$a;)V

    .line 185
    iget-object v0, p0, Lcn/nubia/camera/r/e;->P:Lcn/nubia/camera/r/o;

    invoke-virtual {v0}, Lcn/nubia/camera/r/o;->a()V

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
