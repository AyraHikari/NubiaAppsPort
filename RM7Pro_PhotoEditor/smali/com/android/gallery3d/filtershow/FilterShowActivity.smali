.class public Lcom/android/gallery3d/filtershow/FilterShowActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source ""

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/FilterShowActivity$p;
    }
.end annotation


# static fields
.field private static A0:F = -1.0f

.field private static B0:I = 0x0

.field private static C0:I = 0x0

.field public static D0:Z = false

.field public static E0:Z = false

.field public static F0:I = -0x1

.field public static G0:Ljava/lang/String; = null

.field private static y0:Z = false

.field private static z0:Z = false


# instance fields
.field private A:Lcom/android/gallery3d/filtershow/category/b;

.field private B:Lcom/android/gallery3d/filtershow/category/b;

.field private C:Lcom/android/gallery3d/filtershow/category/b;

.field private D:Lcom/android/gallery3d/filtershow/category/b;

.field private E:Lcom/android/gallery3d/filtershow/category/b;

.field private F:Lcom/android/gallery3d/filtershow/category/b;

.field private G:Lcom/android/gallery3d/filtershow/category/b;

.field private H:Lcom/android/gallery3d/filtershow/category/b;

.field private I:Lcom/android/gallery3d/filtershow/category/b;

.field private J:Lcom/android/gallery3d/filtershow/category/b;

.field private K:I

.field private L:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/filters/d0;",
            ">;"
        }
    .end annotation
.end field

.field private M:I

.field private N:Z

.field private O:Landroid/view/View;

.field private P:F

.field private Q:F

.field private R:F

.field private S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

.field private T:Z

.field private U:Landroid/content/DialogInterface;

.field private V:Landroid/widget/PopupMenu;

.field private W:Z

.field private X:Z

.field private Y:Lcom/android/gallery3d/filtershow/editors/c0;

.field private Z:Lcom/android/gallery3d/filtershow/editors/b0;

.field private a:Ljava/lang/String;

.field private a0:Lcom/android/gallery3d/filtershow/editors/z;

.field b:Lcom/android/gallery3d/filtershow/imageshow/x;

.field private b0:Lcom/android/gallery3d/filtershow/materials/d;

.field private c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

.field private c0:Landroid/view/View;

.field private d:Landroid/view/View;

.field private d0:Landroid/view/View;

.field private e:Landroid/widget/TextView;

.field private e0:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private f0:Landroid/widget/TextView;

.field private g:Lcom/android/gallery3d/filtershow/b;

.field private g0:I

.field private h:Lcom/android/gallery3d/filtershow/editors/c;

.field private h0:Z

.field private i:Lcom/android/gallery3d/filtershow/editors/o;

.field private i0:I

.field private j:Z

.field private j0:I

.field private k:Z

.field private k0:I

.field private final l:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/android/gallery3d/filtershow/imageshow/ImageShow;",
            ">;"
        }
    .end annotation
.end field

.field private l0:I

.field private m:Landroid/widget/ShareActionProvider;

.field private m0:I

.field private n:Ljava/io/File;

.field private n0:Z

.field private o:Z

.field private o0:Landroid/app/AlertDialog;

.field private p:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/ProgressDialog;",
            ">;"
        }
    .end annotation
.end field

.field private p0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

.field private q0:Landroid/app/AlertDialog;

.field private r:Landroid/net/Uri;

.field private r0:Landroid/view/View;

.field private s:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

.field private s0:Lcn/nubia/app/c;

.field private t:Landroid/net/Uri;

.field private t0:Ljava/lang/String;

.field private u:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private u0:Z

.field private v:I

.field private v0:Z

.field private w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/gallery3d/filtershow/category/a;",
            ">;"
        }
    .end annotation
.end field

.field private w0:Landroid/content/ServiceConnection;

.field private x:Lcom/android/gallery3d/filtershow/category/b;

.field public x0:Landroid/graphics/Point;

.field private y:Lcom/android/gallery3d/filtershow/category/b;

.field private z:Lcom/android/gallery3d/filtershow/category/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "jni_filtershow_filters2"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d:Landroid/view/View;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/android/gallery3d/filtershow/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/b;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k:Z

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l:Ljava/util/Vector;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n:Ljava/io/File;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u:Ljava/util/ArrayList;

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    iput-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L:Ljava/util/Vector;

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M:I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P:F

    iput v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q:F

    iput v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R:F

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0:Lcom/android/gallery3d/filtershow/materials/d;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e0:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g0:I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h0:Z

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i0:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j0:I

    iput v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k0:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l0:I

    iput v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m0:I

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n0:Z

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v0:Z

    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$g;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w0:Landroid/content/ServiceConnection;

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0:Landroid/graphics/Point;

    return-void
.end method

.method static synthetic A(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/editors/c0;)Lcom/android/gallery3d/filtershow/editors/c0;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y:Lcom/android/gallery3d/filtershow/editors/c0;

    return-object p1
.end method

