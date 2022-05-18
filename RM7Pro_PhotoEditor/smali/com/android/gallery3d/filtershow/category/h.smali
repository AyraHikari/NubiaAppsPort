.class public Lcom/android/gallery3d/filtershow/category/h;
.super Landroid/support/v4/app/Fragment;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private a:Lcom/android/gallery3d/filtershow/category/b;

.field private b:I

.field private c:Landroid/widget/LinearLayout;

.field private d:Landroid/widget/SeekBar;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/ImageButton;

.field private g:I

.field private h:I

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/filtershow/category/h;->b:I

    return-void
.end method

.method private c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result p3

    const v0, 0x7f0b0055

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f0801f7

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/SeekBar;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->d:Landroid/widget/SeekBar;

    if-nez p3, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->d:Landroid/widget/SeekBar;

    invoke-virtual {p2, v1}, Landroid/widget/SeekBar;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/gallery3d/filtershow/category/h;->i()V

    return-object p1
.end method

.method private d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006b

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p2}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result p3

    const v0, 0x7f080264

    if-eqz p3, :cond_0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/words/TextColorPickerViewHorizontal;

    new-instance v0, Lcom/android/gallery3d/filtershow/category/h$a;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/category/h$a;-><init>(Lcom/android/gallery3d/filtershow/category/h;)V

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/words/TextColorPickerViewHorizontal;->setOnTextColorChangedListener(Lcom/android/gallery3d/filtershow/words/TextColorPickerViewHorizontal$a;)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/x;->U()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/gallery3d/filtershow/words/TextColorPickerViewHorizontal;->setCurrentIndex(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;

    new-instance v0, Lcom/android/gallery3d/filtershow/category/h$b;

    invoke-direct {v0, p0}, Lcom/android/gallery3d/filtershow/category/h$b;-><init>(Lcom/android/gallery3d/filtershow/category/h;)V

    invoke-virtual {p3, v0}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->setOnTextColorChangedListener(Lcom/android/gallery3d/filtershow/words/TextColorPickerView$a;)V

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/x;->U()I

    move-result p2

    invoke-virtual {p3, p2}, Lcom/android/gallery3d/filtershow/words/TextColorPickerView;->setCurrentIndex(I)V

    :goto_0
    return-object p1
.end method

.method private e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const p3, 0x7f0b006c

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    return-object p1
.end method

.method private f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {p3}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f0b006d

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const p2, 0x7f08028c

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    const p2, 0x7f080290

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    const p2, 0x7f08028f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    invoke-virtual {p2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v0, :cond_0

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    check-cast p2, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    check-cast p2, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    check-cast p2, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    :cond_0
    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/x;->W()Z

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    :goto_0
    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/gallery3d/filtershow/editors/x;->X()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    check-cast p2, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p2, v1}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_1

    :cond_3
    iget p3, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_4
    :goto_1
    return-object p1
.end method

.method private i()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->d:Landroid/widget/SeekBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->T()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/h;->d:Landroid/widget/SeekBar;

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->A0()Lcom/android/gallery3d/filtershow/category/b;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/b;->f(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/h;->h()V

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/android/gallery3d/filtershow/category/h;->b:I

    return-void
.end method

.method public h()V
    .locals 2

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->e:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->f:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/category/b;->s()Z

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->e:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public j()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/h;->b()V

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    const v1, 0x7f08019f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v2, v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz v2, :cond_0

    check-cast v0, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v1, v0}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/h;->b()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-static {v0}, Lcom/android/gallery3d/filtershow/utils/b;->m(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const/4 v2, 0x1

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/x;->X()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/editors/x;->i0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/x;->i0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    goto/16 :goto_3

    :cond_3
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    goto/16 :goto_4

    :sswitch_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/editors/x;->f0(Z)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/editors/x;->i0(Z)V

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/x;->j0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_4

    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_6

    :cond_4
    iget v0, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->j:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_6

    :sswitch_2
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->k:Landroid/widget/TextView;

    if-eqz v1, :cond_5

    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_1

    :cond_5
    iget v4, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/x;->W()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/editors/x;->f0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_6

    :goto_2
    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v3}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_5

    :cond_6
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    goto :goto_4

    :cond_7
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/x;->f0(Z)V

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->i:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    :goto_3
    check-cast p1, Lcom/android/gallery3d/filtershow/utils/RotateTextView;

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/utils/RotateTextView;->setSelected(Z)V

    goto :goto_5

    :cond_8
    iget v1, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    :goto_4
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_5
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/gallery3d/filtershow/editors/x;->j0(Z)V

    goto :goto_6

    :sswitch_3
    const/4 p1, 0x7

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->o2(I)V

    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0801cb -> :sswitch_3
        0x7f08028c -> :sswitch_2
        0x7f08028f -> :sswitch_1
        0x7f080290 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/h;->g:I

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/gallery3d/filtershow/category/h;->h:I

    iget v1, p0, Lcom/android/gallery3d/filtershow/category/h;->b:I

    if-nez v1, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/h;->e(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/h;->d(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 v3, 0x3

    if-ne v3, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/h;->f(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 v3, 0x4

    if-ne v3, v1, :cond_3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/gallery3d/filtershow/category/h;->c(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_3
    const p3, 0x7f0b006a

    const/4 v1, 0x0

    invoke-virtual {p1, p3, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    const p2, 0x7f08019f

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    instance-of p3, p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    if-eqz p3, :cond_4

    check-cast p1, Lcom/android/gallery3d/filtershow/category/CategoryTrack;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p2, :cond_5

    invoke-virtual {p2, v2}, Lcom/android/gallery3d/filtershow/category/b;->n(I)V

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p2}, Lcom/android/gallery3d/filtershow/category/CategoryTrack;->setAdapter(Lcom/android/gallery3d/filtershow/category/b;)V

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :goto_0
    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->a:Lcom/android/gallery3d/filtershow/category/b;

    invoke-virtual {p2, p1}, Lcom/android/gallery3d/filtershow/category/b;->k(Landroid/view/View;)V

    :cond_5
    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    const p2, 0x7f0801cc

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->e:Landroid/widget/LinearLayout;

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    const p2, 0x7f0801cb

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->f:Landroid/widget/ImageButton;

    iget-object p2, p0, Lcom/android/gallery3d/filtershow/category/h;->e:Landroid/widget/LinearLayout;

    if-eqz p2, :cond_6

    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/gallery3d/filtershow/category/h;->h()V

    :cond_6
    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/editors/x;->Q()I

    iget-object p1, p0, Lcom/android/gallery3d/filtershow/category/h;->c:Landroid/widget/LinearLayout;

    return-object p1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    if-eqz p3, :cond_0

    int-to-float p1, p2

    const/high16 p3, 0x42c80000    # 100.0f

    div-float/2addr p1, p3

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p3}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/filtershow/editors/x;->e0(F)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p1, p2}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->r2(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/gallery3d/filtershow/category/h;->b:I

    const-string v1, "currentWordPanel"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    invoke-virtual {p1}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->O0()Lcom/android/gallery3d/filtershow/editors/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/gallery3d/filtershow/editors/x;->T()F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->f2(Ljava/lang/String;)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/gallery3d/filtershow/FilterShowActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/gallery3d/filtershow/FilterShowActivity;->d1(Z)V

    return-void
.end method
