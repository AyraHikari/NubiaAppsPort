.class public Landroidx/constraintlayout/widget/e$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:I

.field public final b:Landroidx/constraintlayout/widget/e$d;

.field public final c:Landroidx/constraintlayout/widget/e$c;

.field public final d:Landroidx/constraintlayout/widget/e$b;

.field public final e:Landroidx/constraintlayout/widget/e$e;

.field public f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1259
    new-instance v0, Landroidx/constraintlayout/widget/e$d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$d;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    .line 1260
    new-instance v0, Landroidx/constraintlayout/widget/e$c;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$c;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    .line 1261
    new-instance v0, Landroidx/constraintlayout/widget/e$b;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$b;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    .line 1262
    new-instance v0, Landroidx/constraintlayout/widget/e$e;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$e;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    .line 1263
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e$a;->f:Ljava/util/HashMap;

    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 1

    .line 1336
    iput p1, p0, Landroidx/constraintlayout/widget/e$a;->a:I

    .line 1337
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->h:I

    .line 1338
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->i:I

    .line 1339
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->j:I

    .line 1340
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->k:I

    .line 1341
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->l:I

    .line 1342
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->m:I

    .line 1343
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->n:I

    .line 1344
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->o:I

    .line 1345
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->p:I

    .line 1346
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->q:I

    .line 1347
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->r:I

    .line 1348
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->s:I

    .line 1349
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->t:I

    .line 1351
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->u:F

    .line 1352
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->v:F

    .line 1353
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/e$b;->w:Ljava/lang/String;

    .line 1355
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->x:I

    .line 1356
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->y:I

    .line 1357
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->z:F

    .line 1359
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->A:I

    .line 1360
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->B:I

    .line 1361
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->C:I

    .line 1362
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->g:F

    .line 1363
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->e:I

    .line 1364
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->f:I

    .line 1365
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->c:I

    .line 1366
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->d:I

    .line 1367
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->D:I

    .line 1368
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->E:I

    .line 1369
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->F:I

    .line 1370
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->G:I

    .line 1371
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->P:F

    .line 1372
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->Q:F

    .line 1373
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->S:I

    .line 1374
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->R:I

    .line 1375
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/e$b;->ah:Z

    .line 1376
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/e$b;->ai:Z

    .line 1377
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->T:I

    .line 1378
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->U:I

    .line 1379
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->V:I

    .line 1380
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->W:I

    .line 1381
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->X:I

    .line 1382
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->Y:I

    .line 1383
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->Z:F

    .line 1384
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->aa:F

    .line 1385
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/e$b;->ag:Ljava/lang/String;

    .line 1386
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->K:I

    .line 1387
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->M:I

    .line 1388
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->t:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->J:I

    .line 1389
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->v:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->L:I

    .line 1390
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->O:I

    .line 1391
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, p2, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->N:I

    .line 1393
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p1, v0, :cond_0

    .line 1395
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->getMarginEnd()I

    move-result v0

    iput v0, p1, Landroidx/constraintlayout/widget/e$b;->H:I

    .line 1396
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p2}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->getMarginStart()I

    move-result p2

    iput p2, p1, Landroidx/constraintlayout/widget/e$b;->I:I

    :cond_0
    return-void
.end method

.method private a(ILandroidx/constraintlayout/widget/f$a;)V
    .locals 1

    .line 1319
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/e$a;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 1320
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->ap:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$d;->d:F

    .line 1321
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->as:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->b:F

    .line 1322
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->at:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->c:F

    .line 1323
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->au:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->d:F

    .line 1324
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->av:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->e:F

    .line 1325
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->aw:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->f:F

    .line 1326
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->ax:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->g:F

    .line 1327
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->ay:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->h:F

    .line 1328
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->az:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->i:F

    .line 1329
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->aA:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->j:F

    .line 1330
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->aB:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->k:F

    .line 1331
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v0, p2, Landroidx/constraintlayout/widget/f$a;->ar:F

    iput v0, p1, Landroidx/constraintlayout/widget/e$e;->m:F

    .line 1332
    iget-object p1, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-boolean p2, p2, Landroidx/constraintlayout/widget/f$a;->aq:Z

    iput-boolean p2, p1, Landroidx/constraintlayout/widget/e$e;->l:Z

    return-void
.end method

