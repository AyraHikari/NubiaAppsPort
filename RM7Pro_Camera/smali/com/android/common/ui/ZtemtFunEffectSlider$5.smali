.class Lcom/android/common/ui/ZtemtFunEffectSlider$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/common/ui/ZtemtFunEffectSlider;->a(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/common/ui/ZtemtFunEffectSlider;


# direct methods
.method constructor <init>(Lcom/android/common/ui/ZtemtFunEffectSlider;)V
    .locals 0

    .line 302
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$5;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .line 306
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$5;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->b(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 307
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$5;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->c(Lcom/android/common/ui/ZtemtFunEffectSlider;)Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 308
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$5;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->c(Lcom/android/common/ui/ZtemtFunEffectSlider;)Lcom/android/common/ui/ZtemtFunEffectSlider$a;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/android/common/ui/ZtemtFunEffectSlider$a;->a(I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
