.class Lcom/android/common/ui/ZtemtFunEffectSlider$b;
.super Landroid/widget/SimpleAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/ui/ZtemtFunEffectSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/ZtemtFunEffectSlider;


# direct methods
.method public constructor <init>(Lcom/android/common/ui/ZtemtFunEffectSlider;Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;>;I[",
            "Ljava/lang/String;",
            "[I)V"
        }
    .end annotation

    .line 390
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    .line 391
    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 370
    invoke-super {p0, p1, p2, p3}, Landroid/widget/SimpleAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 371
    sget p3, Lcom/android/common/ui/c$e;->b:I

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/common/ui/RotateImageView;

    .line 372
    sget v0, Lcom/android/common/ui/c$e;->e:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/common/ui/RotateLayout;

    .line 374
    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->d(Lcom/android/common/ui/ZtemtFunEffectSlider;)I

    move-result v1

    const/16 v2, 0x8

    if-ne p1, v1, :cond_0

    .line 375
    invoke-virtual {p3, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    goto :goto_0

    .line 377
    :cond_0
    invoke-virtual {p3, v2}, Lcom/android/common/ui/RotateImageView;->setVisibility(I)V

    .line 380
    :goto_0
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->e(Lcom/android/common/ui/ZtemtFunEffectSlider;)I

    move-result p1

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 381
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->e(Lcom/android/common/ui/ZtemtFunEffectSlider;)I

    move-result p1

    iget-object v1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {v1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->f(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z

    move-result v1

    invoke-virtual {p3, p1, v1}, Lcom/android/common/ui/RotateImageView;->a(IZ)V

    .line 382
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->e(Lcom/android/common/ui/ZtemtFunEffectSlider;)I

    move-result p1

    iget-object p3, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$b;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p3}, Lcom/android/common/ui/ZtemtFunEffectSlider;->f(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z

    move-result p3

    invoke-virtual {v0, p1, p3}, Lcom/android/common/ui/RotateLayout;->a(IZ)V

    :cond_1
    return-object p2
.end method