.method private a(Landroidx/constraintlayout/widget/c;ILandroidx/constraintlayout/widget/f$a;)V
    .locals 0

    .line 1308
    invoke-direct {p0, p2, p3}, Landroidx/constraintlayout/widget/e$a;->a(ILandroidx/constraintlayout/widget/f$a;)V

    .line 1309
    instance-of p2, p1, Landroidx/constraintlayout/widget/a;

    if-eqz p2, :cond_0

    .line 1310
    iget-object p2, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    const/4 p3, 0x1

    iput p3, p2, Landroidx/constraintlayout/widget/e$b;->ad:I

    .line 1311
    check-cast p1, Landroidx/constraintlayout/widget/a;

    .line 1312
    iget-object p2, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->getType()I

    move-result p3

    iput p3, p2, Landroidx/constraintlayout/widget/e$b;->ab:I

    .line 1313
    iget-object p2, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->getReferencedIds()[I

    move-result-object p3

    iput-object p3, p2, Landroidx/constraintlayout/widget/e$b;->ae:[I

    .line 1314
    iget-object p2, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/a;->getMargin()I

    move-result p1

    iput p1, p2, Landroidx/constraintlayout/widget/e$b;->ac:I

    :cond_0
    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/e$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/e$a;->a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/e$a;ILandroidx/constraintlayout/widget/f$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/e$a;->a(ILandroidx/constraintlayout/widget/f$a;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/e$a;Landroidx/constraintlayout/widget/c;ILandroidx/constraintlayout/widget/f$a;)V
    .locals 0

    .line 1256
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/c;ILandroidx/constraintlayout/widget/f$a;)V

    return-void
.end method


# virtual methods
.method public a()Landroidx/constraintlayout/widget/e$a;
    .locals 3

    .line 1297
    new-instance v0, Landroidx/constraintlayout/widget/e$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$a;-><init>()V

    .line 1298
    iget-object v1, v0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v2, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/e$b;->a(Landroidx/constraintlayout/widget/e$b;)V

    .line 1299
    iget-object v1, v0, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget-object v2, p0, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/e$c;->a(Landroidx/constraintlayout/widget/e$c;)V

    .line 1300
    iget-object v1, v0, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget-object v2, p0, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/e$d;->a(Landroidx/constraintlayout/widget/e$d;)V

    .line 1301
    iget-object v1, v0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v2, p0, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/e$e;->a(Landroidx/constraintlayout/widget/e$e;)V

    .line 1302
    iget v1, p0, Landroidx/constraintlayout/widget/e$a;->a:I

    iput v1, v0, Landroidx/constraintlayout/widget/e$a;->a:I

    return-object v0
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    .line 1401
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->h:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->d:I

    .line 1402
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->i:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->e:I

    .line 1403
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->j:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->f:I

    .line 1404
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->k:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->g:I

    .line 1406
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->l:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->h:I

    .line 1407
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->m:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->i:I

    .line 1408
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->n:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->j:I

    .line 1409
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->o:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 1411
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->p:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->l:I

    .line 1413
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->q:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    .line 1414
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->r:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->q:I

    .line 1415
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->s:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    .line 1416
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->t:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->s:I

    .line 1418
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->D:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->leftMargin:I

    .line 1419
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->E:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->rightMargin:I

    .line 1420
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->F:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->topMargin:I

    .line 1421
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->G:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->bottomMargin:I

    .line 1422
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->O:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->x:I

    .line 1423
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->N:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->y:I

    .line 1424
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->K:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->u:I

    .line 1425
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->M:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->w:I

    .line 1427
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->u:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->z:F

    .line 1428
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->v:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->A:F

    .line 1430
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->x:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->m:I

    .line 1431
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->y:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->n:I

    .line 1432
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->z:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->o:F

    .line 1434
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/e$b;->w:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->B:Ljava/lang/String;

    .line 1435
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->A:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    .line 1436
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->B:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->R:I

    .line 1437
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->P:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->F:F

    .line 1438
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->Q:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->E:F

    .line 1439
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->S:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->H:I

    .line 1440
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->R:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->G:I

    .line 1441
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/e$b;->ah:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->T:Z

    .line 1442
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v0, v0, Landroidx/constraintlayout/widget/e$b;->ai:Z

    iput-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->U:Z

    .line 1443
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->T:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:I

    .line 1444
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->U:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:I

    .line 1445
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->V:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:I

    .line 1446
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->W:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->N:I

    .line 1447
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->X:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    .line 1448
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->Y:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:I

    .line 1449
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->Z:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->O:F

    .line 1450
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->aa:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:F

    .line 1451
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->C:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->S:I

    .line 1452
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->g:F

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->c:F

    .line 1453
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->e:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a:I

    .line 1454
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->f:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->b:I

    .line 1455
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->c:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 1456
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->d:I

    iput v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 1457
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/e$b;->ag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1458
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v0, v0, Landroidx/constraintlayout/widget/e$b;->ag:Ljava/lang/String;

    iput-object v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:Ljava/lang/String;

    .line 1461
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_1

    .line 1462
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->I:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginStart(I)V

    .line 1463
    iget-object v0, p0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v0, v0, Landroidx/constraintlayout/widget/e$b;->H:I

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->setMarginEnd(I)V

    .line 1466
    :cond_1
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 1256
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/e$a;->a()Landroidx/constraintlayout/widget/e$a;

    move-result-object v0

    return-object v0
.end method
