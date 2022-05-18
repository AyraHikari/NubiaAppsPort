.class public Landroidx/appcompat/widget/SearchView;
.super Landroidx/appcompat/widget/aj;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/view/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/SearchView$d;,
        Landroidx/appcompat/widget/SearchView$SearchAutoComplete;,
        Landroidx/appcompat/widget/SearchView$f;,
        Landroidx/appcompat/widget/SearchView$e;,
        Landroidx/appcompat/widget/SearchView$c;,
        Landroidx/appcompat/widget/SearchView$a;,
        Landroidx/appcompat/widget/SearchView$b;
    }
.end annotation


# static fields
.field static final i:Landroidx/appcompat/widget/SearchView$d;


# instance fields
.field private A:Landroidx/appcompat/widget/SearchView$b;

.field private B:Landroidx/appcompat/widget/SearchView$a;

.field private C:Landroidx/appcompat/widget/SearchView$c;

.field private D:Landroid/view/View$OnClickListener;

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:Ljava/lang/CharSequence;

.field private I:Z

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Ljava/lang/CharSequence;

.field private N:Ljava/lang/CharSequence;

.field private O:Z

.field private P:I

.field private Q:Landroid/os/Bundle;

.field private final R:Ljava/lang/Runnable;

.field private S:Ljava/lang/Runnable;

.field private final T:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final U:Landroid/view/View$OnClickListener;

.field private final V:Landroid/widget/TextView$OnEditorActionListener;

.field private final W:Landroid/widget/AdapterView$OnItemClickListener;

.field final a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field private final aa:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private ab:Landroid/text/TextWatcher;

.field final b:Landroid/widget/ImageView;

.field final c:Landroid/widget/ImageView;

.field final d:Landroid/widget/ImageView;

.field final e:Landroid/widget/ImageView;

.field f:Landroid/view/View$OnFocusChangeListener;

.field g:Landroidx/c/a/a;

.field h:Landroid/app/SearchableInfo;

.field j:Landroid/view/View$OnKeyListener;

.field private final k:Landroid/view/View;

.field private final l:Landroid/view/View;

.field private final m:Landroid/view/View;

.field private final n:Landroid/view/View;

.field private o:Landroidx/appcompat/widget/SearchView$f;

.field private p:Landroid/graphics/Rect;

.field private q:Landroid/graphics/Rect;

