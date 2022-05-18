.class public Lcom/android/gallery3d/filtershow/editors/e;
.super Lcom/android/gallery3d/filtershow/editors/a0;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/android/gallery3d/filtershow/controller/g;
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private A:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/widget/PopupWindow;

.field private C:Landroid/widget/SeekBar;

.field private D:Landroid/widget/SeekBar;

.field private E:Landroid/widget/SeekBar;

.field private F:Landroid/widget/SeekBar;

.field private G:Landroid/widget/SeekBar;

.field private H:Landroid/widget/SeekBar;

.field private I:Landroid/widget/SeekBar;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:I

.field R:[I

.field private y:Landroid/widget/Button;

.field private final z:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 3

    const v0, 0x7f080106

    const v1, 0x7f0b0030

    const v2, 0x7f080036

    invoke-direct {p0, v0, v1, v2}, Lcom/android/gallery3d/filtershow/editors/a0;-><init>(III)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->z:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->Q:I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->R:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0e008b
        0x7f0e008c
        0x7f0e008d
        0x7f0e0089
        0x7f0e0088
        0x7f0e0087
        0x7f0e008a
    .end array-data
.end method

.method static synthetic V(Lcom/android/gallery3d/filtershow/editors/e;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/e;->a0(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic W(Lcom/android/gallery3d/filtershow/editors/e;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    return-object p0
.end method

.method private X()Lcom/android/gallery3d/filtershow/filters/g;
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/g;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private a0(Landroid/widget/LinearLayout;)V
    .locals 11

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    const v0, 0x7f080122

    const v1, 0x7f08011f

    const v2, 0x7f080120

    const v3, 0x7f080121

    const v4, 0x7f080125

    const v5, 0x7f080124

    const v6, 0x7f080123

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e008b

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e008c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e008d

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e0089

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e0088

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e0087

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const v9, 0x7f0e008a

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v7, 0x7f0b004c

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {p1, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    new-instance v7, Landroid/widget/PopupWindow;

    const/4 v8, -0x1

    const/4 v10, -0x2

    invoke-direct {v7, p1, v8, v10, v9}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v7, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v7, v9}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v7, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {v6, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v5, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/e$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/e$b;-><init>(Lcom/android/gallery3d/filtershow/editors/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->getLocationOnScreen([I)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    const/4 v2, 0x0

    aget v3, p1, v2

    aget p1, p1, v9

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v4

    sub-int/2addr p1, v4

    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method

.method private c0(Lcom/android/gallery3d/filtershow/filters/g;)V
    .locals 0

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/a0;->t:Lcom/android/gallery3d/filtershow/controller/f;

    invoke-interface {p1}, Lcom/android/gallery3d/filtershow/controller/f;->a()V

    return-void
.end method


# virtual methods
.method public E(Landroid/widget/LinearLayout;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    :cond_0
    const v0, 0x7f080027

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    new-instance v1, Lcom/android/gallery3d/filtershow/editors/e$a;

    invoke-direct {v1, p0, p1}, Lcom/android/gallery3d/filtershow/editors/e$a;-><init>(Lcom/android/gallery3d/filtershow/editors/e;Landroid/widget/LinearLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/e;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/e;->X()Lcom/android/gallery3d/filtershow/filters/g;

    move-result-object p1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->R:[I

    iget v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->Q:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->Q:I

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/gallery3d/filtershow/editors/e;->b0(Lcom/android/gallery3d/filtershow/filters/g;ILjava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    return-void
.end method

.method public F()V
    .locals 5

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/gallery3d/filtershow/editors/a0;->F()V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->j:Lcom/android/gallery3d/filtershow/filters/x;

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->C:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->J:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->D:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->K:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->E:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->L:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->F:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->M:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->G:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->N:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->H:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->O:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/filters/g;->n0(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->I:Landroid/widget/SeekBar;

    add-int/lit8 v3, v1, 0x64

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->P:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/x;->Q()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/c;->g:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    :cond_1
    return-void
.end method

.method public I(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/editors/a0;->U(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/gallery3d/filtershow/editors/a0;->I(Landroid/view/View;Landroid/view/View;)V

    return-void

    :cond_0
    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->f:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/widget/Button;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    check-cast p2, Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    const v0, 0x7f0b0053

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const p2, 0x7f0801b1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->C:Landroid/widget/SeekBar;

    const/16 v0, 0xc8

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->C:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0801b8

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->J:Landroid/widget/TextView;

    const p2, 0x7f080203

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->D:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->D:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080204

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->K:Landroid/widget/TextView;

    const p2, 0x7f080294

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->E:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->E:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f080295

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->L:Landroid/widget/TextView;

    const p2, 0x7f08016a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->F:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->F:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08016b

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->M:Landroid/widget/TextView;

    const p2, 0x7f0800ca

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->G:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->G:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0800cb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->N:Landroid/widget/TextView;

    const p2, 0x7f080039

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->H:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->H:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f08003a

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->O:Landroid/widget/TextView;

    const p2, 0x7f0801ae

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->I:Landroid/widget/SeekBar;

    invoke-virtual {p2, v0}, Landroid/widget/SeekBar;->setMax(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/editors/e;->I:Landroid/widget/SeekBar;

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    const p2, 0x7f0801af

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->P:Landroid/widget/TextView;

    return-void
.end method

.method public K()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;
    .locals 1

    instance-of v0, p1, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/g;->m0()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/filters/g;->l0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public T()V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->Q:I

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/e;->X()Lcom/android/gallery3d/filtershow/filters/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/g;->o0()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    check-cast v2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->M0()Landroid/widget/SeekBar;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/filters/g;->m0()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/gallery3d/filtershow/filters/g;->l0(I)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object v0

    instance-of v3, v0, Lcom/android/gallery3d/filtershow/controller/b;

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/controller/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/controller/b;->h()I

    move-result v0

    sub-int/2addr v1, v0

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method

.method public Y(I)I
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x3

    const/4 v5, 0x4

    const/4 v6, 0x5

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 p1, -0x1

    return p1

    :pswitch_1
    return v0

    :pswitch_2
    return v1

    :pswitch_3
    return v2

    :pswitch_4
    return v3

    :pswitch_5
    return v4

    :pswitch_6
    return v5

    :pswitch_7
    return v6

    :pswitch_8
    return v0

    :pswitch_9
    return v1

    :pswitch_a
    return v2

    :pswitch_b
    return v3

    :pswitch_c
    return v4

    :pswitch_d
    return v5

    :pswitch_e
    return v6

    :pswitch_data_0
    .packed-switch 0x7f080115
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected Z(Landroid/view/MenuItem;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/editors/e;->Y(I)I

    move-result v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/editors/e;->b0(Lcom/android/gallery3d/filtershow/filters/g;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected b0(Lcom/android/gallery3d/filtershow/filters/g;ILjava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->N()V

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/e;->R(Lcom/android/gallery3d/filtershow/filters/x;)Lcom/android/gallery3d/filtershow/controller/h;

    move-result-object p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/a0;->u:Landroid/view/View;

    invoke-virtual {p0, p2, p3}, Lcom/android/gallery3d/filtershow/editors/a0;->Q(Lcom/android/gallery3d/filtershow/controller/h;Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/android/gallery3d/filtershow/editors/e;->c0(Lcom/android/gallery3d/filtershow/filters/g;)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public c(Landroid/view/MenuItem;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->c(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/e$d;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/e$d;-><init>(Lcom/android/gallery3d/filtershow/editors/e;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->z:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/e;->Z(Landroid/view/MenuItem;)V

    return-void
.end method

.method public d(Landroid/view/MenuItem;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->d(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTranslationX(F)V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget v1, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    new-instance v0, Lcom/android/gallery3d/filtershow/editors/e$c;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/editors/e$c;-><init>(Lcom/android/gallery3d/filtershow/editors/e;)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->z:Landroid/os/Handler;

    sget v2, Lcom/android/gallery3d/filtershow/editors/SwapButton;->e:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/e;->Z(Landroid/view/MenuItem;)V

    return-void
.end method

.method public f(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object p1

    if-eqz p1, :cond_3

    instance-of p2, p1, Lcom/android/gallery3d/filtershow/filters/g;

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    check-cast p1, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/g;->m0()I

    move-result p2

    iget-object p3, p0, Lcom/android/gallery3d/filtershow/editors/c;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->R:[I

    aget p2, v0, p2

    invoke-virtual {p3, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/x;->h0()Z

    move-result p3

    const/4 v0, 0x1

    if-ne p3, v0, :cond_2

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/filters/g;->k0()I

    move-result p1

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    if-lez p1, :cond_1

    const-string v0, " +"

    goto :goto_0

    :cond_1
    move-object v0, p2

    :goto_0
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    :cond_3
    :goto_1
    const-string p1, ""

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    instance-of v0, v0, Lcom/android/gallery3d/filtershow/filters/g;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->B()Lcom/android/gallery3d/filtershow/filters/x;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/filters/g;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/gallery3d/filtershow/editors/e;->Y(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/editors/e;->Q:I

    iget-object v2, p0, Lcom/android/gallery3d/filtershow/editors/e;->A:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/gallery3d/filtershow/editors/e;->b0(Lcom/android/gallery3d/filtershow/filters/g;ILjava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/e;->K()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/gallery3d/filtershow/editors/c;->G(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->B:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/editors/e;->X()Lcom/android/gallery3d/filtershow/filters/g;

    move-result-object p3

    add-int/lit8 p2, p2, -0x64

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getId()I

    move-result p1

    const-string v0, ""

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const/4 p1, 0x2

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->L:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_1
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->K:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_2
    const/4 p1, 0x0

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->J:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_3
    const/4 p1, 0x6

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->P:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_4
    const/4 p1, 0x3

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->M:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_5
    const/4 p1, 0x4

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->N:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :sswitch_6
    const/4 p1, 0x5

    invoke-virtual {p3, p1}, Lcom/android/gallery3d/filtershow/filters/g;->q0(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/editors/e;->O:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-virtual {p3, p2}, Lcom/android/gallery3d/filtershow/filters/g;->p0(I)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/editors/c;->a()V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080039 -> :sswitch_6
        0x7f0800ca -> :sswitch_5
        0x7f08016a -> :sswitch_4
        0x7f0801ae -> :sswitch_3
        0x7f0801b1 -> :sswitch_2
        0x7f080203 -> :sswitch_1
        0x7f080294 -> :sswitch_0
    .end sparse-switch
.end method

.method public r()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/editors/e;->y:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