.method private A1()V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    const-string v1, "PhotoEditor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FSA VersionCode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " VersionName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic B(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/b0;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z:Lcom/android/gallery3d/filtershow/editors/b0;

    return-object p0
.end method

.method static synthetic C(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/editors/b0;)Lcom/android/gallery3d/filtershow/editors/b0;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z:Lcom/android/gallery3d/filtershow/editors/b0;

    return-object p1
.end method

.method static synthetic D(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/z;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a0:Lcom/android/gallery3d/filtershow/editors/z;

    return-object p0
.end method

.method private D1()V
    .locals 6

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/utils/b;->n(Landroid/app/Activity;Landroid/content/Intent;)V

    const-string v1, "launch-fullscreen"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x400

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    :cond_0
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a:Ljava/lang/String;

    const-string v1, "selectedpaths"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    iget v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v:I

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    const-string v3, "FilterShowActivity"

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processIntent loadUri = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sput-boolean v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0:Z

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r:Landroid/net/Uri;

    if-eqz v4, :cond_3

    move-object v1, v4

    :cond_3
    const-string v4, "is_heic"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E0:Z

    const/4 v4, -0x1

    const-string v5, "heic_index"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    sput v4, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0:I

    const-string v4, "issupersnap"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v0:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processIntent: duduwa supersnap "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v0:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E0:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0:I

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0:I

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q0(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_5

    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m2(Landroid/net/Uri;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C1()V

    :goto_1
    return-void
.end method

.method static synthetic E(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/editors/z;)Lcom/android/gallery3d/filtershow/editors/z;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a0:Lcom/android/gallery3d/filtershow/editors/z;

    return-object p1
.end method

.method static synthetic F(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W0()I

    move-result p0

    return p0
.end method

.method public static F0(F)I
    .locals 2

    sget v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0:F

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDensityScale, mDensity = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterShowActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v0, 0x3f000000    # 0.5f

    sget v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0:F

    mul-float/2addr p0, v1

    add-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method static synthetic G(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j:Z

    return p0
.end method

.method static synthetic H(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j:Z

    return p1
.end method

.method static synthetic I(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic J(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i0:I

    return p0
.end method

.method private N()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v1

    iget v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->z()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->K()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/filtershow/materials/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->M()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/filtershow/materials/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->l()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v0, :cond_7

    move-object v2, v0

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/x;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v7

    check-cast v6, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {v6}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/android/gallery3d/filtershow/materials/g;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_0
    move v5, v4

    :cond_6
    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_1

    :cond_7
    move-object v1, v0

    move-object v0, v2

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fsa 2577 delete:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mate"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_8

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fsa 2579 invalate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/gallery3d/filtershow/c/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->j0()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->g0()V

    :cond_8
    return-void
.end method

.method private O()V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;-><init>()V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterFx;->e()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z0:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "txh checkUseArtFilter, sIsArtFilter = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z0:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterShowActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private P()V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;-><init>()V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->isFacePretty()Z

    move-result v0

    sput-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0:Z

    return-void
.end method

.method private Q0(Landroid/net/Uri;I)Landroid/net/Uri;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getHeicUri: originalImageUri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FilterShowActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".heifEditor-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    invoke-virtual {v2, p0, p1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    const/16 p1, 0x1b

    invoke-virtual {v2, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Landroid/media/MediaMetadataRetriever$BitmapParams;

    invoke-direct {v3}, Landroid/media/MediaMetadataRetriever$BitmapParams;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    if-ge p2, p1, :cond_1

    :try_start_1
    invoke-virtual {v2, p2, v3}, Landroid/media/MediaMetadataRetriever;->getImageAtIndex(ILandroid/media/MediaMetadataRetriever$BitmapParams;)Landroid/graphics/Bitmap;

    move-result-object p1

    new-instance p2, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p2, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p1, v2, v3, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p2}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_0
    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    return-object p1

    :cond_1
    return-object v0

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {p0, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private Q1()V
    .locals 3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T0(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/ui/b;->setTextSize(I)V

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T0(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/ui/b;->setTrianglePadding(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T0(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Lcom/android/gallery3d/filtershow/ui/b;->setTriangleSize(I)V

    const v1, 0x7f07008a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const v2, 0x7f060040

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->r(Landroid/graphics/drawable/Drawable;I)V

    const/high16 v0, 0x40400000    # 3.0f

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T0(F)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/c0;->s(I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r:Landroid/net/Uri;

    return-void
.end method

.method private R()V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$n;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$n;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private T()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private W0()I
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private X1()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f080108

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->e(Landroid/widget/FrameLayout;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->f(Ljava/util/Vector;)V

    return-void
.end method

.method private Y()V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->v()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Z()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->u()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/x;

    const v4, 0x7f0e0034

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    if-nez v2, :cond_0

    const v4, 0x7f0e012b

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_2
    new-instance v2, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v2, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->q(Z)V

    return-void
.end method

.method private b0()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->w()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/b;->q(Z)V

    return-void
.end method

.method private b2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private c0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/e;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/e;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/l;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/l;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/j;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/j;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/f;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/f;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/a;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/a;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/y;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/y;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/v;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/v;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/q;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/q;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/h;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/h;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/m;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/m;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/r;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/r;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/u;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/u;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/x;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/x;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/s;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/s;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/d;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/d;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/k;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/k;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/b;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/t;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/t;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/n;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/i;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/i;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/w;

    invoke-direct {v1}, Lcom/android/gallery3d/filtershow/editors/w;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->a(Lcom/android/gallery3d/filtershow/editors/c;)V

    return-void
.end method

.method private c1()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private d0()V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->x()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v3, p0, v1}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e0()V
    .locals 9

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->C()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->A()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->B()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->z()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_1
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_2
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_3
    new-instance v4, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v4, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f060000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v5, v4}, Lcom/android/gallery3d/filtershow/category/b;->l(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_4
    iget-object v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v7, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v8, 0x5

    invoke-direct {v7, p0, v4, v5, v8}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;II)V

    invoke-virtual {v6, v7}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v4

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_6
    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v6, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v7, 0x6

    invoke-direct {v6, p0, v2, v5, v7}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;II)V

    invoke-virtual {v4, v6}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_8
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v6, 0x7

    invoke-direct {v4, p0, v2, v5, v6}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;II)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_a
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/a;

    const/16 v4, 0x8

    invoke-direct {v3, p0, v1, v5, v4}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;II)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_3

    :cond_b
    return-void
.end method

.method private e2(IZ)V
    .locals 4

    new-instance v0, Lcn/nubia/app/a$a;

    const v1, 0x7f0f0026

    invoke-direct {v0, p0, v1}, Lcn/nubia/app/a$a;-><init>(Landroid/content/Context;I)V

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$b;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    const v2, 0x7f0e0041

    invoke-virtual {v0, v2, v1}, Lcn/nubia/app/a$a;->c(ILandroid/content/DialogInterface$OnClickListener;)Lcn/nubia/app/a$a;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    new-instance p1, Landroid/widget/ArrayAdapter;

    const v2, 0x7f0b0018

    const v3, 0x7f0800d6

    invoke-direct {p1, p0, v2, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;

    invoke-direct {v1, p0, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity$c;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)V

    invoke-virtual {v0, p1, v1}, Lcn/nubia/app/a$a;->b(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcn/nubia/app/a$a;

    invoke-virtual {v0}, Lcn/nubia/app/a$a;->d()Lcn/nubia/app/a;

    return-void
.end method

.method static synthetic f(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    return-object p0
.end method

.method private f0()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->D()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/b;->q(Z)V

    return-void
.end method

.method private f1()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method static synthetic g(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    return-object p1
.end method

.method private g0()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->K()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->q(Z)V

    return-void
.end method

.method private g2(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u00b7 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-eq v2, v3, :cond_0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/app/AlertDialog$Builder;

    const v2, 0x7f0f0003

    invoke-direct {p2, p0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    if-eqz p2, :cond_4

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p2

    if-eqz p2, :cond_4

    const v1, 0x7f0b008f

    invoke-virtual {p2, v1}, Landroid/view/Window;->setContentView(I)V

    const/16 v1, 0x50

    invoke-virtual {p2, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    invoke-virtual {p2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    const v1, 0x7f0801c5

    invoke-virtual {p2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f080078

    invoke-virtual {p2, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0801eb

    invoke-virtual {p2, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$e;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    if-eqz p2, :cond_4

    new-instance p1, Lcom/android/gallery3d/filtershow/FilterShowActivity$f;

    invoke-direct {p1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$f;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-void
.end method

.method static synthetic h(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/o;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    return-object p0
.end method

.method private h0()V
    .locals 6

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->L()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/x;

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v5, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v5, p0, v2}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    instance-of v2, v2, Lcom/android/gallery3d/filtershow/filters/n;

    if-eqz v2, :cond_1

    move v1, v3

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/n;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/gallery3d/filtershow/filters/n;-><init>(Landroid/content/Context;Lcom/android/gallery3d/filtershow/materials/g;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/category/a;->p(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    :cond_3
    return-void
.end method

.method private h1()V
    .locals 7

    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r0:Landroid/view/View;

    if-eqz v0, :cond_1

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060132

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060013

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070181

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    mul-int/lit8 v6, v2, 0x2

    sub-int/2addr v0, v6

    sub-int/2addr v0, v3

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    add-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v1, v4

    sub-int/2addr v1, v3

    sub-int/2addr v1, v5

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v2, v1

    add-int/lit8 v1, v2, -0x14

    move v2, v0

    :goto_0
    new-instance v0, Lcn/nubia/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r0:Landroid/view/View;

    check-cast v4, Landroid/view/ViewGroup;

    invoke-direct {v0, v3, v4, v2, v1}, Lcn/nubia/app/c;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;II)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s0:Lcn/nubia/app/c;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0151

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t0:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private h2(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_0

    const/4 v6, 0x1

    goto :goto_1

    :cond_0
    move v6, v3

    :goto_1
    invoke-static {p0, v5}, Lcn/nubia/permission/b;->g(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v7

    if-nez v6, :cond_1

    if-nez v7, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {}, Lcn/nubia/permission/b;->b()Ljava/util/HashMap;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v6, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move v2, v3

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-direct {p0, p1, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g2(Landroid/content/Context;Ljava/util/ArrayList;)V

    goto :goto_3

    :cond_5
    const p1, 0x7f0e011f

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_3
    return-void
.end method

.method static synthetic i(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object p0
.end method

.method private i0()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v0, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->p(Z)V

    return-void
.end method

.method private i1()V
    .locals 4

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R()V

    const v0, 0x7f0801fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C0:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    sput-object v1, Lcom/android/gallery3d/filtershow/filters/ImageFilterDoc;->assMgr:Landroid/content/res/AssetManager;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->R()V

    return-void
.end method

.method static synthetic j(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s:Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    return-object p1
.end method

.method private j0()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->M()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    :cond_0
    new-instance v1, Lcom/android/gallery3d/filtershow/category/b;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/category/b;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/gallery3d/filtershow/filters/x;->a0(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v4, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v3, v4}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/b;->q(Z)V

    return-void
.end method

.method static synthetic k(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/editors/o;)Lcom/android/gallery3d/filtershow/editors/o;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    return-object p1
.end method

.method static synthetic l(Lcom/android/gallery3d/filtershow/FilterShowActivity;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m2(Landroid/net/Uri;)V

    return-void
.end method

.method public static l0(Ljava/lang/String;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method private l1()Z
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l2(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l1()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ProgressDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    return-void

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    const p1, 0x7f0e016d

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const v3, 0x7f0e00e5

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v1

    invoke-virtual {p0, v3, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0701f9

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic m(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method private m2(Landroid/net/Uri;)V
    .locals 4

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n2()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j:Z

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$p;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    iget v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i0:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i0:I

    new-array v2, v3, [Landroid/net/Uri;

    aput-object p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static synthetic n(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method static synthetic o(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method static synthetic p(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method public static p1()Z
    .locals 1

    sget-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z0:Z

    return v0
.end method

.method static synthetic q(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method public static q1()Z
    .locals 1

    sget-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0:Z

    return v0
.end method

.method static synthetic r(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method static synthetic s(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method static synthetic t(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/category/b;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    return-object p0
.end method

.method static synthetic u(Lcom/android/gallery3d/filtershow/FilterShowActivity;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    return p0
.end method

.method static synthetic v(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/FilterShowActivity$p;)Lcom/android/gallery3d/filtershow/FilterShowActivity$p;
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    return-object p1
.end method

.method static synthetic w(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic x(Lcom/android/gallery3d/filtershow/FilterShowActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h0:Z

    return p1
.end method

.method static synthetic y(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T()V

    return-void
.end method

.method static synthetic z(Lcom/android/gallery3d/filtershow/FilterShowActivity;)Lcom/android/gallery3d/filtershow/editors/c0;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y:Lcom/android/gallery3d/filtershow/editors/c0;

    return-object p0
.end method

.method private z1()V
    .locals 2

    const v0, 0x7f0b0020

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    const v0, 0x7f080015

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c0:Landroid/view/View;

    const v0, 0x7f080014

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d0:Landroid/view/View;

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f080016

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e0:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h1()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V1()V

    const v0, 0x7f080185

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X1()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/b;->c()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->c()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z1()V

    return-void
.end method


# virtual methods
.method public A0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public B0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n0:Z

    return v0
.end method

.method public B1(Landroid/widget/PopupMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    invoke-virtual {p1, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    return-void
.end method

.method public C0()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const v0, 0x7f0e0192

    goto :goto_0

    :pswitch_2
    const v0, 0x7f0e0197

    goto :goto_0

    :pswitch_3
    const v0, 0x7f0e0199

    goto :goto_0

    :pswitch_4
    const v0, 0x7f0e019a

    goto :goto_0

    :pswitch_5
    const v0, 0x7f0e0190

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0e018f

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0e0193

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0e0196

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0e0198

    goto :goto_0

    :pswitch_a
    const v0, 0x7f0e0191

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public C1()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x7f0e016f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public D0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    return v0
.end method

.method public E0()V
    .locals 2

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0:F

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0:I

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v0

    sput v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C0:I

    return-void
.end method

.method public E1(Lcom/android/gallery3d/filtershow/category/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public F1(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->u()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-ne v0, p1, :cond_1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->u()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_1
    return-void
.end method

.method public G0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k0:I

    return v0
.end method

.method public G1(Lcom/android/gallery3d/filtershow/category/a;)V
    .locals 0

    return-void
.end method

.method public H0(I)Lcom/android/gallery3d/filtershow/editors/c;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    return-object p1
.end method

.method public H1(Lcom/android/gallery3d/filtershow/category/a;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L:Ljava/util/Vector;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t2()V

    return-void
.end method

.method public I0()Lcom/android/gallery3d/filtershow/editors/h;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f080109

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/h;

    return-object v0
.end method

.method public I1()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/o;->l()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    :cond_0
    return-void
.end method

.method public J0()Lcom/android/gallery3d/filtershow/editors/j;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f08010a

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/j;

    return-object v0
.end method

.method J1()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/b;->m()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/f/b;->i(I)Lcom/android/gallery3d/filtershow/f/a;

    move-result-object v0

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>()V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/a;->a()Ljava/util/Vector;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    const/4 v4, 0x1

    invoke-virtual {v3, v2, v0, v4}, Lcom/android/gallery3d/filtershow/imageshow/x;->L0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/util/Vector;Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->Z()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/t;->S()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K0()Lcom/android/gallery3d/filtershow/editors/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/n;->T()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I0()Lcom/android/gallery3d/filtershow/editors/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/h;->T()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L0()Lcom/android/gallery3d/filtershow/editors/s;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/s;->Q()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J0()Lcom/android/gallery3d/filtershow/editors/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/j;->i0()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S1(I)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L1(I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/a;->R()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j1()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d2()V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    iput v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W1(Z)V

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n0:Z

    return-void
.end method

.method public K()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    iget v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M:I

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/d0;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/android/gallery3d/filtershow/filters/d0;-><init>(Ljava/lang/String;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t2()V

    return-void
.end method

.method public K0()Lcom/android/gallery3d/filtershow/editors/n;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f08010d

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/n;

    return-object v0
.end method

.method public K1()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/gallery3d/filtershow/g/b;->c(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-wide/32 v3, 0x1400000

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/filtershow/utils/b;->p(Ljava/lang/String;J)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0e0127

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0126

    :goto_0
    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X:Z

    iget v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/x;->Q()I

    move-result v1

    if-ltz v1, :cond_2

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/editors/x;->s()V

    :cond_2
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l0(Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E0:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0086

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l2(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l2(Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W()V

    :goto_2
    return-void
.end method

.method public L()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v1()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d2()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M1(Z)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W1(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->t()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b2()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S1(I)V

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L1(I)V

    return-void
.end method

.method public L0()Lcom/android/gallery3d/filtershow/editors/s;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/s;

    return-object v0
.end method

.method public L1(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m0:I

    return-void
.end method

.method public M()V
    .locals 2

    const v0, 0x7f0e0043

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public M0()Landroid/widget/SeekBar;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/editors/a0;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/a0;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->S()Landroid/widget/SeekBar;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public M1(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n0:Z

    return-void
.end method

.method public N0()Lcom/android/gallery3d/filtershow/editors/t;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f080111

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/t;

    return-object v0
.end method

.method public N1(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/b;->g(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    return-void
.end method

.method public O0()Lcom/android/gallery3d/filtershow/editors/x;
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f080114

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/x;

    return-object v0
.end method

.method public O1(I)V
    .locals 2

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    const/4 v0, 0x1

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f08010d

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/n;->V(Z)V

    goto :goto_0

    :cond_0
    const/16 v1, 0xb

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v1, 0x7f08010a

    invoke-virtual {p1, v1}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/j;->n0(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public P0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l0:I

    return v0
.end method

.method public P1()V
    .locals 4

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->u()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    return-void
.end method

.method public Q()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/category/a;->m()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public R0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j0:I

    return v0
.end method

.method public R1(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k0:I

    return-void
.end method

.method public S(Landroid/net/Uri;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n:Ljava/io/File;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v3, "prepare"

    invoke-virtual {v1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    :cond_0
    const/4 v0, -0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v0:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    invoke-static {p0, p1}, Lcom/android/gallery3d/filtershow/utils/b;->j(Landroid/content/Context;Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f1()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public S0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g0:I

    return v0
.end method

.method public S1(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l0:I

    return-void
.end method

.method public T0(F)F
    .locals 2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method public T1(Landroid/view/View;FF)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N:Z

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N:Z

    :goto_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    aget p1, v2, v1

    int-to-float p1, p1

    add-float/2addr p1, p2

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q:F

    aget p1, v2, v0

    int-to-float p1, p1

    add-float/2addr p1, p3

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R:F

    return-void
.end method

.method U()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w0:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    iput-boolean v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T:Z

    return-void
.end method

.method public U0()Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    return-object v0
.end method

.method public U1(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j0:I

    return-void
.end method

.method V()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w0:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->T:Z

    :cond_0
    return-void
.end method

.method public V0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->X:Z

    return v0
.end method

.method public V1()V
    .locals 8

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f080275

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/TextView;

    const v0, 0x7f080278

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/TextView;

    const v0, 0x7f08027a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageButton;

    const v0, 0x7f080277

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/ImageButton;

    const v0, 0x7f080279

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e:Landroid/widget/TextView;

    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$o;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$o;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    const v0, 0x7f080131

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v1

    iget-object v6, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f:Landroid/widget/TextView;

    invoke-virtual/range {v1 .. v7}, Lcom/android/gallery3d/filtershow/f/b;->p(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageButton;Landroid/widget/ImageButton;Landroid/widget/TextView;Landroid/widget/TextView;)V

    return-void
.end method

.method public W()V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f1()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/content/DialogInterface;->dismiss()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public W1(Z)V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->U(Z)V

    :cond_0
    return-void
.end method

.method public X(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public X0()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t:Landroid/net/Uri;

    return-object v0
.end method

.method public Y0()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u:Ljava/util/ArrayList;

    return-object v0
.end method

.method public Y1()V
    .locals 3

    new-instance v0, Lcom/android/gallery3d/filtershow/f/b;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/f/b;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/f/b;->n(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/state/d;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/filtershow/state/d;-><init>(Landroid/content/Context;I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->u0()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    iput-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v2, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->D0(Lcom/android/gallery3d/filtershow/f/b;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->O0(Lcom/android/gallery3d/filtershow/state/d;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/imageshow/x;->y0(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    return-void
.end method

.method public Z0()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/t;->Q()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/filters/a0;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/g;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    check-cast v2, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/materials/g;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/t;->R()I

    move-result v0

    return v0
.end method

.method public Z1()V
    .locals 2

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->D0(Lcom/android/gallery3d/filtershow/f/b;)V

    return-void
.end method

.method public a0()V
    .locals 0

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0()V

    return-void
.end method

.method public a1()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->Q()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public a2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public b1()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c0:Landroid/view/View;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d0:Landroid/view/View;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e0:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public c2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    :cond_1
    return-void
.end method

.method public d1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const v1, 0x3dcccccd    # 0.1f

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public d2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/b;->c()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->B0(Lcom/android/gallery3d/filtershow/filters/ImageFilter;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/category/d;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/IconView;->getOrientation()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x2

    const/high16 v4, 0x3f800000    # 1.0f

    if-ne v1, v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->R:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iget v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q:F

    sub-float/2addr v1, v3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {v3, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationY(F)V

    :goto_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    div-float v3, v1, v3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iget-object v5, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    sub-float v3, v4, v3

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    iput v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P:F

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v2, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N:Z

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    if-nez v0, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    int-to-float p1, p1

    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P:F

    cmpl-float p1, v0, p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O:Landroid/view/View;

    check-cast p1, Lcom/android/gallery3d/filtershow/category/g;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/category/g;->a()V

    :cond_5
    return v2

    :cond_6
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public e1()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s0:Lcn/nubia/app/c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcn/nubia/app/c;->a()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    :cond_0
    return-void
.end method

.method public f2(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public g1(Landroid/view/View;)Landroid/graphics/Point;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0:Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    const/4 v2, 0x0

    aget v2, v0, v2

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    aget v0, v0, v2

    sub-int/2addr p1, v0

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    return-object v0
.end method

.method public i2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s0:Lcn/nubia/app/c;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t0:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/nubia/app/c;->c(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    :cond_0
    return-void
.end method

.method public j1()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->E()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public j2(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/z;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/z;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/z;->n0()V

    :cond_1
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/s;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/s;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/s;->k0()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->R()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->x(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I1()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/editors/o;->t(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/b;->g(I)Lcom/android/gallery3d/filtershow/editors/c;

    :cond_3
    return-void

    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u2(Lcom/android/gallery3d/filtershow/filters/x;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->r()V

    :cond_5
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/f0;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/a0;

    if-nez v0, :cond_7

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/c1;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/b;->g(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {p0, p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->t1(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/editors/c;)V

    return-void
.end method

.method public k0()I
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/filters/r;

    if-eqz v2, :cond_3

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/materials/g;->b()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v3, v2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v3

    check-cast v3, Lcom/android/gallery3d/filtershow/filters/r;

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/filters/r;->l0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/gallery3d/filtershow/materials/g;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public k1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W:Z

    return v0
.end method

.method public k2()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j2(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->z()V

    :cond_1
    return-void
.end method

.method public m0()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h0:Z

    return v0
.end method

.method public m1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u0:Z

    return v0
.end method

.method public n0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->G:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public n1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k:Z

    return v0
.end method

.method public n2()V
    .locals 4

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W:Z

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060132

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    sget v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B0:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setX(F)V

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C0:I

    sub-int/2addr v3, v1

    sub-int/2addr v3, v2

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v1

    int-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setY(F)V

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    const-string v0, "SDfsfsdf"

    const-string v1, "sdfsdfsdfsdsfd"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public o0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->B:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public o1()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o2(I)V
    .locals 3

    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    const-string p1, "border"

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const-string p1, "bubble"

    goto :goto_0

    :cond_1
    const/16 v0, 0x9

    if-ne p1, v0, :cond_2

    const-string p1, "sticker"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "material-type"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "cn.nubia.photoeditor"

    const-string v2, "com.android.gallery3d.filtershow.materials.MaterialActivity"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const-class v0, Lcom/android/gallery3d/filtershow/materials/c;

    const/4 v1, -0x1

    if-ne p2, v1, :cond_7

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0:Lcom/android/gallery3d/filtershow/materials/d;

    if-nez p2, :cond_0

    new-instance p2, Lcom/android/gallery3d/filtershow/materials/d;

    invoke-direct {p2, p0}, Lcom/android/gallery3d/filtershow/materials/d;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0:Lcom/android/gallery3d/filtershow/materials/d;

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m2(Landroid/net/Uri;)V

    goto/16 :goto_1

    :cond_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    const/4 p3, 0x6

    if-ne p2, p3, :cond_2

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/filters/a;->b(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/o;->k()Lcom/android/gallery3d/filtershow/category/c;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/o;->k()Lcom/android/gallery3d/filtershow/category/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/c;->k()V

    goto/16 :goto_0

    :cond_2
    const/4 p3, 0x7

    const/4 v1, 0x0

    const-string v2, "="

    const-string v3, "sourcePath"

    const-string v4, "online"

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a1()I

    move-result p2

    if-lez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/f0;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/f0;->v0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/f0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/materials/o;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/o;->g()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-static {v0}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/materials/d;->j(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/materials/c;

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/editors/x;->b0(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/x;->S()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/gallery3d/filtershow/filters/a;->m(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j0()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y:Lcom/android/gallery3d/filtershow/editors/c0;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/c0;->b()Lcom/android/gallery3d/filtershow/category/h;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/h;->j()V

    goto :goto_0

    :cond_4
    const/16 p3, 0x9

    if-ne p2, p3, :cond_6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z0()I

    move-result p2

    if-lez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/category/a;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/category/a;->h()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/filters/a0;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/a0;->v0()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/filters/a0;->u0()Lcom/android/gallery3d/filtershow/materials/g;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/materials/o;

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/materials/o;->g()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b0:Lcom/android/gallery3d/filtershow/materials/d;

    invoke-static {v0}, Lc/c/a/d/c/f;->b(Ljava/lang/Class;)Lc/c/a/d/c/f;

    move-result-object v0

    invoke-virtual {v0, v3, v2, p2}, Lc/c/a/d/c/f;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lc/c/a/d/c/f;

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/materials/d;->j(Lc/c/a/d/c/f;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/materials/c;

    if-nez p2, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object p2

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/editors/t;->U(I)V

    :cond_5
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N0()Lcom/android/gallery3d/filtershow/editors/t;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/t;->Q()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lcom/android/gallery3d/filtershow/filters/a;->k(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g0()V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Z:Lcom/android/gallery3d/filtershow/editors/b0;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/b0;->e()V

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onBackPressed()V
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "SubPanel"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "MainPanel"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v2, v1, Lcom/android/gallery3d/filtershow/category/e;

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->s()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0e0063

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e2(IZ)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/editors/p;

    if-eqz v1, :cond_2

    check-cast v0, Lcom/android/gallery3d/filtershow/editors/p;

    invoke-interface {v0}, Lcom/android/gallery3d/filtershow/editors/p;->a()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W()V

    :goto_1
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/x;->Y()V

    :cond_1
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged, isHorizontal = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterShowActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    if-nez p1, :cond_2

    return-void

    :cond_2
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M1(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z1()V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string v2, "MainPanel"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D0()I

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M1(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v1()V

    goto/16 :goto_2

    :cond_4
    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c2()V

    goto/16 :goto_2

    :cond_5
    if-ne v0, p1, :cond_6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k2()V

    goto/16 :goto_2

    :cond_6
    const/16 v3, 0x9

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x1()V

    goto/16 :goto_2

    :cond_7
    const/4 v3, 0x7

    if-ne v0, v3, :cond_8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y1()V

    goto/16 :goto_2

    :cond_8
    const/16 v3, 0xa

    if-ne v0, v3, :cond_9

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v0, 0x7f08010d

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/n;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/n;->V(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w1()V

    goto :goto_2

    :cond_9
    const/16 v3, 0xb

    if-ne v0, v3, :cond_a

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    const v0, 0x7f08010a

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/b;->b(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/editors/j;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/j;->n0(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s1()V

    goto :goto_2

    :cond_a
    const/4 v2, 0x4

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->u1(Z)V

    if-ne v0, v2, :cond_c

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_e

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P0()I

    move-result v0

    if-lez v0, :cond_e

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/e0;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/k;

    if-nez v0, :cond_b

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/o;

    if-eqz v0, :cond_d

    :cond_b
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->g:Lcom/android/gallery3d/filtershow/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/b;->g(I)Lcom/android/gallery3d/filtershow/editors/c;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    goto :goto_1

    :cond_c
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s0()I

    move-result p1

    if-eq p1, v1, :cond_e

    :cond_d
    :goto_1
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/editors/o;->s(I)V

    :cond_e
    :goto_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    const/4 v0, 0x0

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Landroid/widget/PopupMenu;->dismiss()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    :cond_f
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    if-eqz p1, :cond_10

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    :cond_10
    iget-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j:Z

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    if-nez p1, :cond_11

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/category/b;->j()V

    :cond_11
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q2()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x8000000

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A1()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->P()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U()V

    const p1, 0x7f0b0056

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i1()V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    const-string v0, "FilterShowActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q:Lcom/android/gallery3d/filtershow/FilterShowActivity$p;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onDestroy()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q()V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->p0:Ljava/util/ArrayList;

    :cond_1
    invoke-static {}, Lcom/android/gallery3d/filtershow/h/a;->j()Lcom/android/gallery3d/filtershow/h/a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/gallery3d/filtershow/h/a;->d:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-static {}, Lcom/android/gallery3d/filtershow/h/a;->j()Lcom/android/gallery3d/filtershow/h/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/h/a;->m()V

    :cond_2
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    return-void
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->V:Landroid/widget/PopupMenu;

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1, p3}, Lcom/android/gallery3d/filtershow/imageshow/x;->q0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j1()V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onNewIntent(Landroid/content/Intent;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FSA"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object p1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v1, "MainPanel"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->remove(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentTransaction;->commitNowAllowingStateLoss()V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->w0:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i1()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    const-string v0, "FilterShowActivity"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y0:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e()V

    :cond_1
    return-void
.end method

.method public onRedoButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/f/b;->l()I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->q0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j1()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0

    invoke-static {p3}, Lcn/nubia/permission/b;->h([I)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "onPermissionsResult"

    const-string p2, "first get permission should update UI"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s2()V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h2(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method public onResetButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/f/b;->e()Z

    move-result p1

    if-eqz p1, :cond_0

    const p1, 0x7f0e015e

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->e2(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o0:Landroid/app/AlertDialog;

    invoke-static {p0}, Lcn/nubia/permission/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h2(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s2()V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcn/nubia/permission/b;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcn/nubia/permission/b;->e(Landroid/app/Activity;)V

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m:Landroid/widget/ShareActionProvider;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p0}, Landroid/widget/ShareActionProvider;->setOnShareTargetSelectedListener(Landroid/widget/ShareActionProvider$OnShareTargetSelectedListener;)V

    :cond_3
    return-void
.end method

.method public onSaveButtonClick(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K1()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onShareTargetSelected(Landroid/widget/ShareActionProvider;Landroid/content/Intent;)Z
    .locals 2

    sget-object p1, Lcom/android/gallery3d/filtershow/provider/SharedImageProvider;->b:Landroid/net/Uri;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    new-instance p2, Landroid/content/ContentValues;

    invoke-direct {p2}, Landroid/content/ContentValues;-><init>()V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "prepare"

    invoke-virtual {p2, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o:Z

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->l2(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->n:Ljava/io/File;

    invoke-virtual {p2, p0, v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->A(Lcom/android/gallery3d/filtershow/FilterShowActivity;Ljava/io/File;)V

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->U:Landroid/content/DialogInterface;

    return-void
.end method

.method protected onStart()V
    .locals 6

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStart()V

    invoke-virtual {p0}, Landroid/app/Activity;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    const-wide/32 v1, 0x1400000

    invoke-static {v0, v1, v2}, Lcom/android/gallery3d/filtershow/utils/b;->p(Ljava/lang/String;J)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x7f0f0003

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_3

    const v1, 0x7f0b0062

    invoke-virtual {v0, v1}, Landroid/view/Window;->setContentView(I)V

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "window"

    invoke-virtual {p0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/view/Display;->getHeight()I

    const/high16 v3, 0x435c0000    # 220.0f

    invoke-static {v3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->F0(F)I

    move-result v3

    div-int/lit8 v4, v4, 0x5

    mul-int/lit8 v5, v4, 0x4

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x3

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_2
    const v1, 0x7f0801eb

    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_3

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$a;

    invoke-direct {v1, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->q0:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method public onUndoButtonClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/f/b;->u()I

    move-result p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->q0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d2()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W1(Z)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->j1()V

    return-void
.end method

.method public p0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->J:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public p2(Landroid/view/View;FF)V
    .locals 6

    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/CategorySelected;

    const/4 v1, 0x2

    new-array v2, v1, [I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x0:Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v2, v3

    int-to-float v4, v4

    add-float/2addr v4, p2

    float-to-int v4, v4

    iput v4, p1, Landroid/graphics/Point;->x:I

    const/4 v4, 0x1

    aget v5, v2, v4

    int-to-float v5, v5

    add-float/2addr v5, p3

    float-to-int v5, v5

    iput v5, p1, Landroid/graphics/Point;->y:I

    new-array p1, v1, [I

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, p1}, Landroid/view/View;->getLocationOnScreen([I)V

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/2addr v5, v1

    int-to-float v5, v5

    sub-float/2addr p2, v5

    float-to-int p2, p2

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v5

    div-int/2addr v5, v1

    int-to-float v1, v5

    sub-float/2addr p3, v1

    float-to-int p3, p3

    aget v1, v2, v3

    aget v5, p1, v3

    sub-int/2addr v1, v5

    add-int/2addr v1, p2

    int-to-float p2, v1

    invoke-virtual {v0, p2}, Landroid/view/View;->setTranslationX(F)V

    aget p2, v2, v4

    aget p1, p1, v4

    sub-int/2addr p2, p1

    add-int/2addr p2, p3

    int-to-float p1, p2

    invoke-virtual {v0, p1}, Landroid/view/View;->setTranslationY(F)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance p2, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;

    invoke-direct {p2, p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$d;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/category/CategorySelected;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public q0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public q2()V
    .locals 2

    const v0, 0x7f0801a4

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W:Z

    return-void
.end method

.method public r0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->C:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public r1()Z
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->B()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r2(Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->isShown()Z

    move-result p2

    if-nez p2, :cond_0

    new-instance p2, Landroid/view/animation/AlphaAnimation;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x1f4

    invoke-virtual {p2, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f0:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public s0()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->m0:I

    return v0
.end method

.method public s1()V
    .locals 5

    const v0, 0x7f08010a

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N1(I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->m()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$m;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "MainPanel"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/category/e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y()V

    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    return-void
.end method

.method public s2()V
    .locals 3

    sget-object v0, Lcn/nubia/permission/b;->a:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lcn/nubia/permission/b;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->H0(Lcom/android/gallery3d/filtershow/imageshow/x;)V

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->setActivityForMemoryToasts(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y1()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Q1()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c0()V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z1()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->D1()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a0()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->v1()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/h/a;->j()Lcom/android/gallery3d/filtershow/h/a;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/h/a;->k(Landroid/content/Context;)V

    return-void

    :cond_2
    :goto_1
    const-string v0, "PhotoEditor"

    const-string v1, "updateUIAfterServiceStarted destory or permission is rejected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public t0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public t1(Lcom/android/gallery3d/filtershow/filters/x;Lcom/android/gallery3d/filtershow/editors/c;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result v0

    const v1, 0x7f080184

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result v0

    const v1, 0x7f080114

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->I()I

    move-result v0

    const v1, 0x7f080111

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result p1

    iget p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/editors/o;->s(I)V

    goto :goto_1

    :cond_3
    :goto_0
    new-instance p2, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;

    invoke-direct {p2, p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity$i;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    :goto_2
    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/c;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I1()V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->K()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_6

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->i:Lcom/android/gallery3d/filtershow/editors/o;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/editors/o;->t(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public t2()V
    .locals 6

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->clear()V

    new-instance v0, Lcom/android/gallery3d/filtershow/filters/d0;

    const v1, 0x7f0e00ed

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>()V

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/gallery3d/filtershow/filters/d0;-><init>(Ljava/lang/String;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v0, v4}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    new-instance v1, Lcom/android/gallery3d/filtershow/filters/d0;

    const v2, 0x7f0e00ec

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0, v3}, Lcom/android/gallery3d/filtershow/filters/d0;-><init>(Ljava/lang/String;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v2, Lcom/android/gallery3d/filtershow/category/a;

    invoke-direct {v2, p0, v1, v4}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;I)V

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v1, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->L:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/gallery3d/filtershow/filters/d0;

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    new-instance v3, Lcom/android/gallery3d/filtershow/category/a;

    const/4 v5, 0x1

    invoke-direct {v3, p0, v1, v4, v5}, Lcom/android/gallery3d/filtershow/category/a;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;Lcom/android/gallery3d/filtershow/filters/x;IZ)V

    invoke-virtual {v2, v3}, Lcom/android/gallery3d/filtershow/category/b;->a(Lcom/android/gallery3d/filtershow/category/a;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetInvalidated()V

    return-void
.end method

.method public u0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->y:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public u1(Z)V
    .locals 1

    new-instance v0, Lcom/android/gallery3d/filtershow/FilterShowActivity$h;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$h;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    if-nez p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->W1(Z)V

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->v()V

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mainpanel showpanel mCurrentPanel end = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->K:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FilterShowActivity"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public u2(Lcom/android/gallery3d/filtershow/filters/x;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/z;

    if-nez v0, :cond_1

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/s;

    if-nez v1, :cond_1

    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/c1;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->p()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/gallery3d/filtershow/filters/d0;

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/s;

    if-eqz v0, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->r0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_3
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    :cond_4
    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->x(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->B()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/filters/x;->H(Lcom/android/gallery3d/filtershow/filters/x;)Z

    move-result v2

    if-nez v2, :cond_7

    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/y;

    if-eqz v2, :cond_6

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->a(Lcom/android/gallery3d/filtershow/filters/x;)V

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    goto :goto_0

    :cond_7
    :goto_1
    const/4 v0, 0x1

    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/y;

    if-nez v2, :cond_8

    instance-of v2, p1, Lcom/android/gallery3d/filtershow/filters/j;

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r1()Z

    move-result v2

    if-eqz v2, :cond_9

    :cond_8
    const/4 v0, 0x0

    :cond_9
    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v1, p1, v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    return-void
.end method

.method public v0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->z:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public v1()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->a2()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->b:Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->w()Lcom/android/gallery3d/filtershow/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/f/b;->v()V

    const v0, 0x7f0801bc

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    const-string v3, "MainPanel"

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/android/gallery3d/filtershow/category/e;

    invoke-direct {v2}, Lcom/android/gallery3d/filtershow/category/e;-><init>()V

    :cond_1
    move-object v4, v2

    check-cast v4, Lcom/android/gallery3d/filtershow/category/e;

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/android/gallery3d/filtershow/category/e;->s(I)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public w0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->x:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public w1()V
    .locals 5

    const v0, 0x7f08010d

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N1(I)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->v()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$l;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$l;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "MainPanel"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/category/e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y()V

    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    return-void
.end method

.method public x0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->I:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public x1()V
    .locals 4

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->z()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v2, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v2, v1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {v1}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    const v0, 0x7f080111

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N1(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v0

    new-instance v1, Lcom/android/gallery3d/filtershow/FilterShowActivity$k;

    invoke-direct {v1, p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$k;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y()V

    :cond_1
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    return-void
.end method

.method public y0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->H:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method

.method public y1()V
    .locals 5

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/x;->K()Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v3, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v3, v0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v3, v2}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->N(Lcom/android/gallery3d/filtershow/filters/x;)I

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/filters/x;->D()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v2

    invoke-virtual {v2, v3, v0, v1}, Lcom/android/gallery3d/filtershow/imageshow/x;->K0(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Lcom/android/gallery3d/filtershow/filters/x;Z)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/filtershow/imageshow/x;->C0(Lcom/android/gallery3d/filtershow/filters/x;)V

    :cond_0
    const v0, 0x7f080114

    invoke-virtual {p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->N1(I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->h:Lcom/android/gallery3d/filtershow/editors/c;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/c;->u()I

    move-result v0

    new-instance v2, Lcom/android/gallery3d/filtershow/FilterShowActivity$j;

    invoke-direct {v2, p0, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity$j;-><init>(Lcom/android/gallery3d/filtershow/FilterShowActivity;I)V

    invoke-virtual {p0}, Landroid/support/v4/app/FragmentActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    const-string v3, "MainPanel"

    invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->k:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v4, :cond_1

    move v1, v4

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/category/e;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :goto_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c:Lcom/android/gallery3d/filtershow/imageshow/ImageShow;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/imageshow/ImageShow;->y()V

    :cond_3
    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->c1()V

    return-void
.end method

.method public z0()Lcom/android/gallery3d/filtershow/category/b;
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;->E:Lcom/android/gallery3d/filtershow/category/b;

    return-object v0
.end method
