.class Lcom/android/common/ui/ZtemtFunEffectSlider$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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

    .line 294
    iput-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$4;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 297
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$4;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-static {p1}, Lcom/android/common/ui/ZtemtFunEffectSlider;->b(Lcom/android/common/ui/ZtemtFunEffectSlider;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 298
    iget-object p1, p0, Lcom/android/common/ui/ZtemtFunEffectSlider$4;->a:Lcom/android/common/ui/ZtemtFunEffectSlider;

    invoke-virtual {p1, p3}, Lcom/android/common/ui/ZtemtFunEffectSlider;->a(I)V

    :cond_0
    return-void
.end method
