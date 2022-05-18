.class Lcom/android/setting/e$a;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setting/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/setting/e;

.field private b:Lcom/android/preference/ListPreference;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/setting/e;Lcom/android/preference/ListPreference;)V
    .locals 0

    .line 440
    iput-object p1, p0, Lcom/android/setting/e$a;->a:Lcom/android/setting/e;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 p1, 0x0

    .line 437
    iput-object p1, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    .line 438
    iput-object p1, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    .line 439
    iput-object p1, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    .line 441
    iput-object p2, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 489
    iget-object p1, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 490
    iget-object p1, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_0

    .line 492
    :cond_0
    iget-object p1, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    const v0, 0x3e4ccccd    # 0.2f

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 493
    iget-object p1, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 446
    iget-object v0, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 451
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 462
    iget-object p2, p0, Lcom/android/setting/e$a;->a:Lcom/android/setting/e;

    invoke-virtual {p2}, Lcom/android/setting/e;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/setting/f$f;->a:I

    invoke-virtual {p2, v0, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 465
    :cond_0
    sget v0, Lcom/android/setting/f$e;->i:I

    .line 466
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    .line 467
    sget v0, Lcom/android/setting/f$e;->h:I

    .line 468
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    .line 469
    iget-object v0, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    instance-of v1, v0, Lcom/android/preference/ComplexListPreference;

    if-eqz v1, :cond_2

    .line 470
    iget-object v1, p0, Lcom/android/setting/e$a;->a:Lcom/android/setting/e;

    check-cast v0, Lcom/android/preference/ComplexListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ComplexListPreference;->d()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/android/setting/e;->a(Lcom/android/setting/e;[Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 471
    iget-object v1, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v3}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v3

    aget-object v3, v3, p1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 473
    :cond_2
    iget-object v1, p0, Lcom/android/setting/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->i()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object v0, v0, p1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 475
    :goto_1
    iget-object v0, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->n()I

    move-result v0

    if-ne p1, v0, :cond_3

    .line 476
    iget-object p3, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    sget v0, Lcom/android/setting/f$d;->a:I

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 478
    :cond_3
    iget-object v0, p0, Lcom/android/setting/e$a;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 480
    :goto_2
    iget-object p3, p0, Lcom/android/setting/e$a;->a:Lcom/android/setting/e;

    invoke-static {p3}, Lcom/android/setting/e;->g(Lcom/android/setting/e;)Lcom/android/setting/e$b;

    move-result-object p3

    iget-object v0, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v0}, Lcom/android/preference/ListPreference;->h()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/setting/e$a;->b:Lcom/android/preference/ListPreference;

    invoke-virtual {v1}, Lcom/android/preference/ListPreference;->j()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object p1, v1, p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, v0, p1}, Lcom/android/setting/e$b;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 481
    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 482
    invoke-virtual {p0, p1}, Lcom/android/setting/e$a;->a(Z)V

    return-object p2
.end method
