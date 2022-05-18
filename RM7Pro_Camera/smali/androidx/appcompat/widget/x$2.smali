.class Landroidx/appcompat/widget/x$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/appcompat/widget/x;->onRestoreInstanceState(Landroid/os/Parcelable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/appcompat/widget/x;


# direct methods
.method constructor <init>(Landroidx/appcompat/widget/x;)V
    .locals 0

    .line 632
    iput-object p1, p0, Landroidx/appcompat/widget/x$2;->a:Landroidx/appcompat/widget/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 635
    iget-object v0, p0, Landroidx/appcompat/widget/x$2;->a:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->getInternalPopup()Landroidx/appcompat/widget/x$e;

    move-result-object v0

    invoke-interface {v0}, Landroidx/appcompat/widget/x$e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 636
    iget-object v0, p0, Landroidx/appcompat/widget/x$2;->a:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->a()V

    .line 638
    :cond_0
    iget-object v0, p0, Landroidx/appcompat/widget/x$2;->a:Landroidx/appcompat/widget/x;

    invoke-virtual {v0}, Landroidx/appcompat/widget/x;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 640
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_1

    .line 641
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_0

    .line 643
    :cond_1
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_2
    :goto_0
    return-void
.end method
