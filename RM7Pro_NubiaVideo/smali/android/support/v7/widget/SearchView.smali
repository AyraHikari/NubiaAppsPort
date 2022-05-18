.class public Landroid/support/v7/widget/SearchView;
.super Landroid/support/v7/widget/z;
.source "SourceFile"

# interfaces
.implements La/b/d/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/widget/SearchView$k;,
        Landroid/support/v7/widget/SearchView$SearchAutoComplete;,
        Landroid/support/v7/widget/SearchView$p;,
        Landroid/support/v7/widget/SearchView$o;,
        Landroid/support/v7/widget/SearchView$n;,
        Landroid/support/v7/widget/SearchView$l;,
        Landroid/support/v7/widget/SearchView$m;
    }
.end annotation


# static fields
.field static final q0:Landroid/support/v7/widget/SearchView$k;


# instance fields
.field private A:Landroid/graphics/Rect;

.field private B:[I

.field private C:[I

.field private final D:Landroid/widget/ImageView;

.field private final E:Landroid/graphics/drawable/Drawable;

.field private final F:I

.field private final G:I

.field private final H:Landroid/content/Intent;

.field private final I:Landroid/content/Intent;

.field private final J:Ljava/lang/CharSequence;

.field private K:Landroid/support/v7/widget/SearchView$m;

.field private L:Landroid/support/v7/widget/SearchView$l;

.field M:Landroid/view/View$OnFocusChangeListener;

.field private N:Landroid/support/v7/widget/SearchView$n;

.field private O:Landroid/view/View$OnClickListener;

.field private P:Z

.field private Q:Z

.field R:Landroid/support/v4/widget/CursorAdapter;

.field private S:Z

.field private T:Ljava/lang/CharSequence;

.field private U:Z

.field private V:Z

.field private W:I

.field private a0:Z

.field private b0:Ljava/lang/CharSequence;

.field private c0:Ljava/lang/CharSequence;

.field private d0:Z

.field private e0:I

.field f0:Landroid/app/SearchableInfo;

.field private g0:Landroid/os/Bundle;

.field private final h0:Ljava/lang/Runnable;

.field private i0:Ljava/lang/Runnable;

.field private final j0:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private final k0:Landroid/view/View$OnClickListener;

.field l0:Landroid/view/View$OnKeyListener;

.field private final m0:Landroid/widget/TextView$OnEditorActionListener;

.field private final n0:Landroid/widget/AdapterView$OnItemClickListener;

.field private final o0:Landroid/widget/AdapterView$OnItemSelectedListener;

.field final p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

.field private p0:Landroid/text/TextWatcher;

.field private final q:Landroid/view/View;

.field private final r:Landroid/view/View;

.field private final s:Landroid/view/View;

.field final t:Landroid/widget/ImageView;

.field final u:Landroid/widget/ImageView;

.field final v:Landroid/widget/ImageView;

.field final w:Landroid/widget/ImageView;

.field private final x:Landroid/view/View;

.field private y:Landroid/support/v7/widget/SearchView$p;

.field private z:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/support/v7/widget/SearchView$k;

    invoke-direct {v0}, Landroid/support/v7/widget/SearchView$k;-><init>()V

    sput-object v0, Landroid/support/v7/widget/SearchView;->q0:Landroid/support/v7/widget/SearchView$k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 2
    sget v0, La/b/d/a/a;->s:I

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/widget/SearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 16

    move-object/from16 v0, p0

    .line 3
    invoke-direct/range {p0 .. p3}, Landroid/support/v7/widget/z;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 6
    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->B:[I

    new-array v1, v1, [I

    .line 7
    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->C:[I

    .line 8
    new-instance v1, Landroid/support/v7/widget/SearchView$b;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$b;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->h0:Ljava/lang/Runnable;

    .line 9
    new-instance v1, Landroid/support/v7/widget/SearchView$c;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$c;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->i0:Ljava/lang/Runnable;

    .line 10
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->j0:Ljava/util/WeakHashMap;

    .line 11
    new-instance v1, Landroid/support/v7/widget/SearchView$f;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$f;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->k0:Landroid/view/View$OnClickListener;

    .line 12
    new-instance v2, Landroid/support/v7/widget/SearchView$g;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$g;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->l0:Landroid/view/View$OnKeyListener;

    .line 13
    new-instance v2, Landroid/support/v7/widget/SearchView$h;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$h;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v2, v0, Landroid/support/v7/widget/SearchView;->m0:Landroid/widget/TextView$OnEditorActionListener;

    .line 14
    new-instance v3, Landroid/support/v7/widget/SearchView$i;

    invoke-direct {v3, v0}, Landroid/support/v7/widget/SearchView$i;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v3, v0, Landroid/support/v7/widget/SearchView;->n0:Landroid/widget/AdapterView$OnItemClickListener;

    .line 15
    new-instance v4, Landroid/support/v7/widget/SearchView$j;

    invoke-direct {v4, v0}, Landroid/support/v7/widget/SearchView$j;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v4, v0, Landroid/support/v7/widget/SearchView;->o0:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 16
    new-instance v5, Landroid/support/v7/widget/SearchView$a;

    invoke-direct {v5, v0}, Landroid/support/v7/widget/SearchView$a;-><init>(Landroid/support/v7/widget/SearchView;)V

    iput-object v5, v0, Landroid/support/v7/widget/SearchView;->p0:Landroid/text/TextWatcher;

    .line 17
    sget-object v5, La/b/d/a/j;->t1:[I

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move/from16 v9, p3

    invoke-static {v7, v8, v5, v9, v6}, Landroid/support/v7/widget/r0;->s(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/r0;

    move-result-object v5

    .line 18
    invoke-static/range {p1 .. p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    .line 19
    sget v8, La/b/d/a/j;->D1:I

    sget v9, La/b/d/a/g;->l:I

    invoke-virtual {v5, v8, v9}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v8

    const/4 v9, 0x1

    .line 20
    invoke-virtual {v7, v8, v0, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 21
    sget v7, La/b/d/a/f;->t:I

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iput-object v7, v0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 22
    invoke-virtual {v7, v0}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setSearchView(Landroid/support/v7/widget/SearchView;)V

    .line 23
    sget v8, La/b/d/a/f;->p:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    .line 24
    sget v8, La/b/d/a/f;->s:I

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View;

    .line 25
    sget v10, La/b/d/a/f;->z:I

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iput-object v10, v0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    .line 26
    sget v11, La/b/d/a/f;->n:I

    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    iput-object v11, v0, Landroid/support/v7/widget/SearchView;->t:Landroid/widget/ImageView;

    .line 27
    sget v12, La/b/d/a/f;->q:I

    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    iput-object v12, v0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    .line 28
    sget v13, La/b/d/a/f;->o:I

    invoke-virtual {v0, v13}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/ImageView;

    iput-object v13, v0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    .line 29
    sget v14, La/b/d/a/f;->u:I

    invoke-virtual {v0, v14}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageView;

    iput-object v14, v0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    .line 30
    sget v15, La/b/d/a/f;->r:I

    invoke-virtual {v0, v15}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    iput-object v15, v0, Landroid/support/v7/widget/SearchView;->D:Landroid/widget/ImageView;

    .line 31
    sget v9, La/b/d/a/j;->E1:I

    .line 32
    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    .line 33
    invoke-static {v8, v9}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 34
    sget v8, La/b/d/a/j;->I1:I

    .line 35
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 36
    invoke-static {v10, v8}, Landroid/support/v4/view/ViewCompat;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 37
    sget v8, La/b/d/a/j;->H1:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v11, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 38
    sget v9, La/b/d/a/j;->B1:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v12, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 39
    sget v9, La/b/d/a/j;->y1:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v13, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 40
    sget v9, La/b/d/a/j;->K1:I

    invoke-virtual {v5, v9}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v14, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 41
    invoke-virtual {v5, v8}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v15, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 42
    sget v8, La/b/d/a/j;->G1:I

    invoke-virtual {v5, v8}, Landroid/support/v7/widget/r0;->f(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    iput-object v8, v0, Landroid/support/v7/widget/SearchView;->E:Landroid/graphics/drawable/Drawable;

    .line 43
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, La/b/d/a/h;->l:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 44
    invoke-static {v11, v8}, Landroid/support/v7/widget/t0;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 45
    sget v8, La/b/d/a/j;->J1:I

    sget v9, La/b/d/a/g;->k:I

    invoke-virtual {v5, v8, v9}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v8

    iput v8, v0, Landroid/support/v7/widget/SearchView;->F:I

    .line 46
    sget v8, La/b/d/a/j;->z1:I

    invoke-virtual {v5, v8, v6}, Landroid/support/v7/widget/r0;->l(II)I

    move-result v6

    iput v6, v0, Landroid/support/v7/widget/SearchView;->G:I

    .line 47
    invoke-virtual {v11, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {v13, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    invoke-virtual {v12, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    invoke-virtual {v14, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    invoke-virtual {v7, v1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->p0:Landroid/text/TextWatcher;

    invoke-virtual {v7, v1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 53
    invoke-virtual {v7, v2}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 54
    invoke-virtual {v7, v3}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 55
    invoke-virtual {v7, v4}, Landroid/widget/AutoCompleteTextView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 56
    iget-object v1, v0, Landroid/support/v7/widget/SearchView;->l0:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v1}, Landroid/widget/AutoCompleteTextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 57
    new-instance v1, Landroid/support/v7/widget/SearchView$d;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$d;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v7, v1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 58
    sget v1, La/b/d/a/j;->C1:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 59
    sget v1, La/b/d/a/j;->v1:I

    const/4 v2, -0x1

    invoke-virtual {v5, v1, v2}, Landroid/support/v7/widget/r0;->e(II)I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 60
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setMaxWidth(I)V

    .line 61
    :cond_0
    sget v1, La/b/d/a/j;->A1:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/CharSequence;

    .line 62
    sget v1, La/b/d/a/j;->F1:I

    invoke-virtual {v5, v1}, Landroid/support/v7/widget/r0;->n(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->T:Ljava/lang/CharSequence;

    .line 63
    sget v1, La/b/d/a/j;->x1:I

    invoke-virtual {v5, v1, v2}, Landroid/support/v7/widget/r0;->i(II)I

    move-result v1

    if-eq v1, v2, :cond_1

    .line 64
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setImeOptions(I)V

    .line 65
    :cond_1
    sget v1, La/b/d/a/j;->w1:I

    invoke-virtual {v5, v1, v2}, Landroid/support/v7/widget/r0;->i(II)I

    move-result v1

    if-eq v1, v2, :cond_2

    .line 66
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView;->setInputType(I)V

    .line 67
    :cond_2
    sget v1, La/b/d/a/j;->u1:I

    const/4 v2, 0x1

    invoke-virtual {v5, v1, v2}, Landroid/support/v7/widget/r0;->a(IZ)Z

    move-result v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 69
    invoke-virtual {v5}, Landroid/support/v7/widget/r0;->t()V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.speech.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 71
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.speech.extra.LANGUAGE_MODEL"

    const-string v4, "web_search"

    .line 72
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 75
    invoke-virtual {v7}, Landroid/widget/AutoCompleteTextView;->getDropDownAnchor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Landroid/support/v7/widget/SearchView;->x:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 76
    new-instance v2, Landroid/support/v7/widget/SearchView$e;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/SearchView$e;-><init>(Landroid/support/v7/widget/SearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 77
    :cond_3
    iget-boolean v1, v0, Landroid/support/v7/widget/SearchView;->P:Z

    invoke-direct {v0, v1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 78
    invoke-direct/range {p0 .. p0}, Landroid/support/v7/widget/SearchView;->d0()V

    return-void
.end method

.method private A(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "suggest_intent_action"

    .line 1
    invoke-static {p1, v1}, Landroid/support/v7/widget/l0;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SEARCH"

    :cond_1
    move-object v2, v1

    const-string v1, "suggest_intent_data"

    .line 3
    invoke-static {p1, v1}, Landroid/support/v7/widget/l0;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_3

    const-string v3, "suggest_intent_data_id"

    .line 5
    invoke-static {p1, v3}, Landroid/support/v7/widget/l0;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    move-object v3, v0

    goto :goto_0

    .line 7
    :cond_4
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v1

    :goto_0
    const-string v1, "suggest_intent_query"

    .line 8
    invoke-static {p1, v1}, Landroid/support/v7/widget/l0;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v1, "suggest_intent_extra_data"

    .line 9
    invoke-static {p1, v1}, Landroid/support/v7/widget/l0;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, p0

    move v6, p2

    move-object v7, p3

    .line 10
    invoke-direct/range {v1 .. v7}, Landroid/support/v7/widget/SearchView;->z(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 11
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const/4 p1, -0x1

    .line 12
    :goto_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Search suggestions cursor at row "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " returned exception."

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "SearchView"

    invoke-static {p3, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method

.method private B(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 9

    .line 1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 5
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 6
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/os/Bundle;

    if-eqz v3, :cond_0

    const-string v4, "app_data"

    .line 7
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 8
    :cond_0
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 10
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    if-eqz v5, :cond_1

    .line 11
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_1
    const-string v5, "free_form"

    .line 12
    :goto_0
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    .line 13
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v7

    .line 14
    :goto_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    if-eqz v8, :cond_3

    .line 15
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_3
    move-object v4, v7

    .line 16
    :goto_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v8

    if-eqz v8, :cond_4

    .line 17
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result p1

    :cond_4
    const-string p2, "android.speech.extra.LANGUAGE_MODEL"

    .line 18
    invoke-virtual {v3, p2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.PROMPT"

    .line 19
    invoke-virtual {v3, p2, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.LANGUAGE"

    .line 20
    invoke-virtual {v3, p2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p2, "android.speech.extra.MAX_RESULTS"

    .line 21
    invoke-virtual {v3, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez v0, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v7

    :goto_3
    const-string p1, "calling_package"

    .line 23
    invoke-virtual {v3, p1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT"

    .line 24
    invoke-virtual {v3, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    .line 25
    invoke-virtual {v3, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    return-object v3
.end method

.method private C(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "calling_package"

    .line 4
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method private D()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    return-void
.end method

.method private F(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:[I

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->C:[I

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getLocationInWindow([I)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->B:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->C:[I

    aget v1, v3, v1

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    .line 4
    aget v0, v0, v1

    aget v1, v3, v1

    sub-int/2addr v0, v1

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr p1, v2

    invoke-virtual {p2, v0, v2, v1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method private G(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getTextSize()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 4
    new-instance v0, Landroid/text/SpannableStringBuilder;

    const-string v1, "   "

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 5
    new-instance v1, Landroid/text/style/ImageSpan;

    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->E:Landroid/graphics/drawable/Drawable;

    invoke-direct {v1, v2}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/16 v4, 0x21

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 6
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method private H()Z
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 2
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

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

.method static J(Landroid/content/Context;)Z
    .locals 1

    .line 1
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

.method private K()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->S:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->a0:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private L(Landroid/content/Intent;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed launch activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchView"

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private N(IILjava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0, v0, p2, p3}, Landroid/support/v7/widget/SearchView;->A(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->L(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private Z(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v4/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 5
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_2
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private b0()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Landroid/support/v7/widget/SearchView;->d0:Z

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    .line 3
    :cond_1
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->v:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_4

    if-eqz v0, :cond_3

    .line 5
    sget-object v0, Landroid/view/ViewGroup;->ENABLED_STATE_SET:[I

    goto :goto_2

    :cond_3
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_4
    return-void
.end method

.method private d0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->getQueryHint()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->G(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private e0()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setThreshold(I)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    and-int/lit8 v1, v0, 0xf

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const v1, -0x10001

    and-int/2addr v0, v1

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    const/high16 v1, 0x80000

    or-int/2addr v0, v1

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Landroid/support/v4/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    new-instance v0, Landroid/support/v7/widget/l0;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->j0:Ljava/util/WeakHashMap;

    invoke-direct {v0, v1, p0, v3, v4}, Landroid/support/v7/widget/l0;-><init>(Landroid/content/Context;Landroid/support/v7/widget/SearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    .line 10
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 11
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Landroid/support/v7/widget/l0;

    iget-boolean v1, p0, Landroid/support/v7/widget/SearchView;->U:Z

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/l0;->n(I)V

    :cond_3
    return-void
.end method

.method private f0()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    .line 4
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private g0(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->S:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->K()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->a0:Z

    if-nez p1, :cond_1

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 2
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/b/d/a/d;->g:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, La/b/d/a/d;->h:I

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private h0(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 2
    :goto_0
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 3
    iget-object v4, p0, Landroid/support/v7/widget/SearchView;->t:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-direct {p0, v3}, Landroid/support/v7/widget/SearchView;->g0(Z)V

    .line 5
    iget-object v2, p0, Landroid/support/v7/widget/SearchView;->q:Landroid/view/View;

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    invoke-virtual {v2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    .line 7
    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->D:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->b0()V

    xor-int/lit8 p1, v3, 0x1

    .line 9
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->i0(Z)V

    .line 10
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f0()V

    return-void
.end method

.method private i0(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->a0:Z

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->u:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v1, p1

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->w:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    return-void
.end method

.method private z(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 p1, 0x10000000

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Ljava/lang/CharSequence;

    const-string p2, "user_query"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    const-string p1, "query"

    .line 5
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    if-eqz p3, :cond_2

    const-string p1, "intent_extra_data_key"

    .line 6
    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    :cond_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/os/Bundle;

    if-eqz p1, :cond_3

    const-string p2, "app_data"

    .line 8
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_3
    if-eqz p5, :cond_4

    const-string p1, "action_key"

    .line 9
    invoke-virtual {v0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "action_msg"

    .line 10
    invoke-virtual {v0, p1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {p1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method


# virtual methods
.method E()V
    .locals 2

    .line 1
    sget-object v0, Landroid/support/v7/widget/SearchView;->q0:Landroid/support/v7/widget/SearchView$k;

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$k;->b(Landroid/widget/AutoCompleteTextView;)V

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$k;->a(Landroid/widget/AutoCompleteTextView;)V

    return-void
.end method

.method public I()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->Q:Z

    return v0
.end method

.method M(ILjava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v1, "android.intent.action.SEARCH"

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Landroid/support/v7/widget/SearchView;->z(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method O()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$l;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/support/v7/widget/SearchView$l;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    .line 6
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method P(IILjava/lang/String;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/support/v7/widget/SearchView$n;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 2
    invoke-interface {p2, p1}, Landroid/support/v7/widget/SearchView$n;->b(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    return p3

    :cond_1
    :goto_0
    const/4 p2, 0x0

    .line 3
    invoke-direct {p0, p1, p3, p2}, Landroid/support/v7/widget/SearchView;->N(IILjava/lang/String;)Z

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, p3}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 5
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->D()V

    const/4 p1, 0x1

    return p1
.end method

.method Q(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/support/v7/widget/SearchView$n;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0, p1}, Landroid/support/v7/widget/SearchView$n;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->Z(I)V

    const/4 p1, 0x1

    return p1
.end method

.method R(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->setQuery(Ljava/lang/CharSequence;)V

    return-void
.end method

.method S()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method T()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$m;

    if-eqz v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/support/v7/widget/SearchView$m;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 6
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v1, v0}, Landroid/support/v7/widget/SearchView;->M(ILjava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 8
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->D()V

    :cond_2
    return-void
.end method

.method U(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    if-nez p1, :cond_1

    return v0

    .line 3
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

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    if-nez p1, :cond_7

    return v0

    :cond_4
    :goto_0
    if-ne p2, p1, :cond_5

    move p1, v0

    goto :goto_1

    .line 5
    :cond_5
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    .line 6
    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result p1

    .line 7
    :goto_1
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p2, p1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 8
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setListSelection(I)V

    .line 9
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->clearListSelection()V

    .line 10
    sget-object p1, Landroid/support/v7/widget/SearchView;->q0:Landroid/support/v7/widget/SearchView$k;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$k;->c(Landroid/widget/AutoCompleteTextView;Z)V

    return p3

    .line 11
    :cond_6
    :goto_2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {p1}, Landroid/widget/AutoCompleteTextView;->getListSelection()I

    move-result p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v7/widget/SearchView;->P(IILjava/lang/String;)Z

    move-result p1

    return p1

    :cond_7
    return v0
.end method

.method V(Ljava/lang/CharSequence;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 2
    iput-object v0, p0, Landroid/support/v7/widget/SearchView;->c0:Ljava/lang/CharSequence;

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->g0(Z)V

    xor-int/lit8 v0, v0, 0x1

    .line 5
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->i0(Z)V

    .line 6
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->b0()V

    .line 7
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->f0()V

    .line 8
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$m;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->b0:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$m;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/support/v7/widget/SearchView$m;->a(Ljava/lang/String;)Z

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->b0:Ljava/lang/CharSequence;

    return-void
.end method

.method W()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->Y()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->E()V

    :cond_0
    return-void
.end method

.method X()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->H:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->C(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->I:Landroid/content/Intent;

    invoke-direct {p0, v1, v0}, Landroid/support/v7/widget/SearchView;->B(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "SearchView"

    const-string v1, "Could not find voice search activity"

    .line 8
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public a0(Ljava/lang/CharSequence;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setSelection(I)V

    .line 3
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->c0:Ljava/lang/CharSequence;

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->T()V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->d0:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->d0:Z

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SearchView;->e0:I

    .line 4
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/high16 v2, 0x2000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SearchView;->setIconified(Z)V

    return-void
.end method

.method public c()V
    .locals 3

    const-string v0, ""

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/SearchView;->a0(Ljava/lang/CharSequence;Z)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->clearFocus()V

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget v2, p0, Landroid/support/v7/widget/SearchView;->e0:I

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    .line 5
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->d0:Z

    return-void
.end method

.method c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Landroid/view/ViewGroup;->FOCUSED_STATE_SET:[I

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/view/ViewGroup;->EMPTY_STATE_SET:[I

    .line 3
    :goto_0
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 5
    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->s:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 6
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 7
    :cond_2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    return-void
.end method

.method public clearFocus()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Landroid/support/v7/widget/SearchView;->V:Z

    .line 2
    invoke-super {p0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->clearFocus()V

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SearchView$SearchAutoComplete;->setImeVisibility(Z)V

    .line 5
    iput-boolean v1, p0, Landroid/support/v7/widget/SearchView;->V:Z

    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->W:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->T:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->J:Ljava/lang/CharSequence;

    :goto_0
    return-object v0
.end method

.method getSuggestionCommitIconResId()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->G:I

    return v0
.end method

.method getSuggestionRowLayout()I
    .locals 1

    .line 1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->F:I

    return v0
.end method

.method public getSuggestionsAdapter()Landroid/support/v4/widget/CursorAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->h0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->i0:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 3
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/z;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SearchView;->F(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    iget p4, p2, Landroid/graphics/Rect;->left:I

    const/4 v0, 0x0

    iget p2, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    invoke-virtual {p1, p4, v0, p2, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/support/v7/widget/SearchView$p;

    if-nez p1, :cond_0

    .line 5
    new-instance p1, Landroid/support/v7/widget/SearchView$p;

    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    iget-object p4, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-direct {p1, p2, p3, p4}, Landroid/support/v7/widget/SearchView$p;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->y:Landroid/support/v7/widget/SearchView$p;

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p2, p0, Landroid/support/v7/widget/SearchView;->A:Landroid/graphics/Rect;

    iget-object p3, p0, Landroid/support/v7/widget/SearchView;->z:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3}, Landroid/support/v7/widget/SearchView$p;->a(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/z;->onMeasure(II)V

    return-void

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_4

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v0, p0, Landroid/support/v7/widget/SearchView;->W:I

    if-lez v0, :cond_6

    .line 6
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 7
    :cond_2
    iget p1, p0, Landroid/support/v7/widget/SearchView;->W:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result p1

    goto :goto_0

    .line 8
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SearchView;->W:I

    if-lez v0, :cond_5

    .line 9
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredWidth()I

    move-result v0

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 11
    :cond_6
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    if-eq v0, v1, :cond_8

    if-eqz v0, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result p2

    goto :goto_1

    .line 14
    :cond_8
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->getPreferredHeight()I

    move-result v0

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 15
    :goto_1
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 16
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 17
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/z;->onMeasure(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/support/v7/widget/SearchView$o;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Landroid/support/v7/widget/SearchView$o;

    .line 4
    invoke-virtual {p1}, Landroid/support/v4/view/AbsSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 5
    iget-boolean p1, p1, Landroid/support/v7/widget/SearchView$o;->a:Z

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 6
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/support/v7/widget/SearchView$o;

    invoke-direct {v1, v0}, Landroid/support/v7/widget/SearchView$o;-><init>(Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    iput-boolean v0, v1, Landroid/support/v7/widget/SearchView$o;->a:Z

    return-object v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onWindowFocusChanged(Z)V

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->Y()V

    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->V:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1, p2}, Landroid/widget/AutoCompleteTextView;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-direct {p0, v1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    :cond_2
    return p1

    .line 6
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->g0:Landroid/os/Bundle;

    return-void
.end method

.method public setIconified(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->O()V

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->S()V

    :goto_0
    return-void
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->P:Z

    .line 3
    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    .line 4
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d0()V

    return-void
.end method

.method public setImeOptions(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setImeOptions(I)V

    return-void
.end method

.method public setInputType(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setInputType(I)V

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/support/v7/widget/SearchView;->W:I

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    return-void
.end method

.method public setOnCloseListener(Landroid/support/v7/widget/SearchView$l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->L:Landroid/support/v7/widget/SearchView$l;

    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->M:Landroid/view/View$OnFocusChangeListener;

    return-void
.end method

.method public setOnQueryTextListener(Landroid/support/v7/widget/SearchView$m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->K:Landroid/support/v7/widget/SearchView$m;

    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->O:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnSuggestionListener(Landroid/support/v7/widget/SearchView$n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->N:Landroid/support/v7/widget/SearchView$n;

    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->T:Ljava/lang/CharSequence;

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d0()V

    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->U:Z

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    instance-of v1, v0, Landroid/support/v7/widget/l0;

    if-eqz v1, :cond_1

    .line 3
    check-cast v0, Landroid/support/v7/widget/l0;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/l0;->n(I)V

    :cond_1
    return-void
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->f0:Landroid/app/SearchableInfo;

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->e0()V

    .line 3
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->d0()V

    .line 4
    :cond_0
    invoke-direct {p0}, Landroid/support/v7/widget/SearchView;->H()Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->a0:Z

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    const-string v0, "nm"

    invoke-virtual {p1, v0}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Landroid/support/v7/widget/SearchView;->S:Z

    .line 2
    invoke-virtual {p0}, Landroid/support/v7/widget/SearchView;->I()Z

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SearchView;->h0(Z)V

    return-void
.end method

.method public setSuggestionsAdapter(Landroid/support/v4/widget/CursorAdapter;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/support/v7/widget/SearchView;->R:Landroid/support/v4/widget/CursorAdapter;

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method y()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->r:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    .line 4
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 5
    invoke-static {p0}, Landroid/support/v7/widget/x0;->b(Landroid/view/View;)Z

    move-result v3

    .line 6
    iget-boolean v4, p0, Landroid/support/v7/widget/SearchView;->P:Z

    if-eqz v4, :cond_0

    sget v4, La/b/d/a/d;->e:I

    .line 7
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    sget v5, La/b/d/a/d;->f:I

    .line 8
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/2addr v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    if-eqz v3, :cond_1

    .line 10
    iget v0, v2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    goto :goto_1

    .line 11
    :cond_1
    iget v0, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v4

    sub-int v0, v1, v0

    .line 12
    :goto_1
    iget-object v3, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v3, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownHorizontalOffset(I)V

    .line 13
    iget-object v0, p0, Landroid/support/v7/widget/SearchView;->x:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v3, v2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iget v2, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v0, v2

    add-int/2addr v0, v4

    sub-int/2addr v0, v1

    .line 14
    iget-object v1, p0, Landroid/support/v7/widget/SearchView;->p:Landroid/support/v7/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/AutoCompleteTextView;->setDropDownWidth(I)V

    :cond_2
    return-void
.end method
