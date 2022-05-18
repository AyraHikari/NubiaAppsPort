.class Landroidx/appcompat/app/f;
.super Landroidx/appcompat/app/e;
.source "SourceFile"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;
.implements Landroidx/appcompat/view/menu/g$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/f$i;,
        Landroidx/appcompat/app/f$h;,
        Landroidx/appcompat/app/f$g;,
        Landroidx/appcompat/app/f$d;,
        Landroidx/appcompat/app/f$f;,
        Landroidx/appcompat/app/f$e;,
        Landroidx/appcompat/app/f$c;,
        Landroidx/appcompat/app/f$k;,
        Landroidx/appcompat/app/f$l;,
        Landroidx/appcompat/app/f$a;,
        Landroidx/appcompat/app/f$m;,
        Landroidx/appcompat/app/f$b;,
        Landroidx/appcompat/app/f$j;
    }
.end annotation


# static fields
.field private static final u:Landroidx/b/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/g<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final v:Z

.field private static final w:[I

.field private static final x:Z

.field private static final y:Z

.field private static z:Z


# instance fields
.field private A:Landroidx/appcompat/app/f$c;

.field private B:Ljava/lang/CharSequence;

.field private C:Landroidx/appcompat/widget/ad;

.field private D:Landroidx/appcompat/app/f$a;

.field private E:Landroidx/appcompat/app/f$m;

.field private F:Z

.field private G:Z

.field private H:Landroid/widget/TextView;

.field private I:Landroid/view/View;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:[Landroidx/appcompat/app/f$l;

.field private N:Landroidx/appcompat/app/f$l;

.field private O:Z

.field private P:Z

.field private Q:Z

.field private R:Z

.field private S:I

.field private T:I

.field private U:Z

.field private V:Z

.field private W:Landroidx/appcompat/app/f$e;

.field private X:Landroidx/appcompat/app/f$e;

.field private final Y:Ljava/lang/Runnable;

.field private Z:Z

.field final a:Ljava/lang/Object;

.field private aa:Landroid/graphics/Rect;

.field private ab:Landroid/graphics/Rect;

.field private ac:Landroidx/appcompat/app/h;

.field final b:Landroid/content/Context;

.field c:Landroid/view/Window;

.field final d:Landroidx/appcompat/app/d;

.field e:Landroidx/appcompat/app/a;

.field f:Landroid/view/MenuInflater;

.field g:Landroidx/appcompat/view/b;

.field h:Landroidx/appcompat/widget/ActionBarContextView;

.field i:Landroid/widget/PopupWindow;

.field j:Ljava/lang/Runnable;

.field k:Landroidx/core/f/y;

.field l:Landroid/view/ViewGroup;

.field m:Z

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:Z

.field s:Z

.field t:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 137
    new-instance v0, Landroidx/b/g;

    invoke-direct {v0}, Landroidx/b/g;-><init>()V

    sput-object v0, Landroidx/appcompat/app/f;->u:Landroidx/b/g;

    .line 138
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x15

    if-ge v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Landroidx/appcompat/app/f;->v:Z

    new-array v3, v2, [I

    const v4, 0x1010054

    aput v4, v3, v1

    .line 140
    sput-object v3, Landroidx/appcompat/app/f;->w:[I

    .line 146
    sget-object v3, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    const-string v4, "robolectric"

    .line 147
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v2

    sput-boolean v3, Landroidx/appcompat/app/f;->x:Z

    .line 152
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    move v1, v2

    :cond_1
    sput-boolean v1, Landroidx/appcompat/app/f;->y:Z

    if-eqz v0, :cond_2

    .line 161
    sget-boolean v0, Landroidx/appcompat/app/f;->z:Z

    if-nez v0, :cond_2

    .line 163
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 165
    new-instance v1, Landroidx/appcompat/app/f$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/app/f$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 191
    sput-boolean v2, Landroidx/appcompat/app/f;->z:Z

    :cond_2
    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Landroidx/appcompat/app/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-direct {p0, p1, v0, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method constructor <init>(Landroid/app/Dialog;Landroidx/appcompat/app/d;)V
    .locals 2

    .line 290
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {p0, v0, v1, p2, p1}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroidx/appcompat/app/d;Ljava/lang/Object;)V
    .locals 2

    .line 302
    invoke-direct {p0}, Landroidx/appcompat/app/e;-><init>()V

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    const/4 v0, 0x1

    .line 216
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->F:Z

    const/16 v0, -0x64

    .line 252
    iput v0, p0, Landroidx/appcompat/app/f;->S:I

    .line 264
    new-instance v1, Landroidx/appcompat/app/f$2;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$2;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->Y:Ljava/lang/Runnable;

    .line 303
    iput-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 304
    iput-object p3, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    .line 305
    iput-object p4, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    .line 307
    iget p1, p0, Landroidx/appcompat/app/f;->S:I

    if-ne p1, v0, :cond_0

    instance-of p1, p4, Landroid/app/Dialog;

    if-eqz p1, :cond_0

    .line 308
    invoke-direct {p0}, Landroidx/appcompat/app/f;->A()Landroidx/appcompat/app/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 315
    invoke-virtual {p1}, Landroidx/appcompat/app/c;->k()Landroidx/appcompat/app/e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/e;->i()I

    move-result p1

    iput p1, p0, Landroidx/appcompat/app/f;->S:I

    .line 318
    :cond_0
    iget p1, p0, Landroidx/appcompat/app/f;->S:I

    if-ne p1, v0, :cond_1

    .line 320
    sget-object p1, Landroidx/appcompat/app/f;->u:Landroidx/b/g;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    if-eqz p3, :cond_1

    .line 322
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    iput p3, p0, Landroidx/appcompat/app/f;->S:I

    .line 324
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz p2, :cond_2

    .line 329
    invoke-direct {p0, p2}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    .line 336
    :cond_2
    invoke-static {}, Landroidx/appcompat/widget/k;->a()V

    return-void
.end method

.method private A()Landroidx/appcompat/app/c;
    .locals 3

    .line 1616
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1618
    instance-of v2, v0, Landroidx/appcompat/app/c;

    if-eqz v2, :cond_0

    .line 1619
    check-cast v0, Landroidx/appcompat/app/c;

    return-object v0

    .line 1621
    :cond_0
    instance-of v2, v0, Landroid/content/ContextWrapper;

    if-eqz v2, :cond_1

    .line 1622
    check-cast v0, Landroid/content/ContextWrapper;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private B()V
    .locals 2

    .line 2308
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->G:Z

    if-nez v0, :cond_0

    return-void

    .line 2309
    :cond_0
    new-instance v0, Landroid/util/AndroidRuntimeException;

    const-string v1, "Window feature must be requested before adding content"

    invoke-direct {v0, v1}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private C()I
    .locals 2

    .line 2447
    iget v0, p0, Landroidx/appcompat/app/f;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroidx/appcompat/app/f;->j()I

    move-result v0

    :goto_0
    return v0
.end method

.method private D()Z
    .locals 7

    .line 2629
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->V:Z

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 2630
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    return v2

    .line 2641
    :cond_0
    :try_start_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1d

    if-lt v3, v4, :cond_1

    const/high16 v3, 0x100c0000

    goto :goto_0

    .line 2645
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_2

    const/high16 v3, 0xc0000

    goto :goto_0

    :cond_2
    move v3, v2

    .line 2649
    :goto_0
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget-object v6, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    .line 2650
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2649
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2651
    iget v0, v0, Landroid/content/pm/ActivityInfo;->configChanges:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    :cond_3
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->U:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v3, "AppCompatDelegate"

    const-string v4, "Exception while getting ActivityInfo"

    .line 2656
    invoke-static {v3, v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2657
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->U:Z

    .line 2661
    :cond_4
    :goto_2
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->V:Z

    .line 2663
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->U:Z

    return v0
.end method

.method private a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    .line 2467
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 2468
    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    goto :goto_0

    :cond_0
    const/16 p1, 0x20

    goto :goto_0

    :cond_1
    const/16 p1, 0x10

    .line 2473
    :goto_0
    new-instance p2, Landroid/content/res/Configuration;

    invoke-direct {p2}, Landroid/content/res/Configuration;-><init>()V

    const/4 v0, 0x0

    .line 2474
    iput v0, p2, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p3, :cond_2

    .line 2476
    invoke-virtual {p2, p3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 2478
    :cond_2
    iget p3, p2, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, p2, Landroid/content/res/Configuration;->uiMode:I

    return-object p2
.end method

.method private static a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;
    .locals 3

    .line 3364
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    const/4 v1, 0x0

    .line 3365
    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    if-eqz p1, :cond_16

    .line 3367
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 3371
    :cond_0
    iget v1, p0, Landroid/content/res/Configuration;->fontScale:F

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_1

    .line 3372
    iget v1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput v1, v0, Landroid/content/res/Configuration;->fontScale:F

    .line 3375
    :cond_1
    iget v1, p0, Landroid/content/res/Configuration;->mcc:I

    iget v2, p1, Landroid/content/res/Configuration;->mcc:I

    if-eq v1, v2, :cond_2

    .line 3376
    iget v1, p1, Landroid/content/res/Configuration;->mcc:I

    iput v1, v0, Landroid/content/res/Configuration;->mcc:I

    .line 3379
    :cond_2
    iget v1, p0, Landroid/content/res/Configuration;->mnc:I

    iget v2, p1, Landroid/content/res/Configuration;->mnc:I

    if-eq v1, v2, :cond_3

    .line 3380
    iget v1, p1, Landroid/content/res/Configuration;->mnc:I

    iput v1, v0, Landroid/content/res/Configuration;->mnc:I

    .line 3383
    :cond_3
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_4

    .line 3384
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/f$h;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 3386
    :cond_4
    iget-object v1, p0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iget-object v2, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1, v2}, Landroidx/core/e/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 3387
    iget-object v1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    iput-object v1, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 3391
    :cond_5
    :goto_0
    iget v1, p0, Landroid/content/res/Configuration;->touchscreen:I

    iget v2, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-eq v1, v2, :cond_6

    .line 3392
    iget v1, p1, Landroid/content/res/Configuration;->touchscreen:I

    iput v1, v0, Landroid/content/res/Configuration;->touchscreen:I

    .line 3395
    :cond_6
    iget v1, p0, Landroid/content/res/Configuration;->keyboard:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v1, v2, :cond_7

    .line 3396
    iget v1, p1, Landroid/content/res/Configuration;->keyboard:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboard:I

    .line 3399
    :cond_7
    iget v1, p0, Landroid/content/res/Configuration;->keyboardHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    if-eq v1, v2, :cond_8

    .line 3400
    iget v1, p1, Landroid/content/res/Configuration;->keyboardHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->keyboardHidden:I

    .line 3403
    :cond_8
    iget v1, p0, Landroid/content/res/Configuration;->navigation:I

    iget v2, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v1, v2, :cond_9

    .line 3404
    iget v1, p1, Landroid/content/res/Configuration;->navigation:I

    iput v1, v0, Landroid/content/res/Configuration;->navigation:I

    .line 3407
    :cond_9
    iget v1, p0, Landroid/content/res/Configuration;->navigationHidden:I

    iget v2, p1, Landroid/content/res/Configuration;->navigationHidden:I

    if-eq v1, v2, :cond_a

    .line 3408
    iget v1, p1, Landroid/content/res/Configuration;->navigationHidden:I

    iput v1, v0, Landroid/content/res/Configuration;->navigationHidden:I

    .line 3411
    :cond_a
    iget v1, p0, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_b

    .line 3412
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iput v1, v0, Landroid/content/res/Configuration;->orientation:I

    .line 3415
    :cond_b
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_c

    .line 3417
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3420
    :cond_c
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0xc0

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    if-eq v1, v2, :cond_d

    .line 3422
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0xc0

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3425
    :cond_d
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_e

    .line 3427
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3430
    :cond_e
    iget v1, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v1, v1, 0x300

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    if-eq v1, v2, :cond_f

    .line 3432
    iget v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    iget v2, p1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v2, v2, 0x300

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->screenLayout:I

    .line 3435
    :cond_f
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_10

    .line 3436
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/f$i;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 3439
    :cond_10
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0xf

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    if-eq v1, v2, :cond_11

    .line 3441
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0xf

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3444
    :cond_11
    iget v1, p0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    if-eq v1, v2, :cond_12

    .line 3446
    iget v1, v0, Landroid/content/res/Configuration;->uiMode:I

    iget v2, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v2, v2, 0x30

    or-int/2addr v1, v2

    iput v1, v0, Landroid/content/res/Configuration;->uiMode:I

    .line 3449
    :cond_12
    iget v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eq v1, v2, :cond_13

    .line 3450
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 3453
    :cond_13
    iget v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v2, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eq v1, v2, :cond_14

    .line 3454
    iget v1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v1, v0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 3457
    :cond_14
    iget v1, p0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-eq v1, v2, :cond_15

    .line 3458
    iget v1, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v1, v0, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 3461
    :cond_15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_16

    .line 3462
    invoke-static {p0, p1, v0}, Landroidx/appcompat/app/f$g;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    :cond_16
    :goto_1
    return-object v0
.end method

.method private a(IZLandroid/content/res/Configuration;)V
    .locals 3

    .line 2557
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2558
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    if-eqz p3, :cond_0

    .line 2560
    invoke-virtual {v1, p3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 2563
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p3, p3, -0x31

    or-int/2addr p1, p3

    iput p1, v1, Landroid/content/res/Configuration;->uiMode:I

    const/4 p1, 0x0

    .line 2564
    invoke-virtual {v0, v1, p1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2567
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x1a

    if-ge p1, p3, :cond_1

    .line 2568
    invoke-static {v0}, Landroidx/appcompat/app/i;->a(Landroid/content/res/Resources;)V

    .line 2571
    :cond_1
    iget p1, p0, Landroidx/appcompat/app/f;->T:I

    if-eqz p1, :cond_2

    .line 2574
    iget-object p3, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p3, p1}, Landroid/content/Context;->setTheme(I)V

    .line 2576
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p3, 0x17

    if-lt p1, p3, :cond_2

    .line 2582
    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    iget p3, p0, Landroidx/appcompat/app/f;->T:I

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_2
    if-eqz p2, :cond_4

    .line 2586
    iget-object p1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_4

    .line 2587
    check-cast p1, Landroid/app/Activity;

    .line 2588
    instance-of p2, p1, Landroidx/lifecycle/h;

    if-eqz p2, :cond_3

    .line 2590
    move-object p2, p1

    check-cast p2, Landroidx/lifecycle/h;

    invoke-interface {p2}, Landroidx/lifecycle/h;->b()Landroidx/lifecycle/e;

    move-result-object p2

    .line 2591
    invoke-virtual {p2}, Landroidx/lifecycle/e;->a()Landroidx/lifecycle/e$b;

    move-result-object p2

    sget-object p3, Landroidx/lifecycle/e$b;->d:Landroidx/lifecycle/e$b;

    invoke-virtual {p2, p3}, Landroidx/lifecycle/e$b;->a(Landroidx/lifecycle/e$b;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 2592
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    .line 2596
    :cond_3
    iget-boolean p2, p0, Landroidx/appcompat/app/f;->R:Z

    if-eqz p2, :cond_4

    .line 2597
    invoke-virtual {p1, v1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private a(Landroid/view/Window;)V
    .locals 3

    .line 778
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    const-string v1, "AppCompat has already installed itself into the Window"

    if-nez v0, :cond_2

    .line 783
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 784
    instance-of v2, v0, Landroidx/appcompat/app/f$c;

    if-nez v2, :cond_1

    .line 788
    new-instance v1, Landroidx/appcompat/app/f$c;

    invoke-direct {v1, p0, v0}, Landroidx/appcompat/app/f$c;-><init>(Landroidx/appcompat/app/f;Landroid/view/Window$Callback;)V

    iput-object v1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    .line 790
    invoke-virtual {p1, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 792
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    sget-object v2, Landroidx/appcompat/app/f;->w:[I

    invoke-static {v0, v1, v2}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroidx/appcompat/widget/ax;

    move-result-object v0

    const/4 v1, 0x0

    .line 794
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/ax;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 797
    invoke-virtual {p1, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    :cond_0
    invoke-virtual {v0}, Landroidx/appcompat/widget/ax;->b()V

    .line 801
    iput-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    return-void

    .line 785
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)V
    .locals 13

    .line 1632
    iget-boolean v0, p1, Landroidx/appcompat/app/f$l;->o:Z

    if-nez v0, :cond_10

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz v0, :cond_0

    goto/16 :goto_4

    .line 1638
    :cond_0
    iget v0, p1, Landroidx/appcompat/app/f$l;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1639
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1640
    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v3, 0x4

    if-ne v0, v3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    return-void

    .line 1647
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1648
    iget v3, p1, Landroidx/appcompat/app/f$l;->a:I

    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v3, v4}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1650
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    return-void

    .line 1654
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string v3, "window"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    if-nez v0, :cond_4

    return-void

    .line 1660
    :cond_4
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    .line 1665
    :cond_5
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    const/4 v3, -0x1

    const/4 v4, -0x2

    if-eqz p2, :cond_7

    iget-boolean p2, p1, Landroidx/appcompat/app/f$l;->q:Z

    if-eqz p2, :cond_6

    goto :goto_1

    .line 1704
    :cond_6
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    if-eqz p2, :cond_e

    .line 1707
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-eqz p2, :cond_e

    .line 1708
    iget p2, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ne p2, v3, :cond_e

    move v6, v3

    goto :goto_2

    .line 1666
    :cond_7
    :goto_1
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_9

    .line 1668
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;)Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    if-nez p2, :cond_a

    :cond_8
    return-void

    .line 1670
    :cond_9
    iget-boolean p2, p1, Landroidx/appcompat/app/f$l;->q:Z

    if-eqz p2, :cond_a

    iget-object p2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    if-lez p2, :cond_a

    .line 1672
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 1676
    :cond_a
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->c(Landroidx/appcompat/app/f$l;)Z

    move-result p2

    if-eqz p2, :cond_f

    invoke-virtual {p1}, Landroidx/appcompat/app/f$l;->a()Z

    move-result p2

    if-nez p2, :cond_b

    goto :goto_3

    .line 1683
    :cond_b
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    if-nez p2, :cond_c

    .line 1685
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {p2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1688
    :cond_c
    iget v3, p1, Landroidx/appcompat/app/f$l;->b:I

    .line 1689
    iget-object v5, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 1691
    iget-object v3, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    .line 1692
    instance-of v5, v3, Landroid/view/ViewGroup;

    if-eqz v5, :cond_d

    .line 1693
    check-cast v3, Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1695
    :cond_d
    iget-object v3, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    iget-object v5, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {v3, v5, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1701
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->hasFocus()Z

    move-result p2

    if-nez p2, :cond_e

    .line 1702
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    :cond_e
    move v6, v4

    .line 1713
    :goto_2
    iput-boolean v1, p1, Landroidx/appcompat/app/f$l;->n:Z

    .line 1715
    new-instance p2, Landroid/view/WindowManager$LayoutParams;

    const/4 v7, -0x2

    iget v8, p1, Landroidx/appcompat/app/f$l;->d:I

    iget v9, p1, Landroidx/appcompat/app/f$l;->e:I

    const/16 v10, 0x3ea

    const/high16 v11, 0x820000

    const/4 v12, -0x3

    move-object v5, p2

    invoke-direct/range {v5 .. v12}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 1722
    iget v1, p1, Landroidx/appcompat/app/f$l;->c:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1723
    iget v1, p1, Landroidx/appcompat/app/f$l;->f:I

    iput v1, p2, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 1725
    iget-object v1, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v1, p2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1726
    iput-boolean v2, p1, Landroidx/appcompat/app/f$l;->o:Z

    return-void

    .line 1679
    :cond_f
    :goto_3
    iput-boolean v2, p1, Landroidx/appcompat/app/f$l;->q:Z

    :cond_10
    :goto_4
    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 1737
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/appcompat/widget/ad;->e()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1738
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    .line 1739
    invoke-interface {v0}, Landroidx/appcompat/widget/ad;->g()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1741
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    .line 1743
    iget-object v3, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {v3}, Landroidx/appcompat/widget/ad;->f()Z

    move-result v3

    const/16 v4, 0x6c

    if-eqz v3, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    .line 1763
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->i()Z

    .line 1764
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez p1, :cond_4

    .line 1765
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 1766
    iget-object p1, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    goto :goto_1

    :cond_2
    :goto_0
    if-eqz v0, :cond_4

    .line 1744
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez p1, :cond_4

    .line 1746
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->s:Z

    if-eqz p1, :cond_3

    iget p1, p0, Landroidx/appcompat/app/f;->t:I

    and-int/2addr p1, v1

    if-eqz p1, :cond_3

    .line 1748
    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v3, p0, Landroidx/appcompat/app/f;->Y:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1749
    iget-object p1, p0, Landroidx/appcompat/app/f;->Y:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 1752
    :cond_3
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 1756
    iget-object v1, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Landroidx/appcompat/app/f$l;->r:Z

    if-nez v1, :cond_4

    iget-object v1, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    iget-object v3, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    .line 1757
    invoke-interface {v0, v2, v1, v3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1758
    iget-object p1, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 1759
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->h()Z

    :cond_4
    :goto_1
    return-void

    .line 1772
    :cond_5
    invoke-virtual {p0, v2, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 1774
    iput-boolean v1, p1, Landroidx/appcompat/app/f$l;->q:Z

    .line 1775
    invoke-virtual {p0, p1, v2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    const/4 v0, 0x0

    .line 1777
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)V

    return-void
.end method

.method private a(Landroid/view/ViewParent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1563
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    if-eq p1, v1, :cond_3

    .line 1571
    instance-of v2, p1, Landroid/view/View;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Landroid/view/View;

    .line 1572
    invoke-static {v2}, Landroidx/core/f/u;->s(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 1579
    :cond_2
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method private a(Landroidx/appcompat/app/f$l;)Z
    .locals 2

    .line 1730
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$l;->a(Landroid/content/Context;)V

    .line 1731
    new-instance v0, Landroidx/appcompat/app/f$k;

    iget-object v1, p1, Landroidx/appcompat/app/f$l;->l:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Landroidx/appcompat/app/f$k;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    const/16 v0, 0x51

    .line 1732
    iput v0, p1, Landroidx/appcompat/app/f$l;->c:I

    const/4 p1, 0x1

    return p1
.end method

.method private a(Landroidx/appcompat/app/f$l;ILandroid/view/KeyEvent;I)Z
    .locals 2

    .line 2122
    invoke-virtual {p3}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2130
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/f$l;->m:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1, p3}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v0, :cond_2

    .line 2132
    iget-object v0, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0, p2, p3, p4}, Landroidx/appcompat/view/menu/g;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v1

    :cond_2
    if-eqz v1, :cond_3

    const/4 p2, 0x1

    and-int/lit8 p3, p4, 0x1

    if-nez p3, :cond_3

    .line 2137
    iget-object p3, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-nez p3, :cond_3

    .line 2138
    invoke-virtual {p0, p1, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    :cond_3
    return v1
.end method

.method private b(Landroid/view/View;)V
    .locals 2

    .line 2300
    invoke-static {p1}, Landroidx/core/f/u;->l(Landroid/view/View;)I

    move-result v0

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 2303
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget v1, Landroidx/appcompat/a$c;->b:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    goto :goto_1

    .line 2304
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget v1, Landroidx/appcompat/a$c;->a:I

    invoke-static {v0, v1}, Landroidx/core/content/a;->c(Landroid/content/Context;I)I

    move-result v0

    .line 2302
    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private b(IZ)Z
    .locals 6

    .line 2496
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const/4 v1, 0x0

    .line 2497
    invoke-direct {p0, v0, p1, v1}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v0

    .line 2499
    invoke-direct {p0}, Landroidx/appcompat/app/f;->D()Z

    move-result v2

    .line 2500
    iget-object v3, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v3, v3, 0x30

    .line 2502
    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v4, 0x1

    if-eq v3, v0, :cond_1

    if-eqz p2, :cond_1

    if-nez v2, :cond_1

    .line 2513
    iget-boolean p2, p0, Landroidx/appcompat/app/f;->P:Z

    if-eqz p2, :cond_1

    sget-boolean p2, Landroidx/appcompat/app/f;->x:Z

    if-nez p2, :cond_0

    iget-boolean p2, p0, Landroidx/appcompat/app/f;->Q:Z

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v5, p2, Landroid/app/Activity;

    if-eqz v5, :cond_1

    check-cast p2, Landroid/app/Activity;

    .line 2519
    invoke-virtual {p2}, Landroid/app/Activity;->isChild()Z

    move-result p2

    if-nez p2, :cond_1

    .line 2526
    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast p2, Landroid/app/Activity;

    invoke-static {p2}, Landroidx/core/app/a;->b(Landroid/app/Activity;)V

    move p2, v4

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    if-eq v3, v0, :cond_2

    .line 2535
    invoke-direct {p0, v0, v2, v1}, Landroidx/appcompat/app/f;->a(IZLandroid/content/res/Configuration;)V

    goto :goto_1

    :cond_2
    move v4, p2

    :goto_1
    if-eqz v4, :cond_3

    .line 2545
    iget-object p2, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, p2, Landroidx/appcompat/app/c;

    if-eqz v0, :cond_3

    .line 2546
    check-cast p2, Landroidx/appcompat/app/c;

    invoke-virtual {p2, p1}, Landroidx/appcompat/app/c;->a(I)V

    :cond_3
    return v4
.end method

.method private b(Landroidx/appcompat/app/f$l;)Z
    .locals 6

    .line 1781
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1784
    iget v1, p1, Landroidx/appcompat/app/f$l;->a:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v1, p1, Landroidx/appcompat/app/f$l;->a:I

    const/16 v3, 0x6c

    if-ne v1, v3, :cond_4

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v1, :cond_4

    .line 1786
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 1787
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 1788
    sget v4, Landroidx/appcompat/a$a;->f:I

    invoke-virtual {v3, v4, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    const/4 v4, 0x0

    .line 1791
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_1

    .line 1792
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1793
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1794
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v5, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1795
    sget v5, Landroidx/appcompat/a$a;->g:I

    invoke-virtual {v4, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto :goto_0

    .line 1798
    :cond_1
    sget v5, Landroidx/appcompat/a$a;->g:I

    invoke-virtual {v3, v5, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1802
    :goto_0
    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    if-nez v4, :cond_2

    .line 1804
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1805
    invoke-virtual {v4, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1807
    :cond_2
    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v4, v1, v2}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_3
    if-eqz v4, :cond_4

    .line 1811
    new-instance v1, Landroidx/appcompat/view/d;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 1812
    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    move-object v0, v1

    .line 1816
    :cond_4
    new-instance v1, Landroidx/appcompat/view/menu/g;

    invoke-direct {v1, v0}, Landroidx/appcompat/view/menu/g;-><init>(Landroid/content/Context;)V

    .line 1817
    invoke-virtual {v1, p0}, Landroidx/appcompat/view/menu/g;->a(Landroidx/appcompat/view/menu/g$a;)V

    .line 1818
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/f$l;->a(Landroidx/appcompat/view/menu/g;)V

    return v2
.end method

.method private b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z
    .locals 8

    .line 1845
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1850
    :cond_0
    iget-boolean v0, p1, Landroidx/appcompat/app/f$l;->m:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 1854
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    .line 1856
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    .line 1859
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1862
    iget v3, p1, Landroidx/appcompat/app/f$l;->a:I

    invoke-interface {v0, v3}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    .line 1865
    :cond_3
    iget v3, p1, Landroidx/appcompat/app/f$l;->a:I

    if-eqz v3, :cond_5

    iget v3, p1, Landroidx/appcompat/app/f$l;->a:I

    const/16 v4, 0x6c

    if-ne v3, v4, :cond_4

    goto :goto_0

    :cond_4
    move v3, v1

    goto :goto_1

    :cond_5
    :goto_0
    move v3, v2

    :goto_1
    if-eqz v3, :cond_6

    .line 1868
    iget-object v4, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v4, :cond_6

    .line 1871
    invoke-interface {v4}, Landroidx/appcompat/widget/ad;->j()V

    .line 1874
    :cond_6
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    if-nez v4, :cond_15

    if-eqz v3, :cond_7

    .line 1875
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v4

    instance-of v4, v4, Landroidx/appcompat/app/j;

    if-nez v4, :cond_15

    .line 1878
    :cond_7
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    const/4 v5, 0x0

    if-eqz v4, :cond_8

    iget-boolean v4, p1, Landroidx/appcompat/app/f$l;->r:Z

    if-eqz v4, :cond_f

    .line 1879
    :cond_8
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_a

    .line 1880
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-nez v4, :cond_a

    :cond_9
    return v1

    :cond_a
    if-eqz v3, :cond_c

    .line 1885
    iget-object v4, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v4, :cond_c

    .line 1886
    iget-object v4, p0, Landroidx/appcompat/app/f;->D:Landroidx/appcompat/app/f$a;

    if-nez v4, :cond_b

    .line 1887
    new-instance v4, Landroidx/appcompat/app/f$a;

    invoke-direct {v4, p0}, Landroidx/appcompat/app/f$a;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v4, p0, Landroidx/appcompat/app/f;->D:Landroidx/appcompat/app/f$a;

    .line 1889
    :cond_b
    iget-object v4, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    iget-object v6, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    iget-object v7, p0, Landroidx/appcompat/app/f;->D:Landroidx/appcompat/app/f$a;

    invoke-interface {v4, v6, v7}, Landroidx/appcompat/widget/ad;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1894
    :cond_c
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1895
    iget v4, p1, Landroidx/appcompat/app/f$l;->a:I

    iget-object v6, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v4, v6}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 1897
    invoke-virtual {p1, v5}, Landroidx/appcompat/app/f$l;->a(Landroidx/appcompat/view/menu/g;)V

    if-eqz v3, :cond_d

    .line 1899
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz p1, :cond_d

    .line 1901
    iget-object p2, p0, Landroidx/appcompat/app/f;->D:Landroidx/appcompat/app/f$a;

    invoke-interface {p1, v5, p2}, Landroidx/appcompat/widget/ad;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    :cond_d
    return v1

    .line 1907
    :cond_e
    iput-boolean v1, p1, Landroidx/appcompat/app/f$l;->r:Z

    .line 1912
    :cond_f
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v4}, Landroidx/appcompat/view/menu/g;->h()V

    .line 1916
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->s:Landroid/os/Bundle;

    if-eqz v4, :cond_10

    .line 1917
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    iget-object v6, p1, Landroidx/appcompat/app/f$l;->s:Landroid/os/Bundle;

    invoke-virtual {v4, v6}, Landroidx/appcompat/view/menu/g;->b(Landroid/os/Bundle;)V

    .line 1918
    iput-object v5, p1, Landroidx/appcompat/app/f$l;->s:Landroid/os/Bundle;

    .line 1922
    :cond_10
    iget-object v4, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    iget-object v6, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-interface {v0, v1, v4, v6}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-nez v0, :cond_12

    if-eqz v3, :cond_11

    .line 1923
    iget-object p2, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz p2, :cond_11

    .line 1926
    iget-object v0, p0, Landroidx/appcompat/app/f;->D:Landroidx/appcompat/app/f$a;

    invoke-interface {p2, v5, v0}, Landroidx/appcompat/widget/ad;->a(Landroid/view/Menu;Landroidx/appcompat/view/menu/m$a;)V

    .line 1928
    :cond_11
    iget-object p1, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->i()V

    return v1

    :cond_12
    if-eqz p2, :cond_13

    .line 1934
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result p2

    goto :goto_2

    :cond_13
    const/4 p2, -0x1

    .line 1933
    :goto_2
    invoke-static {p2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object p2

    .line 1935
    invoke-virtual {p2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result p2

    if-eq p2, v2, :cond_14

    move p2, v2

    goto :goto_3

    :cond_14
    move p2, v1

    :goto_3
    iput-boolean p2, p1, Landroidx/appcompat/app/f$l;->p:Z

    .line 1936
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    iget-boolean v0, p1, Landroidx/appcompat/app/f$l;->p:Z

    invoke-virtual {p2, v0}, Landroidx/appcompat/view/menu/g;->setQwertyMode(Z)V

    .line 1937
    iget-object p2, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p2}, Landroidx/appcompat/view/menu/g;->i()V

    .line 1941
    :cond_15
    iput-boolean v2, p1, Landroidx/appcompat/app/f$l;->m:Z

    .line 1942
    iput-boolean v1, p1, Landroidx/appcompat/app/f$l;->n:Z

    .line 1943
    iput-object p1, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    return v2
.end method

.method private b(Z)Z
    .locals 2

    .line 2364
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2372
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()I

    move-result v0

    .line 2373
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;I)I

    move-result v1

    .line 2374
    invoke-direct {p0, v1, p1}, Landroidx/appcompat/app/f;->b(IZ)Z

    move-result p1

    if-nez v0, :cond_1

    .line 2377
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {p0, v1}, Landroidx/appcompat/app/f;->c(Landroid/content/Context;)Landroidx/appcompat/app/f$e;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/appcompat/app/f$e;->d()V

    goto :goto_0

    .line 2378
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-eqz v1, :cond_2

    .line 2380
    invoke-virtual {v1}, Landroidx/appcompat/app/f$e;->e()V

    :cond_2
    :goto_0
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 2383
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->d(Landroid/content/Context;)Landroidx/appcompat/app/f$e;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->d()V

    goto :goto_1

    .line 2384
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->X:Landroidx/appcompat/app/f$e;

    if-eqz v0, :cond_4

    .line 2386
    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->e()V

    :cond_4
    :goto_1
    return p1
.end method

.method private c(Landroid/content/Context;)Landroidx/appcompat/app/f$e;
    .locals 1

    .line 2614
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-nez v0, :cond_0

    .line 2615
    new-instance v0, Landroidx/appcompat/app/f$f;

    .line 2616
    invoke-static {p1}, Landroidx/appcompat/app/l;->a(Landroid/content/Context;)Landroidx/appcompat/app/l;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$f;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/app/l;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    .line 2618
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    return-object p1
.end method

.method private c(Landroidx/appcompat/app/f$l;)Z
    .locals 3

    .line 1824
    iget-object v0, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1825
    iget-object v0, p1, Landroidx/appcompat/app/f$l;->i:Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    return v1

    .line 1829
    :cond_0
    iget-object v0, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    .line 1833
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroidx/appcompat/app/f$m;

    if-nez v0, :cond_2

    .line 1834
    new-instance v0, Landroidx/appcompat/app/f$m;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$m;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->E:Landroidx/appcompat/app/f$m;

    .line 1837
    :cond_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->E:Landroidx/appcompat/app/f$m;

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/f$l;->a(Landroidx/appcompat/view/menu/m$a;)Landroidx/appcompat/view/menu/n;

    move-result-object v0

    .line 1839
    check-cast v0, Landroid/view/View;

    iput-object v0, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    .line 1841
    iget-object p1, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    return v1
.end method

.method private d(Landroid/content/Context;)Landroidx/appcompat/app/f$e;
    .locals 1

    .line 2622
    iget-object v0, p0, Landroidx/appcompat/app/f;->X:Landroidx/appcompat/app/f$e;

    if-nez v0, :cond_0

    .line 2623
    new-instance v0, Landroidx/appcompat/app/f$d;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$d;-><init>(Landroidx/appcompat/app/f;Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->X:Landroidx/appcompat/app/f$e;

    .line 2625
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f;->X:Landroidx/appcompat/app/f$e;

    return-object p1
.end method

.method private d(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1999
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2000
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 2001
    iget-boolean v0, p1, Landroidx/appcompat/app/f$l;->o:Z

    if-nez v0, :cond_0

    .line 2002
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private e(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 2010
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 2015
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object v2

    if-nez p1, :cond_2

    .line 2016
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz p1, :cond_2

    .line 2017
    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->e()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 2018
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result p1

    if-nez p1, :cond_2

    .line 2019
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->f()Z

    move-result p1

    if-nez p1, :cond_1

    .line 2020
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez p1, :cond_5

    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 2021
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->h()Z

    move-result v0

    goto :goto_2

    .line 2024
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {p1}, Landroidx/appcompat/widget/ad;->i()Z

    move-result v0

    goto :goto_2

    .line 2027
    :cond_2
    iget-boolean p1, v2, Landroidx/appcompat/app/f$l;->o:Z

    if-nez p1, :cond_6

    iget-boolean p1, v2, Landroidx/appcompat/app/f$l;->n:Z

    if-eqz p1, :cond_3

    goto :goto_1

    .line 2033
    :cond_3
    iget-boolean p1, v2, Landroidx/appcompat/app/f$l;->m:Z

    if-eqz p1, :cond_5

    .line 2035
    iget-boolean p1, v2, Landroidx/appcompat/app/f$l;->r:Z

    if-eqz p1, :cond_4

    .line 2038
    iput-boolean v1, v2, Landroidx/appcompat/app/f$l;->m:Z

    .line 2039
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_0

    :cond_4
    move p1, v0

    :goto_0
    if-eqz p1, :cond_5

    .line 2044
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)V

    goto :goto_2

    :cond_5
    move v0, v1

    goto :goto_2

    .line 2030
    :cond_6
    :goto_1
    iget-boolean p1, v2, Landroidx/appcompat/app/f$l;->o:Z

    .line 2032
    invoke-virtual {p0, v2, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    move v0, p1

    :goto_2
    if-eqz v0, :cond_8

    .line 2051
    iget-object p1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "audio"

    .line 2052
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    if-eqz p1, :cond_7

    .line 2054
    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->playSoundEffect(I)V

    goto :goto_3

    :cond_7
    const-string p1, "AppCompatDelegate"

    const-string p2, "Couldn\'t get audio manager"

    .line 2056
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v0
.end method

.method private i(I)V
    .locals 2

    .line 2146
    iget v0, p0, Landroidx/appcompat/app/f;->t:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    or-int/2addr p1, v0

    iput p1, p0, Landroidx/appcompat/app/f;->t:I

    .line 2148
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->s:Z

    if-nez p1, :cond_0

    .line 2149
    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->Y:Ljava/lang/Runnable;

    invoke-static {p1, v0}, Landroidx/core/f/u;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 2150
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->s:Z

    :cond_0
    return-void
.end method

.method private j(I)I
    .locals 2

    const-string v0, "AppCompatDelegate"

    const/16 v1, 0x8

    if-ne p1, v1, :cond_0

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature."

    .line 2316
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6c

    return p1

    :cond_0
    const/16 v1, 0x9

    if-ne p1, v1, :cond_1

    const-string p1, "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature."

    .line 2320
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x6d

    :cond_1
    return p1
.end method

.method private u()V
    .locals 3

    .line 547
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 549
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->m:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 553
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 554
    new-instance v0, Landroidx/appcompat/app/m;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Activity;

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    invoke-direct {v0, v1, v2}, Landroidx/appcompat/app/m;-><init>(Landroid/app/Activity;Z)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    goto :goto_0

    .line 555
    :cond_1
    instance-of v0, v0, Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 556
    new-instance v0, Landroidx/appcompat/app/m;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    check-cast v1, Landroid/app/Dialog;

    invoke-direct {v0, v1}, Landroidx/appcompat/app/m;-><init>(Landroid/app/Dialog;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    .line 558
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    .line 559
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->Z:Z

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->c(Z)V

    :cond_3
    :goto_1
    return-void
.end method

.method private v()V
    .locals 1

    .line 753
    iget-object v0, p0, Landroidx/appcompat/app/f;->W:Landroidx/appcompat/app/f$e;

    if-eqz v0, :cond_0

    .line 754
    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->e()V

    .line 756
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->X:Landroidx/appcompat/app/f$e;

    if-eqz v0, :cond_1

    .line 757
    invoke-virtual {v0}, Landroidx/appcompat/app/f$e;->e()V

    :cond_1
    return-void
.end method

.method private w()V
    .locals 2

    .line 769
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 770
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/Window;)V

    .line 772
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    if-eqz v0, :cond_1

    return-void

    .line 773
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "We have not been given a Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private x()V
    .locals 2

    .line 805
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->G:Z

    if-nez v0, :cond_4

    .line 806
    invoke-direct {p0}, Landroidx/appcompat/app/f;->y()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    .line 809
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->n()Ljava/lang/CharSequence;

    move-result-object v0

    .line 810
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 811
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v1, :cond_0

    .line 812
    invoke-interface {v1, v0}, Landroidx/appcompat/widget/ad;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 813
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 814
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 815
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    .line 816
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 820
    :cond_2
    :goto_0
    invoke-direct {p0}, Landroidx/appcompat/app/f;->z()V

    .line 822
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewGroup;)V

    const/4 v0, 0x1

    .line 824
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->G:Z

    const/4 v0, 0x0

    .line 831
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object v0

    .line 832
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez v1, :cond_4

    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-nez v0, :cond_4

    :cond_3
    const/16 v0, 0x6c

    .line 833
    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->i(I)V

    :cond_4
    return-void
.end method

.method private y()Landroid/view/ViewGroup;
    .locals 7

    .line 839
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v1, Landroidx/appcompat/a$j;->az:[I

    invoke-virtual {v0, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 841
    sget v1, Landroidx/appcompat/a$j;->aE:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 847
    sget v1, Landroidx/appcompat/a$j;->aN:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 848
    invoke-virtual {p0, v3}, Landroidx/appcompat/app/f;->d(I)Z

    goto :goto_0

    .line 849
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->aE:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x6c

    .line 851
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    .line 853
    :cond_1
    :goto_0
    sget v1, Landroidx/appcompat/a$j;->aF:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    const/16 v4, 0x6d

    if-eqz v1, :cond_2

    .line 854
    invoke-virtual {p0, v4}, Landroidx/appcompat/app/f;->d(I)Z

    .line 856
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->aG:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v1, 0xa

    .line 857
    invoke-virtual {p0, v1}, Landroidx/appcompat/app/f;->d(I)Z

    .line 859
    :cond_3
    sget v1, Landroidx/appcompat/a$j;->aA:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/appcompat/app/f;->p:Z

    .line 860
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 863
    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    .line 864
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 866
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 870
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->q:Z

    const/4 v5, 0x0

    if-nez v1, :cond_9

    .line 871
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->p:Z

    if-eqz v1, :cond_4

    .line 873
    sget v1, Landroidx/appcompat/a$g;->g:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 877
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    iput-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    goto/16 :goto_2

    .line 878
    :cond_4
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->m:Z

    if-eqz v0, :cond_8

    .line 884
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 885
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v6, Landroidx/appcompat/a$a;->f:I

    invoke-virtual {v1, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 888
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_5

    .line 889
    new-instance v1, Landroidx/appcompat/view/d;

    iget-object v3, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-direct {v1, v3, v0}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    goto :goto_1

    .line 891
    :cond_5
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 895
    :goto_1
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$g;->q:I

    .line 896
    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 898
    sget v1, Landroidx/appcompat/a$f;->p:I

    .line 899
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ad;

    iput-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    .line 900
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v3

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ad;->setWindowCallback(Landroid/view/Window$Callback;)V

    .line 905
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->n:Z

    if-eqz v1, :cond_6

    .line 906
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {v1, v4}, Landroidx/appcompat/widget/ad;->a(I)V

    .line 908
    :cond_6
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->J:Z

    if-eqz v1, :cond_7

    .line 909
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    const/4 v3, 0x2

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ad;->a(I)V

    .line 911
    :cond_7
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->K:Z

    if-eqz v1, :cond_b

    .line 912
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    const/4 v3, 0x5

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ad;->a(I)V

    goto :goto_2

    :cond_8
    move-object v0, v5

    goto :goto_2

    .line 916
    :cond_9
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->o:Z

    if-eqz v1, :cond_a

    .line 917
    sget v1, Landroidx/appcompat/a$g;->p:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_2

    .line 920
    :cond_a
    sget v1, Landroidx/appcompat/a$g;->o:I

    invoke-virtual {v0, v1, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    :cond_b
    :goto_2
    if-eqz v0, :cond_11

    .line 935
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v1, v3, :cond_c

    .line 938
    new-instance v1, Landroidx/appcompat/app/f$3;

    invoke-direct {v1, p0}, Landroidx/appcompat/app/f$3;-><init>(Landroidx/appcompat/app/f;)V

    invoke-static {v0, v1}, Landroidx/core/f/u;->a(Landroid/view/View;Landroidx/core/f/r;)V

    goto :goto_3

    .line 957
    :cond_c
    instance-of v1, v0, Landroidx/appcompat/widget/ah;

    if-eqz v1, :cond_d

    .line 959
    move-object v1, v0

    check-cast v1, Landroidx/appcompat/widget/ah;

    new-instance v3, Landroidx/appcompat/app/f$4;

    invoke-direct {v3, p0}, Landroidx/appcompat/app/f$4;-><init>(Landroidx/appcompat/app/f;)V

    invoke-interface {v1, v3}, Landroidx/appcompat/widget/ah;->setOnFitSystemWindowsListener(Landroidx/appcompat/widget/ah$a;)V

    .line 968
    :cond_d
    :goto_3
    iget-object v1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-nez v1, :cond_e

    .line 969
    sget v1, Landroidx/appcompat/a$f;->O:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Landroidx/appcompat/app/f;->H:Landroid/widget/TextView;

    .line 973
    :cond_e
    invoke-static {v0}, Landroidx/appcompat/widget/bd;->b(Landroid/view/View;)V

    .line 975
    sget v1, Landroidx/appcompat/a$f;->b:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 978
    iget-object v3, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_10

    .line 982
    :goto_4
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    if-lez v6, :cond_f

    .line 983
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 984
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 985
    invoke-virtual {v1, v6}, Landroidx/appcompat/widget/ContentFrameLayout;->addView(Landroid/view/View;)V

    goto :goto_4

    :cond_f
    const/4 v2, -0x1

    .line 990
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setId(I)V

    .line 991
    invoke-virtual {v1, v4}, Landroidx/appcompat/widget/ContentFrameLayout;->setId(I)V

    .line 995
    instance-of v2, v3, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_10

    .line 996
    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 1001
    :cond_10
    iget-object v2, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v2, v0}, Landroid/view/Window;->setContentView(Landroid/view/View;)V

    .line 1003
    new-instance v2, Landroidx/appcompat/app/f$5;

    invoke-direct {v2, p0}, Landroidx/appcompat/app/f$5;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {v1, v2}, Landroidx/appcompat/widget/ContentFrameLayout;->setAttachListener(Landroidx/appcompat/widget/ContentFrameLayout$a;)V

    return-object v0

    .line 925
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AppCompat does not support the current theme features: { windowActionBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->m:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionBarOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->n:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", android:windowIsFloating: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->p:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowActionModeOverlay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->o:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", windowNoTitle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->q:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 842
    :cond_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 843
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private z()V
    .locals 5

    .line 1019
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ContentFrameLayout;

    .line 1025
    iget-object v1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 1026
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .line 1027
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .line 1028
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 1026
    invoke-virtual {v0, v2, v3, v4, v1}, Landroidx/appcompat/widget/ContentFrameLayout;->a(IIII)V

    .line 1030
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->az:[I

    invoke-virtual {v1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 1031
    sget v2, Landroidx/appcompat/a$j;->aL:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1032
    sget v2, Landroidx/appcompat/a$j;->aM:I

    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getMinWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1034
    sget v2, Landroidx/appcompat/a$j;->aJ:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1035
    sget v2, Landroidx/appcompat/a$j;->aJ:I

    .line 1036
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 1035
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1038
    :cond_0
    sget v2, Landroidx/appcompat/a$j;->aK:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1039
    sget v2, Landroidx/appcompat/a$j;->aK:I

    .line 1040
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedWidthMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 1039
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1042
    :cond_1
    sget v2, Landroidx/appcompat/a$j;->aH:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1043
    sget v2, Landroidx/appcompat/a$j;->aH:I

    .line 1044
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMajor()Landroid/util/TypedValue;

    move-result-object v3

    .line 1043
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1046
    :cond_2
    sget v2, Landroidx/appcompat/a$j;->aI:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1047
    sget v2, Landroidx/appcompat/a$j;->aI:I

    .line 1048
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->getFixedHeightMinor()Landroid/util/TypedValue;

    move-result-object v3

    .line 1047
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 1050
    :cond_3
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 1052
    invoke-virtual {v0}, Landroidx/appcompat/widget/ContentFrameLayout;->requestLayout()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;I)I
    .locals 2

    const/16 v0, -0x64

    const/4 v1, -0x1

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_3

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_3

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 2435
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->d(Landroid/content/Context;)Landroidx/appcompat/app/f$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f$e;->a()I

    move-result p1

    return p1

    .line 2440
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2424
    :cond_1
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p2, v0, :cond_2

    .line 2425
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    const-class v0, Landroid/app/UiModeManager;

    .line 2426
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 2427
    invoke-virtual {p2}, Landroid/app/UiModeManager;->getNightMode()I

    move-result p2

    if-nez p2, :cond_2

    return v1

    .line 2433
    :cond_2
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->c(Landroid/content/Context;)Landroidx/appcompat/app/f$e;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/f$e;->a()I

    move-result p1

    return p1

    :cond_3
    return p2

    :cond_4
    return v1
.end method

.method final a(Landroidx/core/f/ac;Landroid/graphics/Rect;)I
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 2192
    invoke-virtual {p1}, Landroidx/core/f/ac;->b()I

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2194
    iget v1, p2, Landroid/graphics/Rect;->top:I

    goto :goto_0

    :cond_1
    move v1, v0

    .line 2199
    :goto_0
    iget-object v2, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v3, 0x8

    if-eqz v2, :cond_10

    .line 2200
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_10

    .line 2201
    iget-object v2, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    .line 2202
    invoke-virtual {v2}, Landroidx/appcompat/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2205
    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->isShown()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_e

    .line 2206
    iget-object v4, p0, Landroidx/appcompat/app/f;->aa:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 2207
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/f;->aa:Landroid/graphics/Rect;

    .line 2208
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Landroidx/appcompat/app/f;->ab:Landroid/graphics/Rect;

    .line 2210
    :cond_2
    iget-object v4, p0, Landroidx/appcompat/app/f;->aa:Landroid/graphics/Rect;

    .line 2211
    iget-object v6, p0, Landroidx/appcompat/app/f;->ab:Landroid/graphics/Rect;

    if-nez p1, :cond_3

    .line 2213
    invoke-virtual {v4, p2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_1

    .line 2216
    :cond_3
    invoke-virtual {p1}, Landroidx/core/f/ac;->a()I

    move-result p2

    .line 2217
    invoke-virtual {p1}, Landroidx/core/f/ac;->b()I

    move-result v7

    .line 2218
    invoke-virtual {p1}, Landroidx/core/f/ac;->c()I

    move-result v8

    .line 2219
    invoke-virtual {p1}, Landroidx/core/f/ac;->d()I

    move-result p1

    .line 2215
    invoke-virtual {v4, p2, v7, v8, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2222
    :goto_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    invoke-static {p1, v4, v6}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2223
    iget p1, v4, Landroid/graphics/Rect;->top:I

    .line 2224
    iget p2, v4, Landroid/graphics/Rect;->left:I

    .line 2225
    iget v4, v4, Landroid/graphics/Rect;->right:I

    .line 2230
    iget-object v6, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    invoke-static {v6}, Landroidx/core/f/u;->n(Landroid/view/View;)Landroidx/core/f/ac;

    move-result-object v6

    if-nez v6, :cond_4

    move v7, v0

    goto :goto_2

    .line 2232
    :cond_4
    invoke-virtual {v6}, Landroidx/core/f/ac;->a()I

    move-result v7

    :goto_2
    if-nez v6, :cond_5

    move v6, v0

    goto :goto_3

    .line 2234
    :cond_5
    invoke-virtual {v6}, Landroidx/core/f/ac;->c()I

    move-result v6

    .line 2236
    :goto_3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v8, p1, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v8, p2, :cond_7

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v8, v4, :cond_6

    goto :goto_4

    :cond_6
    move p2, v0

    goto :goto_5

    .line 2239
    :cond_7
    :goto_4
    iput p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 2240
    iput p2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2241
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    move p2, v5

    :goto_5
    if-lez p1, :cond_8

    .line 2244
    iget-object p1, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    if-nez p1, :cond_8

    .line 2245
    new-instance p1, Landroid/view/View;

    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {p1, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    .line 2246
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 2247
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    const/16 v8, 0x33

    const/4 v9, -0x1

    invoke-direct {p1, v9, v4, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2249
    iput v7, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 2250
    iput v6, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 2251
    iget-object v4, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    invoke-virtual {v4, v6, v9, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_6

    .line 2252
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    if-eqz p1, :cond_a

    .line 2254
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 2255
    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v4, v8, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v4, v7, :cond_9

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    if-eq v4, v6, :cond_a

    .line 2257
    :cond_9
    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 2258
    iput v7, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 2259
    iput v6, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 2260
    iget-object v4, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    invoke-virtual {v4, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2266
    :cond_a
    :goto_6
    iget-object p1, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    if-eqz p1, :cond_b

    goto :goto_7

    :cond_b
    move v5, v0

    :goto_7
    if-eqz v5, :cond_c

    .line 2268
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_c

    .line 2270
    iget-object p1, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->b(Landroid/view/View;)V

    .line 2277
    :cond_c
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->o:Z

    if-nez p1, :cond_d

    if-eqz v5, :cond_d

    move v1, v0

    :cond_d
    move p1, v5

    move v5, p2

    goto :goto_8

    .line 2282
    :cond_e
    iget p1, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-eqz p1, :cond_f

    .line 2284
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    move p1, v0

    goto :goto_8

    :cond_f
    move p1, v0

    move v5, p1

    :goto_8
    if-eqz v5, :cond_11

    .line 2288
    iget-object p2, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_9

    :cond_10
    move p1, v0

    .line 2292
    :cond_11
    :goto_9
    iget-object p2, p0, Landroidx/appcompat/app/f;->I:Landroid/view/View;

    if-eqz p2, :cond_13

    if-eqz p1, :cond_12

    goto :goto_a

    :cond_12
    move v0, v3

    .line 2293
    :goto_a
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    return v1
.end method

.method public a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .line 1520
    iget-object v0, p0, Landroidx/appcompat/app/f;->ac:Landroidx/appcompat/app/h;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 1521
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    sget-object v2, Landroidx/appcompat/a$j;->az:[I

    invoke-virtual {v0, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 1522
    sget v2, Landroidx/appcompat/a$j;->aD:I

    .line 1523
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1527
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0}, Landroidx/appcompat/app/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/f;->ac:Landroidx/appcompat/app/h;

    goto :goto_0

    .line 1530
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Class;

    .line 1532
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/Object;

    .line 1533
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/appcompat/app/h;

    iput-object v2, p0, Landroidx/appcompat/app/f;->ac:Landroidx/appcompat/app/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 1535
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to instantiate custom view inflater "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Falling back to default."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "AppCompatDelegate"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1537
    new-instance v0, Landroidx/appcompat/app/h;

    invoke-direct {v0}, Landroidx/appcompat/app/h;-><init>()V

    iput-object v0, p0, Landroidx/appcompat/app/f;->ac:Landroidx/appcompat/app/h;

    .line 1543
    :cond_1
    :goto_0
    sget-boolean v8, Landroidx/appcompat/app/f;->v:Z

    if-eqz v8, :cond_3

    .line 1544
    instance-of v0, p4, Lorg/xmlpull/v1/XmlPullParser;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 1546
    move-object v0, p4

    check-cast v0, Lorg/xmlpull/v1/XmlPullParser;

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    if-le v0, v2, :cond_3

    move v1, v2

    goto :goto_1

    .line 1548
    :cond_2
    move-object v0, p1

    check-cast v0, Landroid/view/ViewParent;

    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->a(Landroid/view/ViewParent;)Z

    move-result v0

    move v1, v0

    :cond_3
    :goto_1
    move v7, v1

    .line 1551
    iget-object v2, p0, Landroidx/appcompat/app/f;->ac:Landroidx/appcompat/app/h;

    const/4 v9, 0x1

    .line 1554
    invoke-static {}, Landroidx/appcompat/widget/bc;->a()Z

    move-result v10

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 1551
    invoke-virtual/range {v2 .. v10}, Landroidx/appcompat/app/h;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Landroidx/appcompat/app/a;
    .locals 1

    .line 534
    invoke-direct {p0}, Landroidx/appcompat/app/f;->u()V

    .line 535
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method protected a(IZ)Landroidx/appcompat/app/f$l;
    .locals 3

    .line 2105
    iget-object p2, p0, Landroidx/appcompat/app/f;->M:[Landroidx/appcompat/app/f$l;

    if-eqz p2, :cond_0

    array-length v0, p2

    if-gt v0, p1, :cond_2

    :cond_0
    add-int/lit8 v0, p1, 0x1

    .line 2106
    new-array v0, v0, [Landroidx/appcompat/app/f$l;

    if-eqz p2, :cond_1

    .line 2108
    array-length v1, p2

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2110
    :cond_1
    iput-object v0, p0, Landroidx/appcompat/app/f;->M:[Landroidx/appcompat/app/f$l;

    move-object p2, v0

    .line 2113
    :cond_2
    aget-object v0, p2, p1

    if-nez v0, :cond_3

    .line 2115
    new-instance v0, Landroidx/appcompat/app/f$l;

    invoke-direct {v0, p1}, Landroidx/appcompat/app/f$l;-><init>(I)V

    aput-object v0, p2, p1

    :cond_3
    return-object v0
.end method

.method a(Landroid/view/Menu;)Landroidx/appcompat/app/f$l;
    .locals 5

    .line 2092
    iget-object v0, p0, Landroidx/appcompat/app/f;->M:[Landroidx/appcompat/app/f$l;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2093
    array-length v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-ge v1, v2, :cond_2

    .line 2095
    aget-object v3, v0, v1

    if-eqz v3, :cond_1

    .line 2096
    iget-object v4, v3, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-ne v4, p1, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 2

    if-eqz p1, :cond_3

    .line 1193
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 1194
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 1197
    :cond_0
    new-instance v0, Landroidx/appcompat/app/f$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$b;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    .line 1199
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1201
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_1

    .line 1202
    iget-object v1, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz v1, :cond_1

    .line 1203
    invoke-interface {v1, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b;)V

    .line 1207
    :cond_1
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-nez p1, :cond_2

    .line 1209
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1212
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object p1

    .line 1190
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "ActionMode callback can not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)V
    .locals 0

    .line 763
    iput p1, p0, Landroidx/appcompat/app/f;->T:I

    return-void
.end method

.method a(ILandroidx/appcompat/app/f$l;Landroid/view/Menu;)V
    .locals 2

    if-nez p3, :cond_1

    if-nez p2, :cond_0

    if-ltz p1, :cond_0

    .line 2067
    iget-object v0, p0, Landroidx/appcompat/app/f;->M:[Landroidx/appcompat/app/f$l;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    .line 2068
    aget-object p2, v0, p1

    :cond_0
    if-eqz p2, :cond_1

    .line 2074
    iget-object p3, p2, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    :cond_1
    if-eqz p2, :cond_2

    .line 2079
    iget-boolean p2, p2, Landroidx/appcompat/app/f$l;->o:Z

    if-nez p2, :cond_2

    return-void

    .line 2083
    :cond_2
    iget-boolean p2, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez p2, :cond_3

    .line 2087
    iget-object p2, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {p2}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object p2

    invoke-interface {p2, p1, p3}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_3
    return-void
.end method

.method public a(Landroid/content/res/Configuration;)V
    .locals 1

    .line 638
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->m:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/app/f;->G:Z

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 643
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Landroid/content/res/Configuration;)V

    .line 648
    :cond_0
    invoke-static {}, Landroidx/appcompat/widget/k;->b()Landroidx/appcompat/widget/k;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/k;->a(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 652
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->b(Z)Z

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    const/4 p1, 0x1

    .line 490
    iput-boolean p1, p0, Landroidx/appcompat/app/f;->P:Z

    const/4 v0, 0x0

    .line 494
    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->b(Z)Z

    .line 498
    invoke-direct {p0}, Landroidx/appcompat/app/f;->w()V

    .line 500
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 503
    :try_start_0
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Landroidx/core/app/e;->b(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    if-eqz v1, :cond_1

    .line 509
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 511
    iput-boolean p1, p0, Landroidx/appcompat/app/f;->Z:Z

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->c(Z)V

    .line 518
    :cond_1
    :goto_0
    invoke-static {p0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/e;)V

    .line 521
    :cond_2
    iput-boolean p1, p0, Landroidx/appcompat/app/f;->Q:Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 2

    .line 684
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 685
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 686
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 687
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 688
    iget-object p1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {p1}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 702
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 703
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 704
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 705
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 706
    iget-object p1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {p1}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method a(Landroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method a(Landroidx/appcompat/app/f$l;Z)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1967
    iget v0, p1, Landroidx/appcompat/app/f$l;->a:I

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    .line 1968
    invoke-interface {v0}, Landroidx/appcompat/widget/ad;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1969
    iget-object p1, p1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/view/menu/g;)V

    return-void

    .line 1973
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1974
    iget-boolean v2, p1, Landroidx/appcompat/app/f$l;->o:Z

    if-eqz v2, :cond_1

    iget-object v2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    if-eqz v2, :cond_1

    .line 1975
    iget-object v2, p1, Landroidx/appcompat/app/f$l;->g:Landroid/view/ViewGroup;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1978
    iget p2, p1, Landroidx/appcompat/app/f$l;->a:I

    invoke-virtual {p0, p2, p1, v1}, Landroidx/appcompat/app/f;->a(ILandroidx/appcompat/app/f$l;Landroid/view/Menu;)V

    :cond_1
    const/4 p2, 0x0

    .line 1982
    iput-boolean p2, p1, Landroidx/appcompat/app/f$l;->m:Z

    .line 1983
    iput-boolean p2, p1, Landroidx/appcompat/app/f$l;->n:Z

    .line 1984
    iput-boolean p2, p1, Landroidx/appcompat/app/f$l;->o:Z

    .line 1987
    iput-object v1, p1, Landroidx/appcompat/app/f$l;->h:Landroid/view/View;

    const/4 p2, 0x1

    .line 1991
    iput-boolean p2, p1, Landroidx/appcompat/app/f$l;->q:Z

    .line 1993
    iget-object p2, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    if-ne p2, p1, :cond_2

    .line 1994
    iput-object v1, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    :cond_2
    return-void
.end method

.method public a(Landroidx/appcompat/view/menu/g;)V
    .locals 0

    const/4 p1, 0x1

    .line 1184
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->a(Z)V

    return-void
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1125
    iput-object p1, p0, Landroidx/appcompat/app/f;->B:Ljava/lang/CharSequence;

    .line 1127
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    .line 1128
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/ad;->setWindowTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1129
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1130
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->k()Landroidx/appcompat/app/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/a;->a(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1131
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->H:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1132
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_0
    return-void
.end method

.method a(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 1415
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1416
    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/app/a;->a(ILandroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 1422
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    if-eqz p1, :cond_2

    .line 1423
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    invoke-direct {p0, p1, v0, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;ILandroid/view/KeyEvent;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1426
    iget-object p1, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    if-eqz p1, :cond_1

    .line 1427
    iput-boolean v1, p1, Landroidx/appcompat/app/f$l;->n:Z

    :cond_1
    return v1

    .line 1437
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f;->N:Landroidx/appcompat/app/f$l;

    const/4 v0, 0x0

    if-nez p1, :cond_3

    .line 1438
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 1439
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    .line 1440
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-direct {p0, p1, v2, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;ILandroid/view/KeyEvent;I)Z

    move-result p2

    .line 1441
    iput-boolean v0, p1, Landroidx/appcompat/app/f$l;->m:Z

    if-eqz p2, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method a(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1452
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroidx/core/f/e$a;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    instance-of v0, v0, Landroidx/appcompat/app/g;

    if-eqz v0, :cond_1

    .line 1453
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1454
    invoke-static {v0, p1}, Landroidx/core/f/e;->a(Landroid/view/View;Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1459
    :cond_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_2

    .line 1461
    iget-object v0, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {v0}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 1466
    :cond_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 1467
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    .line 1470
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/f;->c(ILandroid/view/KeyEvent;)Z

    move-result p1

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0, p1}, Landroidx/appcompat/app/f;->b(ILandroid/view/KeyEvent;)Z

    move-result p1

    :goto_1
    return p1
.end method

.method public a(Landroidx/appcompat/view/menu/g;Landroid/view/MenuItem;)Z
    .locals 2

    .line 1172
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1173
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez v1, :cond_0

    .line 1174
    invoke-virtual {p1}, Landroidx/appcompat/view/menu/g;->q()Landroidx/appcompat/view/menu/g;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/f;->a(Landroid/view/Menu;)Landroidx/appcompat/app/f$l;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1176
    iget p1, p1, Landroidx/appcompat/app/f$l;->a:I

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Landroid/content/Context;)Landroid/content/Context;
    .locals 6

    const/4 v0, 0x1

    .line 343
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->P:Z

    .line 353
    invoke-direct {p0}, Landroidx/appcompat/app/f;->C()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;I)I

    move-result v1

    .line 358
    sget-boolean v2, Landroidx/appcompat/app/f;->y:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/view/ContextThemeWrapper;

    if-eqz v2, :cond_0

    .line 360
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 368
    :try_start_0
    move-object v4, p1

    check-cast v4, Landroid/view/ContextThemeWrapper;

    invoke-static {v4, v2}, Landroidx/appcompat/app/f$j;->a(Landroid/view/ContextThemeWrapper;Landroid/content/res/Configuration;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 379
    :catch_0
    :cond_0
    instance-of v2, p1, Landroidx/appcompat/view/d;

    if-eqz v2, :cond_1

    .line 380
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 388
    :try_start_1
    move-object v4, p1

    check-cast v4, Landroidx/appcompat/view/d;

    invoke-virtual {v4, v2}, Landroidx/appcompat/view/d;->a(Landroid/content/res/Configuration;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    .line 402
    :catch_1
    :cond_1
    sget-boolean v2, Landroidx/appcompat/app/f;->x:Z

    if-nez v2, :cond_2

    .line 403
    invoke-super {p0, p1}, Landroidx/appcompat/app/e;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 411
    :cond_2
    :try_start_2
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 412
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 411
    invoke-virtual {v2, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v2

    .line 412
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 420
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 422
    invoke-virtual {v2, v4}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 423
    invoke-static {v2, v4}, Landroidx/appcompat/app/f;->a(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v3

    .line 437
    :cond_3
    invoke-direct {p0, p1, v1, v3}, Landroidx/appcompat/app/f;->a(Landroid/content/Context;ILandroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v1

    .line 446
    new-instance v2, Landroidx/appcompat/view/d;

    sget v3, Landroidx/appcompat/a$i;->c:I

    invoke-direct {v2, p1, v3}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 448
    invoke-virtual {v2, v1}, Landroidx/appcompat/view/d;->a(Landroid/content/res/Configuration;)V

    const/4 v1, 0x0

    .line 455
    :try_start_3
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v1

    :goto_0
    move v1, v0

    :catch_2
    if-eqz v1, :cond_5

    .line 465
    invoke-virtual {v2}, Landroidx/appcompat/view/d;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/content/a/f$b;->a(Landroid/content/res/Resources$Theme;)V

    .line 468
    :cond_5
    invoke-super {p0, v2}, Landroidx/appcompat/app/e;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    return-object p1

    :catch_3
    move-exception p1

    .line 414
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Application failed to obtain resources from itself"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .line 618
    iget-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    if-nez v0, :cond_1

    .line 619
    invoke-direct {p0}, Landroidx/appcompat/app/f;->u()V

    .line 620
    new-instance v0, Landroidx/appcompat/view/g;

    .line 621
    iget-object v1, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :goto_0
    invoke-direct {v0, v1}, Landroidx/appcompat/view/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    .line 623
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->f:Landroid/view/MenuInflater;

    return-object v0
.end method

.method public b(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 630
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 631
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method b(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
    .locals 7

    .line 1224
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    .line 1225
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz v0, :cond_0

    .line 1226
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    .line 1229
    :cond_0
    instance-of v0, p1, Landroidx/appcompat/app/f$b;

    if-nez v0, :cond_1

    .line 1231
    new-instance v0, Landroidx/appcompat/app/f$b;

    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/f$b;-><init>(Landroidx/appcompat/app/f;Landroidx/appcompat/view/b$a;)V

    move-object p1, v0

    .line 1235
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez v2, :cond_2

    .line 1237
    :try_start_0
    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 1244
    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    goto/16 :goto_5

    .line 1246
    :cond_3
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_6

    .line 1247
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->p:Z

    if-eqz v0, :cond_5

    .line 1249
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1250
    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 1251
    sget v5, Landroidx/appcompat/a$a;->f:I

    invoke-virtual {v4, v5, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1254
    iget v5, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_4

    .line 1255
    iget-object v5, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    .line 1256
    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 1257
    iget v4, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 1259
    new-instance v4, Landroidx/appcompat/view/d;

    iget-object v6, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-direct {v4, v6, v2}, Landroidx/appcompat/view/d;-><init>(Landroid/content/Context;I)V

    .line 1260
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_1

    .line 1262
    :cond_4
    iget-object v4, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    .line 1265
    :goto_1
    new-instance v5, Landroidx/appcompat/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroidx/appcompat/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1266
    new-instance v5, Landroid/widget/PopupWindow;

    sget v6, Landroidx/appcompat/a$a;->i:I

    invoke-direct {v5, v4, v1, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, 0x2

    .line 1268
    invoke-static {v5, v6}, Landroidx/core/widget/h;->a(Landroid/widget/PopupWindow;I)V

    .line 1270
    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    iget-object v6, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 1271
    iget-object v5, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1273
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    sget v6, Landroidx/appcompat/a$a;->b:I

    invoke-virtual {v5, v6, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1275
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 1276
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    .line 1275
    invoke-static {v0, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v0

    .line 1277
    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setContentHeight(I)V

    .line 1278
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v0, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1279
    new-instance v0, Landroidx/appcompat/app/f$6;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$6;-><init>(Landroidx/appcompat/app/f;)V

    iput-object v0, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    goto :goto_2

    .line 1310
    :cond_5
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    sget v4, Landroidx/appcompat/a$f;->h:I

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ViewStubCompat;

    if-eqz v0, :cond_6

    .line 1313
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->m()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/ViewStubCompat;->setLayoutInflater(Landroid/view/LayoutInflater;)V

    .line 1314
    invoke-virtual {v0}, Landroidx/appcompat/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/ActionBarContextView;

    iput-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    .line 1319
    :cond_6
    :goto_2
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    if-eqz v0, :cond_b

    .line 1320
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    .line 1321
    iget-object v0, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/ActionBarContextView;->c()V

    .line 1322
    new-instance v0, Landroidx/appcompat/view/e;

    iget-object v4, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroidx/appcompat/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    iget-object v6, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-nez v6, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-direct {v0, v4, v5, p1, v3}, Landroidx/appcompat/view/e;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/ActionBarContextView;Landroidx/appcompat/view/b$a;Z)V

    .line 1324
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->b()Landroid/view/Menu;

    move-result-object v3

    invoke-interface {p1, v0, v3}, Landroidx/appcompat/view/b$a;->a(Landroidx/appcompat/view/b;Landroid/view/Menu;)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1325
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->d()V

    .line 1326
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->a(Landroidx/appcompat/view/b;)V

    .line 1327
    iput-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1329
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->o()Z

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p1, :cond_8

    .line 1330
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1331
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-static {p1}, Landroidx/core/f/u;->j(Landroid/view/View;)Landroidx/core/f/y;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/core/f/y;->a(F)Landroidx/core/f/y;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    .line 1332
    new-instance v0, Landroidx/appcompat/app/f$7;

    invoke-direct {v0, p0}, Landroidx/appcompat/app/f$7;-><init>(Landroidx/appcompat/app/f;)V

    invoke-virtual {p1, v0}, Landroidx/core/f/y;->a(Landroidx/core/f/z;)Landroidx/core/f/y;

    goto :goto_4

    .line 1351
    :cond_8
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->setAlpha(F)V

    .line 1352
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1, v2}, Landroidx/appcompat/widget/ActionBarContextView;->setVisibility(I)V

    .line 1353
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 1355
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of p1, p1, Landroid/view/View;

    if-eqz p1, :cond_9

    .line 1356
    iget-object p1, p0, Landroidx/appcompat/app/f;->h:Landroidx/appcompat/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroidx/appcompat/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-static {p1}, Landroidx/core/f/u;->m(Landroid/view/View;)V

    .line 1360
    :cond_9
    :goto_4
    iget-object p1, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_b

    .line 1361
    iget-object p1, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_5

    .line 1364
    :cond_a
    iput-object v1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    .line 1368
    :cond_b
    :goto_5
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    if-eqz p1, :cond_c

    iget-object v0, p0, Landroidx/appcompat/app/f;->d:Landroidx/appcompat/app/d;

    if-eqz v0, :cond_c

    .line 1369
    invoke-interface {v0, p1}, Landroidx/appcompat/app/d;->a(Landroidx/appcompat/view/b;)V

    .line 1371
    :cond_c
    iget-object p1, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    return-object p1
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 0

    .line 527
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 711
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 712
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 713
    invoke-virtual {v0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 714
    iget-object p1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {p1}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method b(Landroidx/appcompat/view/menu/g;)V
    .locals 2

    .line 1949
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->L:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1953
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->L:Z

    .line 1954
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    invoke-interface {v0}, Landroidx/appcompat/widget/ad;->k()V

    .line 1955
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->l()Landroid/view/Window$Callback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1956
    iget-boolean v1, p0, Landroidx/appcompat/app/f;->r:Z

    if-nez v1, :cond_1

    const/16 v1, 0x6c

    .line 1957
    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    :cond_1
    const/4 p1, 0x0

    .line 1959
    iput-boolean p1, p0, Landroidx/appcompat/app/f;->L:Z

    return-void
.end method

.method b(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1476
    :cond_0
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->e(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1479
    :cond_1
    iget-boolean p1, p0, Landroidx/appcompat/app/f;->O:Z

    .line 1480
    iput-boolean v2, p0, Landroidx/appcompat/app/f;->O:Z

    .line 1482
    invoke-virtual {p0, v2, v2}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 1483
    iget-boolean v0, p2, Landroidx/appcompat/app/f$l;->o:Z

    if-eqz v0, :cond_3

    if-nez p1, :cond_2

    .line 1488
    invoke-virtual {p0, p2, v1}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    :cond_2
    return v1

    .line 1492
    :cond_3
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->r()Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    :goto_0
    return v2
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 657
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->R:Z

    .line 661
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->t()Z

    return-void
.end method

.method public c(I)V
    .locals 2

    .line 693
    invoke-direct {p0}, Landroidx/appcompat/app/f;->x()V

    .line 694
    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 695
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 696
    iget-object v1, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 697
    iget-object p1, p0, Landroidx/appcompat/app/f;->A:Landroidx/appcompat/app/f$c;

    invoke-virtual {p1}, Landroidx/appcompat/app/f$c;->a()Landroid/view/Window$Callback;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method c(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x52

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 1503
    :cond_0
    invoke-direct {p0, v2, p2}, Landroidx/appcompat/app/f;->d(ILandroid/view/KeyEvent;)Z

    return v1

    .line 1511
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->O:Z

    :goto_1
    return v2
.end method

.method public d()V
    .locals 2

    const/4 v0, 0x0

    .line 666
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->R:Z

    .line 668
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 670
    invoke-virtual {v1, v0}, Landroidx/appcompat/app/a;->d(Z)V

    :cond_0
    return-void
.end method

.method public d(I)Z
    .locals 4

    .line 1057
    invoke-direct {p0, p1}, Landroidx/appcompat/app/f;->j(I)I

    move-result p1

    .line 1059
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->q:Z

    const/4 v1, 0x0

    const/16 v2, 0x6c

    if-eqz v0, :cond_0

    if-ne p1, v2, :cond_0

    return v1

    .line 1062
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->m:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-ne p1, v3, :cond_1

    .line 1064
    iput-boolean v1, p0, Landroidx/appcompat/app/f;->m:Z

    :cond_1
    if-eq p1, v3, :cond_7

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x5

    if-eq p1, v0, :cond_5

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    if-eq p1, v2, :cond_3

    const/16 v0, 0x6d

    if-eq p1, v0, :cond_2

    .line 1094
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0, p1}, Landroid/view/Window;->requestFeature(I)Z

    move-result p1

    return p1

    .line 1073
    :cond_2
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1074
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->n:Z

    return v3

    .line 1069
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1070
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->m:Z

    return v3

    .line 1077
    :cond_4
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1078
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->o:Z

    return v3

    .line 1085
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1086
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->K:Z

    return v3

    .line 1081
    :cond_6
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1082
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->J:Z

    return v3

    .line 1089
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/app/f;->B()V

    .line 1090
    iput-boolean v3, p0, Landroidx/appcompat/app/f;->q:Z

    return v3
.end method

.method public e()V
    .locals 2

    .line 676
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 678
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/a;->d(Z)V

    :cond_0
    return-void
.end method

.method e(I)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x6c

    if-ne p1, v1, :cond_0

    .line 1147
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1149
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->e(Z)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    .line 1154
    invoke-virtual {p0, p1, v1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    .line 1155
    iget-boolean v1, p1, Landroidx/appcompat/app/f$l;->o:Z

    if-eqz v1, :cond_1

    .line 1156
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 1

    .line 1217
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1218
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1220
    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->i(I)V

    return-void
.end method

.method f(I)V
    .locals 1

    const/16 v0, 0x6c

    if-ne p1, v0, :cond_0

    .line 1163
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1165
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/a;->e(Z)V

    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .line 723
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 724
    invoke-static {p0}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/e;)V

    .line 727
    :cond_0
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->s:Z

    if-eqz v0, :cond_1

    .line 728
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->Y:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    const/4 v0, 0x0

    .line 731
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->R:Z

    const/4 v0, 0x1

    .line 732
    iput-boolean v0, p0, Landroidx/appcompat/app/f;->r:Z

    .line 734
    iget v0, p0, Landroidx/appcompat/app/f;->S:I

    const/16 v1, -0x64

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_2

    check-cast v0, Landroid/app/Activity;

    .line 736
    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 738
    sget-object v0, Landroidx/appcompat/app/f;->u:Landroidx/b/g;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Landroidx/appcompat/app/f;->S:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 740
    :cond_2
    sget-object v0, Landroidx/appcompat/app/f;->u:Landroidx/b/g;

    iget-object v1, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/b/g;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    if-eqz v0, :cond_3

    .line 744
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->g()V

    .line 748
    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/app/f;->v()V

    return-void
.end method

.method g(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1963
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(Landroidx/appcompat/app/f$l;Z)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1585
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 1586
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory()Landroid/view/LayoutInflater$Factory;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1587
    invoke-static {v0, p0}, Landroidx/core/f/f;->a(Landroid/view/LayoutInflater;Landroid/view/LayoutInflater$Factory2;)V

    goto :goto_0

    .line 1589
    :cond_0
    invoke-virtual {v0}, Landroid/view/LayoutInflater;->getFactory2()Landroid/view/LayoutInflater$Factory2;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/f;

    if-nez v0, :cond_1

    const-string v0, "AppCompatDelegate"

    const-string v1, "The Activity\'s LayoutInflater already has a Factory installed so we can not install AppCompat\'s"

    .line 1590
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method h(I)V
    .locals 4

    const/4 v0, 0x1

    .line 2155
    invoke-virtual {p0, p1, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object v1

    .line 2157
    iget-object v2, v1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v2, :cond_1

    .line 2158
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 2159
    iget-object v3, v1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v3, v2}, Landroidx/appcompat/view/menu/g;->a(Landroid/os/Bundle;)V

    .line 2160
    invoke-virtual {v2}, Landroid/os/Bundle;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 2161
    iput-object v2, v1, Landroidx/appcompat/app/f$l;->s:Landroid/os/Bundle;

    .line 2164
    :cond_0
    iget-object v2, v1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->h()V

    .line 2165
    iget-object v2, v1, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v2}, Landroidx/appcompat/view/menu/g;->clear()V

    .line 2167
    :cond_1
    iput-boolean v0, v1, Landroidx/appcompat/app/f$l;->r:Z

    .line 2168
    iput-boolean v0, v1, Landroidx/appcompat/app/f$l;->q:Z

    const/16 v0, 0x6c

    if-eq p1, v0, :cond_2

    if-nez p1, :cond_3

    .line 2171
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 2173
    invoke-virtual {p0, p1, p1}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2175
    iput-boolean p1, v0, Landroidx/appcompat/app/f$l;->m:Z

    const/4 p1, 0x0

    .line 2176
    invoke-direct {p0, v0, p1}, Landroidx/appcompat/app/f;->b(Landroidx/appcompat/app/f$l;Landroid/view/KeyEvent;)Z

    :cond_3
    return-void
.end method

.method public i()I
    .locals 1

    .line 2411
    iget v0, p0, Landroidx/appcompat/app/f;->S:I

    return v0
.end method

.method final k()Landroidx/appcompat/app/a;
    .locals 1

    .line 539
    iget-object v0, p0, Landroidx/appcompat/app/f;->e:Landroidx/appcompat/app/a;

    return-object v0
.end method

.method final l()Landroid/view/Window$Callback;
    .locals 1

    .line 543
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final m()Landroid/content/Context;
    .locals 1

    .line 604
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 606
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->b()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 610
    iget-object v0, p0, Landroidx/appcompat/app/f;->b:Landroid/content/Context;

    :cond_1
    return-object v0
.end method

.method final n()Ljava/lang/CharSequence;
    .locals 2

    .line 1138
    iget-object v0, p0, Landroidx/appcompat/app/f;->a:Ljava/lang/Object;

    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 1139
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 1142
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->B:Ljava/lang/CharSequence;

    return-object v0
.end method

.method final o()Z
    .locals 1

    .line 1377
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->G:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/app/f;->l:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroidx/core/f/u;->r(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1602
    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/appcompat/app/f;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    .line 1611
    invoke-virtual {p0, v0, p1, p2, p3}, Landroidx/appcompat/app/f;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public p()Z
    .locals 1

    .line 1387
    iget-boolean v0, p0, Landroidx/appcompat/app/f;->F:Z

    return v0
.end method

.method q()V
    .locals 1

    .line 1391
    iget-object v0, p0, Landroidx/appcompat/app/f;->k:Landroidx/core/f/y;

    if-eqz v0, :cond_0

    .line 1392
    invoke-virtual {v0}, Landroidx/core/f/y;->b()V

    :cond_0
    return-void
.end method

.method r()Z
    .locals 2

    .line 1398
    iget-object v0, p0, Landroidx/appcompat/app/f;->g:Landroidx/appcompat/view/b;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1399
    invoke-virtual {v0}, Landroidx/appcompat/view/b;->c()V

    return v1

    .line 1404
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->a()Landroidx/appcompat/app/a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1405
    invoke-virtual {v0}, Landroidx/appcompat/app/a;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method s()V
    .locals 2

    .line 2333
    iget-object v0, p0, Landroidx/appcompat/app/f;->C:Landroidx/appcompat/widget/ad;

    if-eqz v0, :cond_0

    .line 2334
    invoke-interface {v0}, Landroidx/appcompat/widget/ad;->k()V

    .line 2337
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_2

    .line 2338
    iget-object v0, p0, Landroidx/appcompat/app/f;->c:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/app/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2339
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2341
    :try_start_0
    iget-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    const/4 v0, 0x0

    .line 2347
    iput-object v0, p0, Landroidx/appcompat/app/f;->i:Landroid/widget/PopupWindow;

    .line 2349
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/app/f;->q()V

    const/4 v0, 0x0

    .line 2351
    invoke-virtual {p0, v0, v0}, Landroidx/appcompat/app/f;->a(IZ)Landroidx/appcompat/app/f$l;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2352
    iget-object v1, v0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    if-eqz v1, :cond_3

    .line 2353
    iget-object v0, v0, Landroidx/appcompat/app/f$l;->j:Landroidx/appcompat/view/menu/g;

    invoke-virtual {v0}, Landroidx/appcompat/view/menu/g;->close()V

    :cond_3
    return-void
.end method

.method public t()Z
    .locals 1

    const/4 v0, 0x1

    .line 2359
    invoke-direct {p0, v0}, Landroidx/appcompat/app/f;->b(Z)Z

    move-result v0

    return v0
.end method
