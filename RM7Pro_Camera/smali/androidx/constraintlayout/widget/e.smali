.class public Landroidx/constraintlayout/widget/e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/e$a;,
        Landroidx/constraintlayout/widget/e$c;,
        Landroidx/constraintlayout/widget/e$d;,
        Landroidx/constraintlayout/widget/e$e;,
        Landroidx/constraintlayout/widget/e$b;
    }
.end annotation


# static fields
.field private static final c:[I

.field private static e:Landroid/util/SparseIntArray;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private d:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/e$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v1, v0, [I

    .line 220
    fill-array-data v1, :array_0

    sput-object v1, Landroidx/constraintlayout/widget/e;->c:[I

    .line 225
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    .line 311
    sget v2, Landroidx/constraintlayout/widget/j$b;->au:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->av:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->ax:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->ay:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->aE:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->aD:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->ac:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v1, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/j$b;->ab:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->Z:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aM:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aN:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aj:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ak:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->al:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->s:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->az:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aA:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 329
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ai:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ah:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aQ:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 332
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aT:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 333
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aR:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 334
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aO:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 335
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aS:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 336
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aP:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 337
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aH:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 338
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->as:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 339
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ar:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 340
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aG:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 342
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aq:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 343
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aF:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 344
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ag:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 345
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->at:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 346
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aC:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 347
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aw:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 348
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aa:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 349
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->Y:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 350
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->x:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 351
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->z:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 352
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->L:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 353
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->M:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 354
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->y:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 355
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->A:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->v:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->w:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->u:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->B:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->O:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->J:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->K:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 363
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->I:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 364
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->G:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 365
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->H:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->C:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->D:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->E:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->F:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->N:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aI:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 372
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->am:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 373
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aJ:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->an:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 375
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aK:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 376
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ao:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ad:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 378
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->af:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ae:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 380
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->P:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 381
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aX:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 382
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->V:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 383
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aY:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 384
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aV:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 385
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->t:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 386
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aU:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 387
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aL:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 388
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->ap:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 390
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->T:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 391
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->R:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 392
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->S:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 393
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->U:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->Q:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 395
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aW:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 396
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aB:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 397
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->aZ:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 398
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->X:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 399
    sget-object v0, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/j$b;->W:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e;->a:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 84
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/e;->b:Z

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 74
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;
    .locals 2

    .line 3417
    new-instance v0, Landroidx/constraintlayout/widget/e$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/e$a;-><init>()V

    .line 3418
    sget-object v1, Landroidx/constraintlayout/widget/j$b;->r:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 3419
    invoke-direct {p0, p1, v0, p2}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;Landroidx/constraintlayout/widget/e$a;Landroid/content/res/TypedArray;)V

    .line 3420
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private a(Landroid/content/Context;Landroidx/constraintlayout/widget/e$a;Landroid/content/res/TypedArray;)V
    .locals 10

    .line 3425
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_3

    .line 3427
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 3470
    sget v3, Landroidx/constraintlayout/widget/j$b;->t:I

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    sget v3, Landroidx/constraintlayout/widget/j$b;->L:I

    if-eq v3, v2, :cond_0

    sget v3, Landroidx/constraintlayout/widget/j$b;->M:I

    if-eq v3, v2, :cond_0

    .line 3473
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$c;->a:Z

    .line 3474
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$b;->b:Z

    .line 3475
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$d;->a:Z

    .line 3476
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$e;->a:Z

    .line 3478
    :cond_0
    sget-object v3, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    const-string v5, "   "

    const/high16 v6, 0x3f800000    # 1.0f

    const/16 v7, 0x15

    const/16 v8, 0x11

    const-string v9, "ConstraintSet"

    packed-switch v3, :pswitch_data_0

    .line 3743
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3744
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3743
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3739
    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unused attribute 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3740
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroidx/constraintlayout/widget/e;->e:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3739
    invoke-static {v9, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3619
    :pswitch_1
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/e$b;->ai:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/e$b;->ai:Z

    goto/16 :goto_1

    .line 3616
    :pswitch_2
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/e$b;->ah:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/e$b;->ah:Z

    goto/16 :goto_1

    .line 3714
    :pswitch_3
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget v4, v4, Landroidx/constraintlayout/widget/e$c;->f:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$c;->f:F

    goto/16 :goto_1

    .line 3626
    :pswitch_4
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v4, v4, Landroidx/constraintlayout/widget/e$d;->c:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$d;->c:I

    goto/16 :goto_1

    .line 3733
    :pswitch_5
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/e$b;->ag:Ljava/lang/String;

    goto/16 :goto_1

    .line 3708
    :pswitch_6
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget v4, v4, Landroidx/constraintlayout/widget/e$c;->d:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$c;->d:I

    goto/16 :goto_1

    .line 3736
    :pswitch_7
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/e$b;->aj:Z

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v3, Landroidx/constraintlayout/widget/e$b;->aj:Z

    goto/16 :goto_1

    .line 3730
    :pswitch_8
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/e$b;->af:Ljava/lang/String;

    goto/16 :goto_1

    .line 3727
    :pswitch_9
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->ac:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->ac:I

    goto/16 :goto_1

    .line 3724
    :pswitch_a
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->ab:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->ab:I

    goto/16 :goto_1

    :pswitch_b
    const-string v2, "CURRENTLY UNSUPPORTED"

    .line 3720
    invoke-static {v9, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 3691
    :pswitch_c
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->aa:F

    goto/16 :goto_1

    .line 3688
    :pswitch_d
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p3, v2, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->Z:F

    goto/16 :goto_1

    .line 3694
    :pswitch_e
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v4, v4, Landroidx/constraintlayout/widget/e$d;->e:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$d;->e:F

    goto/16 :goto_1

    .line 3711
    :pswitch_f
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget v4, v4, Landroidx/constraintlayout/widget/e$c;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$c;->g:F

    goto/16 :goto_1

    .line 3717
    :pswitch_10
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$c;->e:I

    goto/16 :goto_1

    .line 3700
    :pswitch_11
    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    .line 3701
    iget v3, v3, Landroid/util/TypedValue;->type:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 3702
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/e$c;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 3704
    :cond_1
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    sget-object v4, Landroidx/constraintlayout/a/a/a;->c:[Ljava/lang/String;

    invoke-virtual {p3, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    aget-object v2, v4, v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/e$c;->c:Ljava/lang/String;

    goto/16 :goto_1

    .line 3697
    :pswitch_12
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    iget v4, v4, Landroidx/constraintlayout/widget/e$c;->b:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$c;->b:I

    goto/16 :goto_1

    .line 3543
    :pswitch_13
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->z:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->z:F

    goto/16 :goto_1

    .line 3540
    :pswitch_14
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->y:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->y:I

    goto/16 :goto_1

    .line 3537
    :pswitch_15
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->x:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->x:I

    goto/16 :goto_1

    .line 3638
    :pswitch_16
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->b:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->b:F

    goto/16 :goto_1

    .line 3610
    :pswitch_17
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->Y:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->Y:I

    goto/16 :goto_1

    .line 3613
    :pswitch_18
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->X:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->X:I

    goto/16 :goto_1

    .line 3604
    :pswitch_19
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->W:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->W:I

    goto/16 :goto_1

    .line 3607
    :pswitch_1a
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->V:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->V:I

    goto/16 :goto_1

    .line 3601
    :pswitch_1b
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->U:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->U:I

    goto/16 :goto_1

    .line 3598
    :pswitch_1c
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->T:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->T:I

    goto/16 :goto_1

    .line 3665
    :pswitch_1d
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_2

    .line 3666
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->k:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->k:F

    goto/16 :goto_1

    .line 3662
    :pswitch_1e
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->j:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->j:F

    goto/16 :goto_1

    .line 3659
    :pswitch_1f
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->i:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->i:F

    goto/16 :goto_1

    .line 3656
    :pswitch_20
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->h:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->h:F

    goto/16 :goto_1

    .line 3653
    :pswitch_21
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->g:F

    goto/16 :goto_1

    .line 3650
    :pswitch_22
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->f:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->f:F

    goto/16 :goto_1

    .line 3647
    :pswitch_23
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->e:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->e:F

    goto/16 :goto_1

    .line 3644
    :pswitch_24
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->d:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->d:F

    goto/16 :goto_1

    .line 3641
    :pswitch_25
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->c:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->c:F

    goto/16 :goto_1

    .line 3632
    :pswitch_26
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v7, :cond_2

    .line 3633
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$e;->l:Z

    .line 3634
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v4, v4, Landroidx/constraintlayout/widget/e$e;->m:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$e;->m:F

    goto/16 :goto_1

    .line 3629
    :pswitch_27
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v4, v4, Landroidx/constraintlayout/widget/e$d;->d:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$d;->d:F

    goto/16 :goto_1

    .line 3676
    :pswitch_28
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->S:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->S:I

    goto/16 :goto_1

    .line 3679
    :pswitch_29
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->R:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->R:I

    goto/16 :goto_1

    .line 3670
    :pswitch_2a
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->P:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->P:F

    goto/16 :goto_1

    .line 3673
    :pswitch_2b
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->Q:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->Q:F

    goto/16 :goto_1

    .line 3682
    :pswitch_2c
    iget v3, p2, Landroidx/constraintlayout/widget/e$a;->a:I

    invoke-virtual {p3, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p2, Landroidx/constraintlayout/widget/e$a;->a:I

    goto/16 :goto_1

    .line 3567
    :pswitch_2d
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->v:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->v:F

    goto/16 :goto_1

    .line 3492
    :pswitch_2e
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->l:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->l:I

    goto/16 :goto_1

    .line 3495
    :pswitch_2f
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->m:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->m:I

    goto/16 :goto_1

    .line 3586
    :pswitch_30
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->F:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->F:I

    goto/16 :goto_1

    .line 3528
    :pswitch_31
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->r:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->r:I

    goto/16 :goto_1

    .line 3525
    :pswitch_32
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->q:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->q:I

    goto/16 :goto_1

    .line 3576
    :pswitch_33
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    .line 3577
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->I:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->I:I

    goto/16 :goto_1

    .line 3489
    :pswitch_34
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->k:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->k:I

    goto/16 :goto_1

    .line 3486
    :pswitch_35
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->j:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->j:I

    goto/16 :goto_1

    .line 3573
    :pswitch_36
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->E:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->E:I

    goto/16 :goto_1

    .line 3522
    :pswitch_37
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->C:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->C:I

    goto/16 :goto_1

    .line 3483
    :pswitch_38
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->i:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->i:I

    goto/16 :goto_1

    .line 3480
    :pswitch_39
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->h:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->h:I

    goto/16 :goto_1

    .line 3570
    :pswitch_3a
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->D:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->D:I

    goto/16 :goto_1

    .line 3592
    :pswitch_3b
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->c:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->c:I

    goto/16 :goto_1

    .line 3622
    :pswitch_3c
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v4, v4, Landroidx/constraintlayout/widget/e$d;->b:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$d;->b:I

    .line 3623
    iget-object v2, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    sget-object v3, Landroidx/constraintlayout/widget/e;->c:[I

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v4, v4, Landroidx/constraintlayout/widget/e$d;->b:I

    aget v3, v3, v4

    iput v3, v2, Landroidx/constraintlayout/widget/e$d;->b:I

    goto/16 :goto_1

    .line 3595
    :pswitch_3d
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->d:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->d:I

    goto/16 :goto_1

    .line 3564
    :pswitch_3e
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->u:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->u:F

    goto/16 :goto_1

    .line 3519
    :pswitch_3f
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->g:F

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->g:F

    goto/16 :goto_1

    .line 3516
    :pswitch_40
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->f:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->f:I

    goto/16 :goto_1

    .line 3513
    :pswitch_41
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->e:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->e:I

    goto/16 :goto_1

    .line 3549
    :pswitch_42
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->K:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->K:I

    goto/16 :goto_1

    .line 3558
    :pswitch_43
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->O:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->O:I

    goto/16 :goto_1

    .line 3552
    :pswitch_44
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->L:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->L:I

    goto/16 :goto_1

    .line 3546
    :pswitch_45
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->J:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->J:I

    goto/16 :goto_1

    .line 3561
    :pswitch_46
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->N:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->N:I

    goto/16 :goto_1

    .line 3555
    :pswitch_47
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->M:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->M:I

    goto/16 :goto_1

    .line 3531
    :pswitch_48
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->s:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->s:I

    goto/16 :goto_1

    .line 3534
    :pswitch_49
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->t:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->t:I

    goto :goto_1

    .line 3581
    :pswitch_4a
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v8, :cond_2

    .line 3582
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->H:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->H:I

    goto :goto_1

    .line 3510
    :pswitch_4b
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->B:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->B:I

    goto :goto_1

    .line 3507
    :pswitch_4c
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->A:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->A:I

    goto :goto_1

    .line 3685
    :pswitch_4d
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Landroidx/constraintlayout/widget/e$b;->w:Ljava/lang/String;

    goto :goto_1

    .line 3498
    :pswitch_4e
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->n:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->n:I

    goto :goto_1

    .line 3501
    :pswitch_4f
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->o:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->o:I

    goto :goto_1

    .line 3589
    :pswitch_50
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->G:I

    invoke-virtual {p3, v2, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->G:I

    goto :goto_1

    .line 3504
    :pswitch_51
    iget-object v3, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, p2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->p:I

    invoke-static {p3, v2, v4}, Landroidx/constraintlayout/widget/e;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->p:I

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic a()[I
    .locals 1

    .line 74
    sget-object v0, Landroidx/constraintlayout/widget/e;->c:[I

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    const-string v0, ","

    .line 3750
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 3751
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 3752
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 3754
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 3755
    aget-object v5, p2, v3

    .line 3756
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 3759
    :try_start_0
    const-class v6, Landroidx/constraintlayout/widget/j$a;

    .line 3760
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 3761
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_0

    .line 3766
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 3767
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 3766
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    .line 3770
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    .line 3771
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 3772
    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 3773
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 3774
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 3777
    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 3779
    :cond_2
    array-length p1, p2

    if-eq v4, p1, :cond_3

    .line 3780
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static b(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 3409
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 3411
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method


# virtual methods
.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 1478
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/e;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 3321
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_b

    if-eqz v0, :cond_9

    const-string v4, "Constraint"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_0

    goto/16 :goto_4

    .line 3388
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v3, "ConstraintSet"

    .line 3389
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-void

    .line 3391
    :cond_1
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3392
    iget-object v0, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    iget v3, v2, Landroidx/constraintlayout/widget/e$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_4

    .line 3330
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v7, -0x1

    .line 3334
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :sswitch_1
    const-string v4, "CustomAttribute"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x7

    goto :goto_2

    :sswitch_2
    const-string v4, "Barrier"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v6

    goto :goto_2

    :sswitch_3
    const-string v4, "Guideline"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v5, v3

    goto :goto_2

    :sswitch_4
    const-string v4, "Transform"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x4

    goto :goto_2

    :sswitch_5
    const-string v4, "PropertySet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :sswitch_6
    const-string v4, "Motion"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v5, 0x6

    goto :goto_2

    :sswitch_7
    const-string v4, "Layout"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_3

    const/4 v5, 0x5

    goto :goto_2

    :cond_3
    :goto_1
    move v5, v7

    :goto_2
    const-string v0, "XML parser error must be within a Constraint "

    packed-switch v5, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_4

    .line 3375
    :try_start_2
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->f:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    .line 3373
    :cond_4
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz v2, :cond_5

    .line 3369
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->c:Landroidx/constraintlayout/widget/e$c;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/e$c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 3367
    :cond_5
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz v2, :cond_6

    .line 3363
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/e$b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 3361
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz v2, :cond_7

    .line 3357
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/e$e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 3355
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-eqz v2, :cond_8

    .line 3351
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/e$d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 3349
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3344
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;

    move-result-object v0

    .line 3345
    iget-object v2, v0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput v3, v2, Landroidx/constraintlayout/widget/e$b;->ad:I

    goto :goto_3

    .line 3339
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;

    move-result-object v0

    .line 3340
    iget-object v2, v0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/e$b;->a:Z

    .line 3341
    iget-object v2, v0, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/e$b;->b:Z

    goto :goto_3

    .line 3336
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;

    move-result-object v0

    :goto_3
    move-object v2, v0

    goto :goto_4

    .line 3326
    :cond_9
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3323
    :cond_a
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 3404
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 3402
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_b
    :goto_5
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x78c018b6 -> :sswitch_7
        -0x7648542a -> :sswitch_6
        -0x4bab3dd3 -> :sswitch_5
        -0x49cf74b4 -> :sswitch_4
        -0x446d330 -> :sswitch_3
        0x4f5d3b97 -> :sswitch_2
        0x6acd460b -> :sswitch_1
        0x6b78f1fd -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    .line 1499
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1500
    iget-object v1, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_7

    .line 1502
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1503
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1505
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1506
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/e;->b:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1507
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1509
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1510
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/e$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/e$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/e$a;

    .line 1513
    iget-object v6, p0, Landroidx/constraintlayout/widget/e;->a:Ljava/util/HashMap;

    invoke-static {v6, v2}, Landroidx/constraintlayout/widget/b;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/e$a;->f:Ljava/util/HashMap;

    .line 1514
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/e$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 1515
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$d;->b:I

    .line 1516
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_5

    .line 1517
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$d;->d:F

    .line 1518
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->b:F

    .line 1519
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->c:F

    .line 1520
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->d:F

    .line 1521
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->e:F

    .line 1522
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->f:F

    .line 1524
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 1525
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_3

    float-to-double v6, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_4

    .line 1528
    :cond_3
    iget-object v6, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iput v3, v6, Landroidx/constraintlayout/widget/e$e;->g:F

    .line 1529
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->h:F

    .line 1532
    :cond_4
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->i:F

    .line 1533
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->j:F

    .line 1534
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_5

    .line 1535
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->k:F

    .line 1536
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/e$e;->l:Z

    if-eqz v3, :cond_5

    .line 1537
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$e;->m:F

    .line 1541
    :cond_5
    instance-of v3, v2, Landroidx/constraintlayout/widget/a;

    if-eqz v3, :cond_6

    .line 1542
    check-cast v2, Landroidx/constraintlayout/widget/a;

    .line 1543
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->a()Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/e$b;->aj:Z

    .line 1544
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/e$b;->ae:[I

    .line 1545
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->getType()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/e$b;->ab:I

    .line 1546
    iget-object v3, v5, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->getMargin()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/e$b;->ac:I

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method a(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .locals 10

    .line 1662
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 1663
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ge v2, v0, :cond_e

    .line 1666
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1667
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 1668
    iget-object v7, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ConstraintSet"

    if-nez v7, :cond_0

    .line 1669
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id unknown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v5}, Landroidx/constraintlayout/a/b/a;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 1673
    :cond_0
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/e;->b:Z

    if-eqz v7, :cond_2

    if-eq v6, v4, :cond_1

    goto :goto_1

    .line 1674
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v6, v4, :cond_3

    goto/16 :goto_3

    .line 1680
    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1681
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 1682
    iget-object v7, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/e$a;

    .line 1683
    instance-of v8, v5, Landroidx/constraintlayout/widget/a;

    if-eqz v8, :cond_4

    .line 1684
    iget-object v8, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput v3, v8, Landroidx/constraintlayout/widget/e$b;->ad:I

    .line 1686
    :cond_4
    iget-object v8, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v8, v8, Landroidx/constraintlayout/widget/e$b;->ad:I

    if-eq v8, v4, :cond_7

    .line 1687
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->ad:I

    if-eq v4, v3, :cond_5

    goto :goto_2

    .line 1689
    :cond_5
    move-object v3, v5

    check-cast v3, Landroidx/constraintlayout/widget/a;

    .line 1690
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/a;->setId(I)V

    .line 1691
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->ab:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setType(I)V

    .line 1692
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v4, v4, Landroidx/constraintlayout/widget/e$b;->ac:I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setMargin(I)V

    .line 1694
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/e$b;->aj:Z

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setAllowsGoneWidget(Z)V

    .line 1695
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/e$b;->ae:[I

    if-eqz v4, :cond_6

    .line 1696
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/e$b;->ae:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_2

    .line 1697
    :cond_6
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/e$b;->af:Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 1698
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v6, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/e$b;->af:Ljava/lang/String;

    invoke-direct {p0, v3, v6}, Landroidx/constraintlayout/widget/e;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v4, Landroidx/constraintlayout/widget/e$b;->ae:[I

    .line 1700
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/e$b;->ae:[I

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    .line 1706
    :cond_7
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 1707
    invoke-virtual {v3}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    .line 1708
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    if-eqz p2, :cond_8

    .line 1711
    iget-object v4, v7, Landroidx/constraintlayout/widget/e$a;->f:Ljava/util/HashMap;

    invoke-static {v5, v4}, Landroidx/constraintlayout/widget/b;->a(Landroid/view/View;Ljava/util/HashMap;)V

    .line 1713
    :cond_8
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1714
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v3, v3, Landroidx/constraintlayout/widget/e$d;->c:I

    if-nez v3, :cond_9

    .line 1715
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v3, v3, Landroidx/constraintlayout/widget/e$d;->b:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1717
    :cond_9
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_d

    .line 1718
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->b:Landroidx/constraintlayout/widget/e$d;

    iget v3, v3, Landroidx/constraintlayout/widget/e$d;->d:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 1719
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->b:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 1720
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->c:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 1721
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->d:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 1722
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->e:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 1723
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->f:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 1724
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->g:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1725
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->g:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1727
    :cond_a
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->h:F

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-nez v3, :cond_b

    .line 1728
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->h:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 1730
    :cond_b
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->i:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 1731
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->j:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 1732
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_d

    .line 1733
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->k:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 1734
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/e$e;->l:Z

    if-eqz v3, :cond_d

    .line 1735
    iget-object v3, v7, Landroidx/constraintlayout/widget/e$a;->e:Landroidx/constraintlayout/widget/e$e;

    iget v3, v3, Landroidx/constraintlayout/widget/e$e;->m:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    goto :goto_3

    .line 1740
    :cond_c
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1743
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1744
    iget-object v1, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/e$a;

    .line 1745
    iget-object v2, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v2, v2, Landroidx/constraintlayout/widget/e$b;->ad:I

    if-eq v2, v4, :cond_13

    .line 1746
    iget-object v2, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v2, v2, Landroidx/constraintlayout/widget/e$b;->ad:I

    if-eq v2, v3, :cond_10

    goto :goto_6

    .line 1748
    :cond_10
    new-instance v2, Landroidx/constraintlayout/widget/a;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/constraintlayout/widget/a;-><init>(Landroid/content/Context;)V

    .line 1749
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/a;->setId(I)V

    .line 1750
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/e$b;->ae:[I

    if-eqz v5, :cond_11

    .line 1751
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/e$b;->ae:[I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    goto :goto_5

    .line 1752
    :cond_11
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/e$b;->af:Ljava/lang/String;

    if-eqz v5, :cond_12

    .line 1753
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v6, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/e$b;->af:Ljava/lang/String;

    invoke-direct {p0, v2, v6}, Landroidx/constraintlayout/widget/e;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/e$b;->ae:[I

    .line 1755
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-object v5, v5, Landroidx/constraintlayout/widget/e$b;->ae:[I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/a;->setReferencedIds([I)V

    .line 1757
    :cond_12
    :goto_5
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v5, v5, Landroidx/constraintlayout/widget/e$b;->ab:I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/a;->setType(I)V

    .line 1758
    iget-object v5, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget v5, v5, Landroidx/constraintlayout/widget/e$b;->ac:I

    invoke-virtual {v2, v5}, Landroidx/constraintlayout/widget/a;->setMargin(I)V

    .line 1760
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v5

    .line 1761
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/a;->b()V

    .line 1762
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 1763
    invoke-virtual {p1, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1767
    :cond_13
    :goto_6
    iget-object v2, v1, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iget-boolean v2, v2, Landroidx/constraintlayout/widget/e$b;->a:Z

    if-eqz v2, :cond_f

    .line 1768
    new-instance v2, Landroidx/constraintlayout/widget/h;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/constraintlayout/widget/h;-><init>(Landroid/content/Context;)V

    .line 1769
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Landroidx/constraintlayout/widget/h;->setId(I)V

    .line 1770
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->b()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v0

    .line 1771
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 1772
    invoke-virtual {p1, v2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_4

    :cond_14
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/f;)V
    .locals 8

    .line 1557
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/f;->getChildCount()I

    move-result v0

    .line 1558
    iget-object v1, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1560
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/f;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1561
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/f$a;

    .line 1563
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 1564
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/e;->b:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 1565
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1567
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 1568
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/e$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/e$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1570
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/e$a;

    .line 1571
    instance-of v6, v2, Landroidx/constraintlayout/widget/c;

    if-eqz v6, :cond_3

    .line 1572
    check-cast v2, Landroidx/constraintlayout/widget/c;

    .line 1573
    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/e$a;Landroidx/constraintlayout/widget/c;ILandroidx/constraintlayout/widget/f$a;)V

    .line 1575
    :cond_3
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/e$a;->a(Landroidx/constraintlayout/widget/e$a;ILandroidx/constraintlayout/widget/f$a;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public b(Landroid/content/Context;I)V
    .locals 4

    .line 3276
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3277
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 3282
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 3290
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3291
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroidx/constraintlayout/widget/e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Landroidx/constraintlayout/widget/e$a;

    move-result-object v2

    const-string v3, "Guideline"

    .line 3292
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3293
    iget-object v0, v2, Landroidx/constraintlayout/widget/e$a;->d:Landroidx/constraintlayout/widget/e$b;

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/e$b;->a:Z

    .line 3295
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/e;->d:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/e$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 3287
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 3284
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3307
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3305
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method