.field private r:[I

.field private s:[I

.field private final t:Landroid/widget/ImageView;

.field private final u:Landroid/graphics/drawable/Drawable;

.field private final v:I

.field private final w:I

.field private final x:Landroid/content/Intent;

.field private final y:Landroid/content/Intent;

.field private final z:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_0

    new-instance v0, Landroidx/appcompat/widget/SearchView$d;

    invoke-direct {v0}, Landroidx/appcompat/widget/SearchView$d;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 272
    invoke-direct {p0, p1, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 276
    sget v0, Landroidx/appcompat/a$a;->H:I

    invoke-direct {p0, p1, p2, v0}, Landroidx/appcompat/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 280
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/aj;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    .line 137
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 138
    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->r:[I

    new-array v1, v1, [I

    .line 139
    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->s:[I

    .line 183
    new-instance v1, Landroidx/appcompat/widget/SearchView$1;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$1;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    .line 190
    new-instance v1, Landroidx/appcompat/widget/SearchView$3;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$3;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    .line 201
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    .line 981
    new-instance v1, Landroidx/appcompat/widget/SearchView$6;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$6;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->U:Landroid/view/View$OnClickListener;

    .line 1003
    new-instance v2, Landroidx/appcompat/widget/SearchView$7;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$7;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->j:Landroid/view/View$OnKeyListener;

    .line 1166
    new-instance v2, Landroidx/appcompat/widget/SearchView$8;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$8;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v2, v0, Landroidx/appcompat/widget/SearchView;->V:Landroid/widget/TextView$OnEditorActionListener;

    .line 1412
    new-instance v3, Landroidx/appcompat/widget/SearchView$9;

    invoke-direct {v3, v0}, Landroidx/appcompat/widget/SearchView$9;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v3, v0, Landroidx/appcompat/widget/SearchView;->W:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1424
    new-instance v4, Landroidx/appcompat/widget/SearchView$10;

    invoke-direct {v4, v0}, Landroidx/appcompat/widget/SearchView$10;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v4, v0, Landroidx/appcompat/widget/SearchView;->aa:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1718
    new-instance v5, Landroidx/appcompat/widget/SearchView$2;

    invoke-direct {v5, v0}, Landroidx/appcompat/widget/SearchView$2;-><init>(Landroidx/appcompat/widget/SearchView;)V

    iput-object v5, v0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    .line 282
    sget-object v5, Landroidx/appcompat/a$j;->ci:[I

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v8, v5, v9, v6}, Landroidx/appcompat/widget/ax;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/appcompat/widget/ax;

    move-result-object v5

    .line 285
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 286
    sget v8, Landroidx/appcompat/a$j;->cs:I

    sget v9, Landroidx/appcompat/a$g;->s:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v8

    const/4 v9, 0x1

    .line 288
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 290
    sget v7, Landroidx/appcompat/a$f;->F:I

    invoke-virtual {v0, v7}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v7, v0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 291
    invoke-virtual {v7, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSearchView(Landroidx/appcompat/widget/SearchView;)V

    .line 293
    sget v8, Landroidx/appcompat/a$f;->B:I

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->k:Landroid/view/View;

    .line 294
    sget v8, Landroidx/appcompat/a$f;->E:I

    invoke-virtual {v0, v8}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    .line 295
    sget v10, Landroidx/appcompat/a$f;->L:I

    invoke-virtual {v0, v10}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    .line 296
    sget v11, Landroidx/appcompat/a$f;->z:I

    invoke-virtual {v0, v11}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    .line 297
    sget v12, Landroidx/appcompat/a$f;->C:I

    invoke-virtual {v0, v12}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 298
    sget v13, Landroidx/appcompat/a$f;->A:I

    invoke-virtual {v0, v13}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    .line 299
    sget v14, Landroidx/appcompat/a$f;->G:I

    invoke-virtual {v0, v14}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 300
    sget v15, Landroidx/appcompat/a$f;->D:I

    invoke-virtual {v0, v15}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    .line 303
    sget v9, Landroidx/appcompat/a$j;->ct:I

    .line 304
    invoke-virtual {v5, v9}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 303
    invoke-static {v8, v9}, Landroidx/core/f/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 305
    sget v8, Landroidx/appcompat/a$j;->cx:I

    .line 306
    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 305
    invoke-static {v10, v8}, Landroidx/core/f/u;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 307
    sget v8, Landroidx/appcompat/a$j;->cw:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v11, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 308
    sget v8, Landroidx/appcompat/a$j;->cq:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 309
    sget v8, Landroidx/appcompat/a$j;->cn:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v13, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 310
    sget v8, Landroidx/appcompat/a$j;->cz:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v14, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 311
    sget v8, Landroidx/appcompat/a$j;->cw:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 313
    sget v8, Landroidx/appcompat/a$j;->cv:I

    invoke-virtual {v5, v8}, Landroidx/appcompat/widget/ax;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Landroidx/appcompat/a$h;->n:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 315
    invoke-static {v11, v8}, Landroidx/appcompat/widget/az;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 319
    sget v8, Landroidx/appcompat/a$j;->cy:I

    sget v9, Landroidx/appcompat/a$g;->r:I

    invoke-virtual {v5, v8, v9}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v8

    iput v8, v0, Landroidx/appcompat/widget/SearchView;->v:I

    .line 321
    sget v8, Landroidx/appcompat/a$j;->co:I

    invoke-virtual {v5, v8, v6}, Landroidx/appcompat/widget/ax;->g(II)I

    move-result v6

    iput v6, v0, Landroidx/appcompat/widget/SearchView;->w:I

    .line 323
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 324
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 326
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 327
    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->ab:Landroid/text/TextWatcher;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 330
    invoke-virtual {v7, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 331
    invoke-virtual {v7, v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 332
    invoke-virtual {v7, v4}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 333
    iget-object v1, v0, Landroidx/appcompat/widget/SearchView;->j:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 336
    new-instance v1, Landroidx/appcompat/widget/SearchView$4;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$4;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v7, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 344
    sget v1, Landroidx/appcompat/a$j;->cr:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 346
    sget v1, Landroidx/appcompat/a$j;->ck:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ax;->e(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 348
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setMaxWidth(I)V

    .line 351
    :cond_0
    sget v1, Landroidx/appcompat/a$j;->cp:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->z:Ljava/lang/CharSequence;

    .line 352
    sget v1, Landroidx/appcompat/a$j;->cu:I

    invoke-virtual {v5, v1}, Landroidx/appcompat/widget/ax;->c(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 354
    sget v1, Landroidx/appcompat/a$j;->cm:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 356
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setImeOptions(I)V

    .line 359
    :cond_1
    sget v1, Landroidx/appcompat/a$j;->cl:I

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ax;->a(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 361
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setInputType(I)V

    .line 365
    :cond_2
    sget v1, Landroidx/appcompat/a$j;->cj:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroidx/appcompat/widget/ax;->a(IZ)Z

    move-result v1

    .line 366
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setFocusable(Z)V

    .line 368
    invoke-virtual {v5}, Landroidx/appcompat/widget/ax;->b()V

    .line 371
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 372
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 373
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 376
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    .line 377
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 379
    invoke-virtual {v7}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 381
    new-instance v2, Landroidx/appcompat/widget/SearchView$5;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/SearchView$5;-><init>(Landroidx/appcompat/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 390
    :cond_3
    iget-boolean v1, v0, Landroidx/appcompat/widget/SearchView;->E:Z

    invoke-direct {v0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 391
    invoke-direct/range {p0 .. p0}, Landroidx/appcompat/widget/SearchView;->r()V

    return-void
.end method

.method private a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1

    .line 1572
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1573
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1575
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    .line 1574
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1661
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1664
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 1671
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1673
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 1677
    invoke-static {p1, v3}, Landroidx/appcompat/widget/ar;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 1679
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 1682
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 1684
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 1685
    invoke-static {p1, v1}, Landroidx/appcompat/widget/ar;->a(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 1687
    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 1691
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 1695
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, " returned exception."

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1542
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 1543
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 1548
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1550
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 1552
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 1555
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1557
    :cond_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 1558
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 1561
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 1562
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    :cond_4
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method private a(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1505
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1507
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 856
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 857
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->getLocationInWindow([I)V

    .line 858
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->r:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->s:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    .line 859
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 860
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private a(Z)V
    .locals 5

    .line 874
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 878
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 880
    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->b:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 881
    invoke-direct {p0, v3}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    .line 882
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->k:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 885
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    .line 890
    :cond_3
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->t:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 892
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()V

    xor-int/lit8 p1, v3, 0x1

    .line 893
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 894
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()V

    return-void
.end method

.method static a(Landroid/content/Context;)Z
    .locals 1

    .line 1711
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .line 1587
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1592
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1593
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1594
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1601
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 1602
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    .line 1603
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1609
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 1617
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1618
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 1619
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "free_form"

    .line 1621
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 1622
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 1624
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 1625
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v7

    .line 1627
    :goto_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_4

    .line 1628
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 1631
    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    .line 1632
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    .line 1633
    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    .line 1634
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    .line 1636
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    .line 1635
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 1639
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 1640
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private b(Z)V
    .locals 1

    .line 920
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 924
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private b(IILjava/lang/String;)Z
    .locals 1

    .line 1482
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v0}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1483
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1485
    invoke-direct {p0, v0, p2, p3}, Landroidx/appcompat/widget/SearchView;->a(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1488
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1093
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 1098
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1100
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1101
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->u:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1102
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private c(Z)V
    .locals 2

    .line 1159
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 1161
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, p1

    .line 1163
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private e(I)V
    .locals 2

    .line 1449
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1450
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {v1}, Landroidx/c/a/a;->a()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 1454
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1456
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    invoke-virtual {p1, v1}, Landroidx/c/a/a;->b(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1460
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1463
    :cond_1
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1467
    :cond_2
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 869
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->g:I

    .line 870
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 864
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/appcompat/a$d;->h:I

    .line 865
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private m()Z
    .locals 4

    .line 898
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 900
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 901
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    goto :goto_0

    .line 902
    :cond_0
    iget-object v2, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 903
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 906
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private n()Z
    .locals 1

    .line 915
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private o()V
    .locals 2

    .line 929
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->c:Landroid/widget/ImageView;

    .line 930
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->e:Landroid/widget/ImageView;

    .line 931
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 934
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private p()V
    .locals 4

    .line 938
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 941
    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 942
    :cond_1
    :goto_0
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 943
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->d:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 945
    sget-object v0, Landroidx/appcompat/widget/SearchView;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private q()V
    .locals 1

    .line 950
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private r()V
    .locals 2

    .line 1107
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1108
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->c(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private s()V
    .locals 5

    .line 1115
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1116
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1117
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1124
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 1135
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    .line 1136
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 1137
    invoke-virtual {v0, v1}, Landroidx/c/a/a;->a(Landroid/database/Cursor;)V

    .line 1141
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1142
    new-instance v0, Landroidx/appcompat/widget/ar;

    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroidx/appcompat/widget/SearchView;->T:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroidx/appcompat/widget/ar;-><init>(Landroid/content/Context;Landroidx/appcompat/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    .line 1144
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1145
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    check-cast v0, Landroidx/appcompat/widget/ar;

    .line 1146
    iget-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 1145
    :cond_2
    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/ar;->a(I)V

    :cond_3
    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1515
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1517
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    return-void
.end method

.method private t()V
    .locals 1

    .line 1207
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->dismissDropDown()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1296
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 1298
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    .line 1299
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroidx/appcompat/widget/SearchView;->P:I

    .line 1300
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1301
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 1302
    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1522
    invoke-direct/range {v0 .. v6}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 1523
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method a(Ljava/lang/CharSequence;)V
    .locals 0

    .line 978
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public a(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 576
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 578
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 579
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 583
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 584
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->e()V

    :cond_1
    return-void
.end method

.method a(I)Z
    .locals 1

    .line 1404
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$c;

    if-eqz v0, :cond_1

    .line 1405
    invoke-interface {v0, p1}, Landroidx/appcompat/widget/SearchView$c;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 1406
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->e(I)V

    const/4 p1, 0x1

    return p1
.end method

.method a(IILjava/lang/String;)Z
    .locals 0

    .line 1393
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$c;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 1394
    invoke-interface {p2, p1}, Landroidx/appcompat/widget/SearchView$c;->b(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 1395
    invoke-direct {p0, p1, p3, p2}, Landroidx/appcompat/widget/SearchView;->b(IILjava/lang/String;)Z

    .line 1396
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p3}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1397
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    const/4 p1, 0x1

    return p1
.end method

.method a(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1048
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1051
    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    if-nez p1, :cond_1

    return v0

    .line 1054
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result p1

    if-eqz p1, :cond_7

    const/16 p1, 0x42

    if-eq p2, p1, :cond_6

    const/16 p1, 0x54

    if-eq p2, p1, :cond_6

    const/16 p1, 0x3d

    if-ne p2, p1, :cond_2

    goto :goto_2

    :cond_2
    const/16 p1, 0x15

    if-eq p2, p1, :cond_4

    const/16 p3, 0x16

    if-ne p2, p3, :cond_3

    goto :goto_0

    :cond_3
    const/16 p1, 0x13

    if-ne p2, p1, :cond_7

    .line 1081
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    .line 1071
    :cond_5
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->length()I

    move-result p1

    .line 1072
    :goto_1
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setSelection(I)V

    .line 1073
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setListSelection(I)V

    .line 1074
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearListSelection()V

    .line 1075
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->c()V

    const/4 p1, 0x1

    return p1

    .line 1059
    :cond_6
    :goto_2
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 1060
    invoke-virtual {p0, p1, v0, p2}, Landroidx/appcompat/widget/SearchView;->a(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method public b()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1284
    invoke-virtual {p0, v0, v1}, Landroidx/appcompat/widget/SearchView;->a(Ljava/lang/CharSequence;Z)V

    .line 1285
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 1286
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1287
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroidx/appcompat/widget/SearchView;->P:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1288
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->O:Z

    return-void
.end method

.method b(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1179
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1180
    iput-object v0, p0, Landroidx/appcompat/widget/SearchView;->N:Ljava/lang/CharSequence;

    .line 1181
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 1182
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->b(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 1183
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->c(Z)V

    .line 1184
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->p()V

    .line 1185
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->o()V

    .line 1186
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1187
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$b;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroidx/appcompat/widget/SearchView$b;->b(Ljava/lang/String;)Z

    .line 1189
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->M:Ljava/lang/CharSequence;

    return-void
.end method

.method public c()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->F:Z

    return v0
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 502
    iput-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    .line 503
    invoke-super {p0}, Landroidx/appcompat/widget/aj;->clearFocus()V

    .line 504
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->clearFocus()V

    .line 505
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 506
    iput-boolean v1, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    return-void
.end method

.method d()V
    .locals 2

    .line 954
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 955
    sget-object v0, Landroidx/appcompat/widget/SearchView;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->EMPTY_STATE_SET:[I

    .line 956
    :goto_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 958
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 960
    :cond_1
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->m:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 962
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 964
    :cond_2
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->invalidate()V

    return-void
.end method

.method e()V
    .locals 3

    .line 1193
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1194
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1195
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$b;

    if-eqz v1, :cond_0

    .line 1196
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroidx/appcompat/widget/SearchView$b;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1197
    :cond_0
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 1198
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Landroidx/appcompat/widget/SearchView;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 1200
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1201
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->t()V

    :cond_2
    return-void
.end method

.method f()V
    .locals 3

    .line 1211
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1212
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 1213
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v0, :cond_2

    .line 1215
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->B:Landroidx/appcompat/widget/SearchView$a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/appcompat/widget/SearchView$a;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 1219
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    goto :goto_0

    .line 1223
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1224
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1225
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method g()V
    .locals 2

    const/4 v0, 0x0

    .line 1231
    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1232
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus()Z

    .line 1233
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 1234
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1235
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 457
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 479
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 782
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 564
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 624
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 627
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 629
    :cond_1
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->z:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 399
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->w:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 395
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->v:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroidx/c/a/a;
    .locals 1

    .line 760
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    return-object v0
.end method

.method h()V
    .locals 2

    .line 1241
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 1246
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1247
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->x:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->a(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1249
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1250
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1251
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->y:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroidx/appcompat/widget/SearchView;->b(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1253
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 1258
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method i()V
    .locals 1

    .line 1263
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    invoke-direct {p0, v0}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1266
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    .line 1267
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1268
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->l()V

    :cond_0
    return-void
.end method

.method k()V
    .locals 6

    .line 1369
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 1370
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1371
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->l:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 1372
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 1373
    invoke-static {p0}, Landroidx/appcompat/widget/bd;->a(Landroid/view/View;)Z

    move-result v3

    .line 1374
    iget-boolean v4, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-eqz v4, :cond_0

    .line 1376
    sget v4, Landroidx/appcompat/a$d;->e:I

    .line 1375
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, Landroidx/appcompat/a$d;->f:I

    .line 1376
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 1378
    :goto_0
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    .line 1381
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_1

    .line 1383
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 1385
    :goto_1
    iget-object v3, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1386
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->n:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    .line 1388
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method

.method l()V
    .locals 2

    .line 1702
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    .line 1703
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->refreshAutoCompleteResults()V

    goto :goto_0

    .line 1705
    :cond_0
    sget-object v0, Landroidx/appcompat/widget/SearchView;->i:Landroidx/appcompat/widget/SearchView$d;

    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$d;->a(Landroid/widget/AutoCompleteTextView;)V

    .line 1706
    iget-object v1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView$d;->b(Landroid/widget/AutoCompleteTextView;)V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 969
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->R:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 970
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroidx/appcompat/widget/SearchView;->post(Ljava/lang/Runnable;)Z

    .line 971
    invoke-super {p0}, Landroidx/appcompat/widget/aj;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 837
    invoke-super/range {p0 .. p5}, Landroidx/appcompat/widget/aj;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 842
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/SearchView;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 843
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->left:I

    const/4 p4, 0x0

    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p2, p4, v0, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 845
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    if-nez p1, :cond_0

    .line 846
    new-instance p1, Landroidx/appcompat/widget/SearchView$f;

    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    iget-object p4, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroidx/appcompat/widget/SearchView$f;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->o:Landroidx/appcompat/widget/SearchView$f;

    .line 848
    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/SearchView;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 850
    :cond_0
    iget-object p2, p0, Landroidx/appcompat/widget/SearchView;->q:Landroid/graphics/Rect;

    iget-object p3, p0, Landroidx/appcompat/widget/SearchView;->p:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroidx/appcompat/widget/SearchView$f;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 788
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 789
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/aj;->onMeasure(II)V

    return-void

    .line 793
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 794
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 807
    :cond_1
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez v0, :cond_6

    .line 808
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 813
    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 799
    :cond_4
    iget v0, p0, Landroidx/appcompat/widget/SearchView;->K:I

    if-lez v0, :cond_5

    .line 800
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 802
    :cond_5
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 818
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 819
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 826
    :cond_7
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 823
    :cond_8
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 831
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 832
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 831
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/aj;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1358
    instance-of v0, p1, Landroidx/appcompat/widget/SearchView$e;

    if-nez v0, :cond_0

    .line 1359
    invoke-super {p0, p1}, Landroidx/appcompat/widget/aj;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 1362
    :cond_0
    check-cast p1, Landroidx/appcompat/widget/SearchView$e;

    .line 1363
    invoke-virtual {p1}, Landroidx/appcompat/widget/SearchView$e;->a()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroidx/appcompat/widget/aj;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1364
    iget-boolean p1, p1, Landroidx/appcompat/widget/SearchView$e;->a:Z

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 1365
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1350
    invoke-super {p0}, Landroidx/appcompat/widget/aj;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1351
    new-instance v1, Landroidx/appcompat/widget/SearchView$e;

    invoke-direct {v1, v0}, Landroidx/appcompat/widget/SearchView$e;-><init>(Landroid/os/Parcelable;)V

    .line 1352
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    iput-boolean v0, v1, Landroidx/appcompat/widget/SearchView$e;->a:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1274
    invoke-super {p0, p1}, Landroidx/appcompat/widget/aj;->onWindowFocusChanged(Z)V

    .line 1276
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->q()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 485
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->J:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 489
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result v0

    if-nez v0, :cond_3

    .line 490
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 492
    invoke-direct {p0, v1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    :cond_2
    return p1

    .line 496
    :cond_3
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/aj;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 434
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->Q:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 675
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->f()V

    goto :goto_0

    .line 677
    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->g()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 647
    iget-boolean v0, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 648
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->E:Z

    .line 649
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    .line 650
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 469
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 769
    iput p1, p0, Landroidx/appcompat/widget/SearchView;->K:I

    .line 771
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroidx/appcompat/widget/SearchView$a;)V
    .locals 0

    .line 525
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->B:Landroidx/appcompat/widget/SearchView$a;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 534
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->f:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$b;)V
    .locals 0

    .line 516
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->A:Landroidx/appcompat/widget/SearchView$b;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 555
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->D:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroidx/appcompat/widget/SearchView$c;)V
    .locals 0

    .line 543
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->C:Landroidx/appcompat/widget/SearchView$c;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 599
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->H:Ljava/lang/CharSequence;

    .line 600
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 728
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->I:Z

    .line 729
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    instance-of v1, v0, Landroidx/appcompat/widget/ar;

    if-eqz v1, :cond_1

    .line 730
    check-cast v0, Landroidx/appcompat/widget/ar;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/ar;->a(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1

    .line 411
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->h:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_0

    .line 413
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->s()V

    .line 414
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->r()V

    .line 417
    :cond_0
    invoke-direct {p0}, Landroidx/appcompat/widget/SearchView;->m()Z

    move-result p1

    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->L:Z

    if-eqz p1, :cond_1

    .line 422
    iget-object p1, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 424
    :cond_1
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 700
    iput-boolean p1, p0, Landroidx/appcompat/widget/SearchView;->G:Z

    .line 701
    invoke-virtual {p0}, Landroidx/appcompat/widget/SearchView;->c()Z

    move-result p1

    invoke-direct {p0, p1}, Landroidx/appcompat/widget/SearchView;->a(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroidx/c/a/a;)V
    .locals 1

    .line 750
    iput-object p1, p0, Landroidx/appcompat/widget/SearchView;->g:Landroidx/c/a/a;

    .line 752
    iget-object v0, p0, Landroidx/appcompat/widget/SearchView;->a:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
