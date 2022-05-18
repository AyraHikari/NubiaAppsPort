.class public Lcom/android/common/ui/h;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field private final a:F

.field private b:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/common/ui/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const p1, 0x3ecccccd    # 0.4f

    .line 32
    iput p1, p0, Lcom/android/common/ui/h;->a:F

    const/4 p1, 0x1

    .line 33
    iput-boolean p1, p0, Lcom/android/common/ui/h;->b:Z

    return-void
.end method


# virtual methods
.method public setEnabled(Z)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 46
    iget-boolean v0, p0, Lcom/android/common/ui/h;->b:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 48
    invoke-virtual {p0, p1}, Lcom/android/common/ui/h;->setAlpha(F)V

    goto :goto_0

    :cond_0
    const p1, 0x3ecccccd    # 0.4f

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/common/ui/h;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method
