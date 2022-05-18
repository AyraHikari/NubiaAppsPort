.class Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;
.super Ljava/lang/Object;
.source "AbsSpinnerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;)V
    .locals 1

    .prologue
    .line 420
    iput-object p1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 421
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->b:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method a(I)Landroid/view/View;
    .locals 2

    .prologue
    .line 429
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 430
    if-eqz v0, :cond_0

    .line 432
    iget-object v1, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 436
    :cond_0
    return-object v0
.end method

.method a()V
    .locals 6

    .prologue
    .line 440
    iget-object v2, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->b:Landroid/util/SparseArray;

    .line 441
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 442
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 443
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 444
    if-eqz v0, :cond_0

    .line 445
    iget-object v4, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->a:Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;->a(Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat;Landroid/view/View;Z)V

    .line 442
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 448
    :cond_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 449
    return-void
.end method

.method public a(ILandroid/view/View;)V
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcn/nubia/commonui/actionbar/internal/widget/AbsSpinnerCompat$a;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 425
    return-void
.end method
