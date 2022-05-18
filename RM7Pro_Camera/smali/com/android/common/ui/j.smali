.class public Lcom/android/common/ui/j;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(IIILandroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    const/4 p4, 0x0

    .line 13
    iput p4, p0, Lcom/android/common/ui/j;->a:I

    .line 14
    iput p4, p0, Lcom/android/common/ui/j;->b:I

    .line 15
    iput p4, p0, Lcom/android/common/ui/j;->c:I

    .line 45
    iput p2, p0, Lcom/android/common/ui/j;->a:I

    .line 46
    iput p1, p0, Lcom/android/common/ui/j;->b:I

    .line 47
    iput p3, p0, Lcom/android/common/ui/j;->c:I

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 59
    iget p1, p0, Lcom/android/common/ui/j;->a:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    invoke-virtual {p0, v0}, Lcom/android/common/ui/j;->requestWindowFeature(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/common/ui/j;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 64
    :cond_0
    iget p1, p0, Lcom/android/common/ui/j;->c:I

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Lcom/android/common/ui/j;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/android/common/ui/j;->c:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 67
    :cond_1
    iget p1, p0, Lcom/android/common/ui/j;->b:I

    invoke-virtual {p0, p1}, Lcom/android/common/ui/j;->setContentView(I)V

    return-void
.end method
