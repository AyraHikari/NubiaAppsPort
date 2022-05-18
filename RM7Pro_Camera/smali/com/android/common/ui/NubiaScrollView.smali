.class public Lcom/android/common/ui/NubiaScrollView;
.super Landroid/widget/ScrollView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/ui/NubiaScrollView$a;
    }
.end annotation


# instance fields
.field private a:Lcom/android/common/ui/NubiaScrollView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/android/common/ui/NubiaScrollView;->a:Lcom/android/common/ui/NubiaScrollView$a;

    return-void
.end method


# virtual methods
.method protected onScrollChanged(IIII)V
    .locals 1

    .line 32
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;->onScrollChanged(IIII)V

    .line 33
    iget-object v0, p0, Lcom/android/common/ui/NubiaScrollView;->a:Lcom/android/common/ui/NubiaScrollView$a;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/common/ui/NubiaScrollView$a;->a(IIII)V

    :cond_0
    return-void
.end method

.method public setScrollViewListener(Lcom/android/common/ui/NubiaScrollView$a;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/common/ui/NubiaScrollView;->a:Lcom/android/common/ui/NubiaScrollView$a;

    return-void
.end method
