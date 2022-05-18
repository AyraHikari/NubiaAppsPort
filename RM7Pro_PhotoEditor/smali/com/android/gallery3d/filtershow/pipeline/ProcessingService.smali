.class public Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;
.super Landroid/app/Service;
.source ""


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;,
        Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/pipeline/k;

.field private b:Lcom/android/gallery3d/filtershow/pipeline/h;

.field private c:Lcom/android/gallery3d/filtershow/pipeline/q;

.field private d:Lcom/android/gallery3d/filtershow/pipeline/g;

.field private e:Lcom/android/gallery3d/filtershow/pipeline/f;

.field private f:Lcom/android/gallery3d/filtershow/pipeline/n;

.field private g:Lcom/android/gallery3d/filtershow/pipeline/d;

.field private final h:Landroid/os/IBinder;

.field private i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:I

.field private l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:I

.field private q:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$a;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->h:Landroid/os/IBinder;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j:Ljava/util/ArrayList;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->k:I

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    iput-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o:Z

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    return-void
.end method

.method static synthetic a(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic b(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)I
    .locals 0

    iget p0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->k:I

    return p0
.end method

.method public static f(Landroid/content/Context;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Ljava/io/File;Landroid/net/Uri;Landroid/net/Uri;ZIFZ)Landroid/content/Intent;
    .locals 2

    if-eqz p3, :cond_3

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v1, "sourceUri"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "selectedUri"

    invoke-virtual {v0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p3, "quality"

    invoke-virtual {v0, p3, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p3, "sizeFactor"

    invoke-virtual {v0, p3, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    check-cast p0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->Y0()Ljava/util/ArrayList;

    move-result-object p0

    const-string p3, "selectedpaths"

    invoke-virtual {v0, p3, p0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "destinationFile"

    invoke-virtual {v0, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string p0, "Saved"

    invoke-virtual {p1, p0}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "preset"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p0, "saving"

    const/4 p1, 0x1

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p0, "exit"

    invoke-virtual {v0, p0, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p5, :cond_2

    const-string p0, "flatten"

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private o(Landroid/net/Uri;)V
    .locals 10

    const-string v0, "width"

    const-string v1, "height"

    const-string v2, "orientation"

    const-string v3, "_data"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v5, p1

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    const/4 p1, 0x1

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    iget v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    if-eqz v2, :cond_0

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean p1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    iget p1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    :cond_1
    const/4 p1, 0x2

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    const/16 v1, 0x5a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x10e

    if-eq p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    iput p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    invoke-static {v0}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    throw p1

    :catch_0
    :cond_3
    :goto_0
    invoke-static {v0}, Lc/b/a/b/b;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method private s()V
    .locals 2

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/filters/g0;->Z(Landroid/content/res/Resources;)V

    invoke-static {p0}, Lcom/android/gallery3d/filtershow/pipeline/c;->g(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->g(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->b(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->l(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->e()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/filters/a;->m(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->c()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/filters/a;->k(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->h(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->d(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->V()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->g(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->b(Landroid/content/Context;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->l(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->e()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/filters/a;->m(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->c()V

    invoke-virtual {v0, p0, v1}, Lcom/android/gallery3d/filtershow/filters/a;->k(Landroid/content/Context;Lcom/android/gallery3d/filtershow/filters/x;)V

    invoke-virtual {v0, p0}, Lcom/android/gallery3d/filtershow/filters/a;->h(Landroid/content/Context;)V

    return-void
.end method

.method private t()V
    .locals 1

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/ImageFilter;->resetStatics()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->X()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->t()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->W()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->t()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->V()Lcom/android/gallery3d/filtershow/filters/g0;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/a;->t()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/filters/g0;->Y()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/pipeline/c;->i()V

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->x()Lcom/android/gallery3d/filtershow/imageshow/x;

    invoke-static {}, Lcom/android/gallery3d/filtershow/imageshow/x;->u0()V

    return-void
.end method


# virtual methods
.method public c(Landroid/net/Uri;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ps completePreviewSaveImage "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LYF"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o1()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S(Landroid/net/Uri;)V

    :cond_0
    return-void
.end method

.method public d(Landroid/net/Uri;Z)V
    .locals 5

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m:Z

    iget v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->k:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->k:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ps completeSaveImage "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PhotoEditor"

    invoke-static {v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_0
    invoke-virtual {p0, v2}, Landroid/app/Service;->stopForeground(Z)V

    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s2()V

    goto :goto_1

    :cond_1
    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o1()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "ProcessingService"

    const-string p2, "there are something wrong!!!"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j:Ljava/util/ArrayList;

    if-eqz p2, :cond_4

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S(Landroid/net/Uri;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->S(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public e()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->g:Lcom/android/gallery3d/filtershow/pipeline/d;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/d;->k()V

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->q:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->p:I

    return v0
.end method

.method public i(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    move-object v0, p0

    iget-object v1, v0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b:Lcom/android/gallery3d/filtershow/pipeline/h;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/gallery3d/filtershow/pipeline/h;->k(Landroid/net/Uri;Landroid/net/Uri;Ljava/io/File;Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;Landroid/graphics/Bitmap;ZIFZ)V

    return-void
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o:Z

    return v0
.end method

.method public k()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ps onStart "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    iget-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->s2()V

    :cond_0
    return-void
.end method

.method public l(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;FLandroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/gallery3d/filtershow/pipeline/m;)V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/l;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/l;-><init>()V

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/pipeline/l;->t(F)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/l;->r(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->u(I)V

    invoke-virtual {v0, p5}, Lcom/android/gallery3d/filtershow/pipeline/l;->o(Lcom/android/gallery3d/filtershow/pipeline/m;)V

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->n(Landroid/graphics/Rect;)V

    invoke-virtual {v0, p4}, Lcom/android/gallery3d/filtershow/pipeline/l;->p(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    invoke-virtual {v1, p1, p3}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;->T(ZLandroid/graphics/Rect;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/f;->k(Lcom/android/gallery3d/filtershow/pipeline/l;)V

    return-void
.end method

.method public m(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;FLcom/android/gallery3d/filtershow/pipeline/m;)V
    .locals 2

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/l;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/l;-><init>()V

    new-instance v1, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;

    invoke-direct {v1, p1}, Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->s(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    invoke-virtual {v0, p2}, Lcom/android/gallery3d/filtershow/pipeline/l;->t(F)V

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/l;->r(Lcom/android/gallery3d/filtershow/pipeline/ImagePreset;)V

    const/4 p1, 0x5

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/l;->u(I)V

    invoke-virtual {v0, p3}, Lcom/android/gallery3d/filtershow/pipeline/l;->o(Lcom/android/gallery3d/filtershow/pipeline/m;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/pipeline/g;->k(Lcom/android/gallery3d/filtershow/pipeline/l;)V

    return-void
.end method

.method public n(Lcom/android/gallery3d/filtershow/pipeline/l;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f:Lcom/android/gallery3d/filtershow/pipeline/n;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/n;->k(Lcom/android/gallery3d/filtershow/pipeline/l;)V

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->h:Landroid/os/IBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    const-string v0, "ProcessingService"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/k;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/k;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/h;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/pipeline/h;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;)V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b:Lcom/android/gallery3d/filtershow/pipeline/h;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/q;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/q;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->c:Lcom/android/gallery3d/filtershow/pipeline/q;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/g;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/f;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/n;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/n;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f:Lcom/android/gallery3d/filtershow/pipeline/n;

    new-instance v0, Lcom/android/gallery3d/filtershow/pipeline/d;

    invoke-direct {v0}, Lcom/android/gallery3d/filtershow/pipeline/d;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->g:Lcom/android/gallery3d/filtershow/pipeline/d;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->b:Lcom/android/gallery3d/filtershow/pipeline/h;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->c:Lcom/android/gallery3d/filtershow/pipeline/q;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f:Lcom/android/gallery3d/filtershow/pipeline/n;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->g:Lcom/android/gallery3d/filtershow/pipeline/d;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/pipeline/k;->b(Lcom/android/gallery3d/filtershow/pipeline/j;)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->s()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "ProcessingService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->a:Lcom/android/gallery3d/filtershow/pipeline/k;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/k;->f()V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->t()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o:Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 10

    const-string p2, "ProcessingService"

    const-string p3, "onStartCommand"

    invoke-static {p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    if-eqz p1, :cond_3

    const-string p3, "saving"

    const/4 v0, 0x0

    invoke-virtual {p1, p3, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz p3, :cond_3

    const-string p3, "preset"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string p3, "sourceUri"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "selectedUri"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "destinationFile"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x64

    const-string v5, "quality"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/high16 v4, 0x3f800000    # 1.0f

    const-string v5, "sizeFactor"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    const-string v4, "flatten"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    const-string v4, "exit"

    invoke-virtual {p1, v4, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "presetJson = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/nsource = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/nselected = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/ndestination = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/nquality = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, "sizeFactor = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, "/nflatten = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, "/nexit = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "LYF"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "selectedpaths"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j:Ljava/util/ArrayList;

    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    :cond_0
    const/4 p3, 0x0

    if-eqz v2, :cond_1

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_1
    move-object v4, p3

    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->n:Z

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->m:Z

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->j:Ljava/util/ArrayList;

    if-eqz p3, :cond_2

    iput-boolean p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o:Z

    new-instance p2, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    const/4 v5, 0x0

    move-object v1, p2

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;ZIF)V

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p2, v0}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->a(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->b(Landroid/net/Uri;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p2, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o(Landroid/net/Uri;)V

    goto :goto_0

    :cond_2
    iput-boolean v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->o:Z

    new-instance p3, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    const/4 v5, 0x0

    move-object v1, p3

    move-object v2, p0

    invoke-direct/range {v1 .. v8}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;-><init>(Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;Ljava/lang/String;Ljava/io/File;Landroid/graphics/Bitmap;ZIF)V

    iput-object p3, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p3, p2}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->a(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;->b(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->l:Lcom/android/gallery3d/filtershow/pipeline/ProcessingService$b;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    const/4 p1, 0x3

    return p1
.end method

.method public p(Lcom/android/gallery3d/filtershow/FilterShowActivity;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ps setFiltershowActivity "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PhotoEditor"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    if-eqz v0, :cond_0

    const-string v0, "ps setFiltershowActivity fsa.finish"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iput-object p1, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->i:Lcom/android/gallery3d/filtershow/FilterShowActivity;

    return-void
.end method

.method public q(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->c:Lcom/android/gallery3d/filtershow/pipeline/q;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/q;->k(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/g;->l(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/f;->l(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f:Lcom/android/gallery3d/filtershow/pipeline/n;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/n;->l(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public r(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/g;->m(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/f;->m(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->f:Lcom/android/gallery3d/filtershow/pipeline/n;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/pipeline/n;->m(F)V

    return-void
.end method

.method public u()V
    .locals 1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->d:Lcom/android/gallery3d/filtershow/pipeline/g;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/g;->n()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->e:Lcom/android/gallery3d/filtershow/pipeline/f;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/f;->n()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/pipeline/ProcessingService;->c:Lcom/android/gallery3d/filtershow/pipeline/q;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/pipeline/q;->l()V

    return-void
.end method
